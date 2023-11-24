local component = require('component')
local stockList = require('stockList')
local LM = {}
local DB = component.database

-- =================== HELPER FUNCTIONS =================

local function findLM()
	for address in component.list('level_maintainer') do
		table.insert(LM, component.proxy(component.get(address)))
	end
end

-- =================== CORE FUNCTIONS ===================

local function clearLM()
	for i=1, #LM*5 do

		-- Find Level Maintainer and Slot to Change
		local idx = ((i-1) // 5) + 1
		local slot = ((i-1) % 5) + 1

		-- Set Database (always slot 1)
		DB.set(1, nil, nil)

		-- Clear Level Maintainer
		LM[idx].setSlot(slot, DB.address, 1, 0, 0)

	end
end


local function updateLM()
	for i=1, #stockList do

		-- Check Terminal Condition (Out of Level Maintainers)
		if i > (#LM*5) then
			print(string.format('autoStock: %s requests dropped!', #stockList - #LM*5))
			return
		end

		-- Find Level Maintainer and Slot to Change
		local idx = ((i-1) // 5) + 1
		local slot = ((i-1) % 5) + 1

		-- Set Database (always slot 1)
		DB.set(1, stockList[i].name, stockList[i].damage)

		-- Set Level Maintainer
		LM[idx].setSlot(slot, DB.address, 1, stockList[i].min, stockList[i].batch)
	end
end

-- ======================== MAIN ========================

local function main()

	-- Init
	findLM()
	print(string.format('autoStock: %s slots available for %s unique requests!', #LM*5, #stockList))

	-- Update All Level Maintainers
	clearLM()
    updateLM()

	-- Finish
	print('autoStock: Complete!')
end

main()