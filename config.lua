local config = {
	-- NOTE: EACH CONFIG SHOULD END WITH A COMMA

	-- Time (s) between inventory checks and updates
	checkFrequency = 2,
	-- Time (s) between AE2 pulls
	watchFrequency = 12,

	-- Slots for Level Maintainers
	slotsLM = {1,2,3,4,5},

	-- Proxy AE2 Address if there are multiple interfaces connected
	addressAE2 = nil
}

return config