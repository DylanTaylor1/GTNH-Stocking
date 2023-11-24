local component = require('component')
local sides = require('sides')
local buffer = component.inventory_controller

-- ======================== MAIN ========================

local function main()

	print('\nITEM(S) IN BUFFER:')

	for i=1, 99 do
		local item = buffer.getStackInSlot(sides.up, i)
		if item ~= nil then
			print(string.format('label=%s // name=%s // damage=%s', item.label, item.name, item.damage))
		else
			break
		end
	end
	print('')
end

main()