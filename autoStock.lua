local component = require('component')
local config = require('config')
local stockedItems = {}
local openStockers = {}

-- =================== HELPER FUNCTIONS =================

local function getComponent(componentName)
	if next(component.list(componentName)) then
		return component[componentName];
	else
		return nil;
	end
end


local function getLevelMaintainer(addressLM)
    local LM = component.proxy(addressLM)
	for i=1, #config.slotsLM do
		local stockedItem = LM.getSlot(i);
		if stockedItem ~= nil and LM.isEnable(i)
		then
			stockedItems[stockedItem] = {
				name	= stockedItem.name,
                damage	= stockedItem.damage,
				label	= stockedItem.label,
				isDone	= stockedItem.isDone,
				quantity= stockedItem.quantity,
				batch	= stockedItem.batch,
				address	= addressLM,
				slot	= i
			};
		else
			table.insert(openStockers, {
				address	= addressLM,
				slot	= i
			});
		end
	end
end


local function setLevelMaintainer(item, quantity, batch)
	-- is it currently being stocked?
	local id = itemID(item);
	if stockedItems[id] then
		local address, slot = stockedItems[id].address, stockedItems[id].slot;
		component.invoke(address, "setSlot", slot, quantity, batch);
		stockedItems[id].quantity = quantity;
		stockedItems[id].batch = batch;
	else
		local address, slot = getOpenSlot();
		local db = getComponent("database");
		local ae2 = getAe2();

		if address == nil then
			GUI.alert("No open slots!");
		elseif db == nil then
			GUI.alert("No database available!");
		elseif ae2 ~= nil then
			-- reuse database slot 1
			db.clear(1);
			if ae2.store( itemFilter(item), db.address, 1 ) then
				if component.invoke(address, "setSlot", slot, db.address, 1, quantity, batch) then
					local newItem = item;
					newItem.quantity = quantity;
					newItem.batch = batch;
					newItem.address = address;
					newItem.slot = slot;
					stockedItems[id] = newItem;
					consumeOpenSlot();
					sortStocked();
				else
					GUI.alert("Failed to set slot?");
				end
			else
				GUI.alert("Could not store item into database?");
			end
		end
	end
end


local function getAE2()
	local AE2;
	if (config.addressAE2 ~= nil and component.list()[config.addressAE2] ~= nil) then
		AE2 = component.proxy(config.addressAE2);
	else
		AE2 = getComponent('me_interface');
	end

	if AE2 == nil then
		print('No ME Interface available!');
	end

	return AE2;
end


local function getOpenSlot()
	if next(openStockers) then
		return openStockers[1].address, openStockers[1].slot;
	else
		return nil, nil;
	end
end


local function itemID(item)
	return item.name ..":".. item.damage ..":".. item.label;
end


local function itemFilter(item, useIsCraftable)
	return {name=item.name, damage=item.damage, label=item.label, isCraftable=((useIsCraftable == nil) or useIsCraftable)};
end

-- =================== CORE FUNCTIONS ===================

local function addAutoStock()

    -- Check Inventory Controller
	local invController = getComponent("inventory_controller");

	if (invController == nil) then
		print('No inventory controller detected on network!');
	elseif (invController.getInventoryName(1) == nil) then
		print('Place an inventory on top of the inventory controller.');
    else

        -- Loop through Items in Buffer Inventory
		for item in invController.getAllStacks(1) do
			if next(item) then
				local stockedItem = stockedItems[itemID(item)];

                -- If Item Present, Update Level Maintainers
				if (stockedItem ~= nil) then
					GUI_editAutoStock(stockedItem, true);

                -- Otherwise, Make an AE2 Pull Request
				else

                    -- Check AE2 System
					local AE2 = getAE2();
					if AE2 ~= nil then

                        -- If Item is Craftable, Have it Made
						if next(AE2.getItemsInNetwork(itemFilter(item))) then
							if getOpenSlot() then
								GUI_editAutoStock(item, false);
							else
								print('No open slots!');
							end
						else
							print(string.format('Item %s is not craftable.', item.label));
						end
					end
				end
			end
		end
	end
end

-- ======================== MAIN ========================

local function init()

end


local function main()
    init()

    while true do
        addAutoStock()
    end
end

main()