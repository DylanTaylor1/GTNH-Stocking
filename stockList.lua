local stockList = {

	-- LAST UPDATED GTNH 2.4.0
	-- Entries are {Minimum Stock, Batch Size, Label, Raw Name, Damage (ID)}
	-- Uncomment what you want, or add entries yourself using the scan program

	-- NOTE: Label doesn't actually matter so don't worry about spelling

	-- ====================== LOGISTICS =======================
	-- {min=256, batch=64, label='ME Glass Cable - Fluix', name='appliedenergistics2:item.ItemMultiPart', damage=16},
	-- {min=256, batch=64, label='ME Smart Cable - Fluix', name='appliedenergistics2:item.ItemMultiPart', damage=56},
	-- {min=256, batch=64, label='ME Dense Smart Cable - Fluix', name='appliedenergistics2:item.ItemMultiPart', damage=76},
	-- {min=32, batch=8, label='P2P Tunnel - ME', name='appliedenergistics2:item.ItemMultiPart', damage=460},
	-- {min=32, batch=8, label='Pattern Capacity Card', name='appliedenergistics2:item.ItemMultiMaterial', damage=54},
	-- {min=64, batch=16, label='ME Interface', name='appliedenergistics2:tile.BlockInterface', damage=0},
	-- {min=64, batch=16, label='ME Dual Interface', name='ae2fc:fluid_interface', damage=0},
	-- {min=32, batch=8, label='Ingredient Buffer', name='ae2fc:ingredient_buffer', damage=0},
	-- {min=32, batch=8, label='Large Ingredient Buffer', name='ae2fc:large_ingredient_buffer', damage=0},
	-- {min=32, batch=8, label='Output Bus (ME)', name='gregtech:gt.blockmachines', damage=2710},
	-- {min=32, batch=8, label='Output Hatch (ME)', name='gregtech:gt.blockmachines', damage=2713},
	-- {min=32, batch=8, label='Crafting Input Slave', name='gregtech:gt.blockmachines', damage=2716},
	-- {min=32, batch=8, label='Stocking Input Bus (ME)', name='gregtech:gt.blockmachines', damage=2711},
	-- {min=32, batch=8, label='Crafting Input Bus (ME)', name='gregtech:gt.blockmachines', damage=2715},
	-- {min=32, batch=8, label='Crafting Input Buffer (ME)', name='gregtech:gt.blockmachines', damage=2714},
	-- {min=32, batch=8, label='Crafting Input Slave', name='gregtech:gt.blockmachines', damage=2716},

	-- {min=256, batch=64, label='Item Conduit', name='EnderIO:itemItemConduit', damage=0},
	-- {min=256, batch=64, label='Ender Fluid Conduit', name='EnderIO:itemLiquidConduit', damage=2},
	-- {min=256, batch=64, label='Melodic Ender Fluid Conduit', name='EnderIO:itemLiquidConduit', damage=5},
	-- {min=256, batch=64, label='Stellar Ender Fluid Conduit', name='EnderIO:itemLiquidConduit', damage=6},
	-- {min=256, batch=64, label='ME Conduit', name='EnderIO:itemMEConduit', damage=0},
	-- {min=256, batch=64, label='Dense ME Conduit', name='EnderIO:itemMEConduit', damage=1},
	-- {min=256, batch=64, label='Item Conduit Speed Upgrade', name='EnderIO:itemExtractSpeedUpgrade', damage=0},
	-- {min=64, batch=16, label='Basic Item Filter', name='EnderIO:itemBasicFilterUpgrade', damage=0},

	-- {min=256, batch=64, label='Electrum Item Pipe', name='gregtech:gt.blockmachines', damage=5612},
	-- {min=256, batch=64, label='PVC Item Pipe', name='gregtech:gt.blockmachines', damage=5690},
	-- {min=256, batch=64, label='Tiny Quantium Item Pipe', name='gregtech:gt.blockmachines', damage=5730},
	-- {min=256, batch=64, label='Quantium Item Pipe', name='gregtech:gt.blockmachines', damage=5732},

	-- {min=256, batch=64, label='PTFE Fluid Pipe', name='gregtech:gt.blockmachines', damage=5682},
	-- {min=256, batch=64, label='Maraging Steel 350 Fluid Pipe', name='gregtech:gt.blockmachines', damage=30737},
	-- {min=256, batch=64, label='Mysterious Crystal Fluid Pipe', name='gregtech:gt.blockmachines', damage=5232},
	-- {min=256, batch=64, label='Awakened Draconium Fluid Pipe', name='gregtech:gt.blockmachines', damage=5242},
	-- {min=256, batch=64, label='Infinity Fluid Pipe', name='gregtech:gt.blockmachines', damage=5252},

	-- ===================== MULTIBLOCKS ======================
	-- {min=64, batch=16, label='Input Bus (HV)', name='gregtech:gt.blockmachines', damage=73},
	-- {min=64, batch=16, label='Output Bus (HV)', name='gregtech:gt.blockmachines', damage=83},
	-- {min=64, batch=16, label='Input Hatch (HV)', name='gregtech:gt.blockmachines', damage=53},
	-- {min=64, batch=16, label='Output Hatch (HV)', name='gregtech:gt.blockmachines', damage=63},
	-- {min=64, batch=16, label='Muffler Hatch (LV)', name='gregtech:gt.blockmachines', damage=91},
	-- {min=64, batch=16, label='Maintenance Hatch', name='gregtech:gt.blockmachines', damage=91},
	-- {min=64, batch=16, label='BrainTech Aerospace Advanced Reinforced Duct Tape FAL-84', name='gregtech:gt.metaitem.01', damage=32764},
	-- {min=64, batch=16, label='Auto Maintenance Hatch', name='gregtech:gt.blockmachines', damage=111},
	-- {min=64, batch=16, label='Auto-Taping Maintenance Hatch', name='gregtech:gt.blockmachines', damage=15497},

	-- {min=32, batch=8, label='Electric Blast Furnace', name='gregtech:gt.blockmachines', damage=1000},
	-- {min=32, batch=8, label='Large Chemical Reactor', name='gregtech:gt.blockmachines', damage=1169},
	-- {min=32, batch=8, label='Distillation Tower', name='gregtech:gt.blockmachines', damage=1126},
	-- {min=32, batch=8, label='Dangote Distillus', name='gregtech:gt.blockmachines', damage=1126},
	-- {min=32, batch=8, label='Industrial Centrifuge', name='gregtech:gt.blockmachines', damage=790},
	-- {min=32, batch=8, label='Industrial Electrolyzer', name='gregtech:gt.blockmachines', damage=796},
	-- {min=32, batch=8, label='Industrial Mixing Machine', name='gregtech:gt.blockmachines', damage=811},
	-- {min=32, batch=8, label='Large Processing Factory', name='gregtech:gt.blockmachines', damage=860},

	-- {min=256, batch=64, label='Heat Proof Machine Casing', name='gregtech:gt.blockcasings', damage=11},
	-- {min=256, batch=64, label='Chemically Inert Machine Casing', name='gregtech:gt.blockcasings8', damage=0},
	-- {min=256, batch=64, label='Clean Stainless Steel Machine Casing', name='gregtech:gt.blockcasings4', damage=1},
	-- {min=256, batch=64, label='Centrifuge Casing', name='miscutils:miscutils.blockcasings', damage=0},
	-- {min=256, batch=64, label='Electrolyzer Casing', name='miscutils:miscutils.blockcasings', damage=5},
	-- {min=256, batch=64, label='Multi-use Casing', name='miscutils:gtplusplus.blockcasings.3', damage=2},

	-- {min=16, batch=4, label='Machine Controller Cover', name='gregtech:gt.metaitem.01', damage=32730},
	-- {min=16, batch=4, label='Activity Detector Cover', name='gregtech:gt.metaitem.01', damage=32731},
	-- {min=16, batch=4, label='Computer Monitor Cover', name='gregtech:gt.metaitem.01', damage=32740},
	-- {min=16, batch=4, label='Wireless Fluid Detector Cover', name='gregtech:gt.metaitem.02', damage=32581},
	-- {min=16, batch=4, label='Wireless Item Detector Cover', name='gregtech:gt.metaitem.02', damage=32582},
	-- {min=16, batch=4, label='Wireless Needs Maintenace Cover', name='gregtech:gt.metaitem.02', damage=32583},
	-- {min=16, batch=4, label='Ender Fluid Link Cover', name='tectech:item.tm.enderfluidlinkcover', damage=0},

	-- ======================== CABLES ========================
	-- {min=256, batch=32, label='1x Superconductor MV Wire', name='gregtech:gt.blockmachines', damage=2320},
	-- {min=256, batch=32, label='1x Superconductor HV Wire', name='gregtech:gt.blockmachines', damage=2340},
	-- {min=256, batch=32, label='1x Superconductor EV Wire', name='gregtech:gt.blockmachines', damage=2360},
	-- {min=256, batch=32, label='1x Superconductor IV Wire', name='gregtech:gt.blockmachines', damage=2380},
	-- {min=256, batch=32, label='1x Superconductor LuV Wire', name='gregtech:gt.blockmachines', damage=2400},
	-- {min=256, batch=32, label='1x Superconductor ZPM Wire', name='gregtech:gt.blockmachines', damage=2420},
	-- {min=256, batch=32, label='1x Superconductor UV Wire', name='gregtech:gt.blockmachines', damage=2440},
	-- {min=256, batch=32, label='1x Superconductor UHV Wire', name='gregtech:gt.blockmachines', damage=2020},
	-- {min=256, batch=32, label='1x Superconductor UEV Wire', name='gregtech:gt.blockmachines', damage=2026},
	-- {min=256, batch=32, label='1x Superconductor UIV Wire', name='gregtech:gt.blockmachines', damage=2081},
	-- {min=256, batch=32, label='1x Superconductor UMV Wire', name='gregtech:gt.blockmachines', damage=2089},

	-- ======================== COILS =========================
	-- {min=64, batch=16, label='Cupronickel Coil Block', name='gregtech:gt.blockcasings5', damage=0},
	-- {min=64, batch=16, label='Kanthal Coil Block', name='gregtech:gt.blockcasings5', damage=1},
	-- {min=64, batch=16, label='Nichrome Coil Block', name='gregtech:gt.blockcasings5', damage=2},
	-- {min=64, batch=16, label='TPV-Alloy Coil Block', name='gregtech:gt.blockcasings5', damage=3},
	-- {min=64, batch=16, label='HSS-G Coil Block', name='gregtech:gt.blockcasings5', damage=4},
	-- {min=64, batch=16, label='HSS-S Coil Block', name='gregtech:gt.blockcasings5', damage=9},
	-- {min=64, batch=16, label='Naquadah Coil Block', name='gregtech:gt.blockcasings5', damage=5},
	-- {min=64, batch=16, label='Naquadah Alloy Coil Block', name='gregtech:gt.blockcasings5', damage=6},
	-- {min=64, batch=16, label='Trinium Coil Block', name='gregtech:gt.blockcasings5', damage=10},
	-- {min=64, batch=16, label='Electrum Flux Coil Block', name='gregtech:gt.blockcasings5', damage=7},
	-- {min=64, batch=16, label='Awakened Draconium Coil Block', name='gregtech:gt.blockcasings5', damage=8},
	-- {min=64, batch=16, label='Infinity Coil Block', name='gregtech:gt.blockcasings5', damage=11},
	-- {min=64, batch=16, label='Hypogen Coil Block', name='gregtech:gt.blockcasings5', damage=12},
	-- {min=64, batch=16, label='Eternal Coil Block', name='gregtech:gt.blockcasings5', damage=13},

	-- ======================== INGOTS ========================
	-- {min=4096, batch=256, label='Steel Ingot', name='gregtech:gt.metaitem.01', damage=11305},
	-- {min=4096, batch=256, label='Aluminium Ingot', name='gregtech:gt.metaitem.01', damage=11019},
	-- {min=4096, batch=256, label='Stainless Steel Ingot', name='gregtech:gt.metaitem.01', damage=11306},
	-- {min=4096, batch=256, label='Titanium Ingot', name='gregtech:gt.metaitem.01', damage=11028},
	-- {min=4096, batch=256, label='Tungstensteel Ingot', name='gregtech:gt.metaitem.01', damage=11316},
	-- {min=4096, batch=256, label='Rhodium-Plated Palladium Ingot', name='bartworks:gt.MetaGeneratedingot', damage=88},
	-- {min=4096, batch=256, label='Iridium Ingot', name='gregtech:gt.metaitem.01', damage=11084},
	-- {min=4096, batch=256, label='Osmium Ingot', name='gregtech:gt.metaitem.01', damage=11083},
	-- {min=4096, batch=256, label='Neutronium Ingot', name='gregtech:gt.metaitem.01', damage=11083},
	-- {min=4096, batch=256, label='Bedrockium Ingot', name='gregtech:gt.metaitem.01', damage=11083},
	-- {min=4096, batch=256, label='Black Plutonium Ingot', name='gregtech:gt.metaitem.01', damage=11083},

	-- {min=4096, batch=256, label='Neodymium Ingot', name='gregtech:gt.metaitem.01', damage=11067},
	-- {min=4096, batch=256, label='Samarium Ingot', name='gregtech:gt.metaitem.01', damage=11069},
	-- {min=4096, batch=256, label='Vibrant Alloy Ingot', name='gregtech:gt.metaitem.01', damage=11367},
	-- {min=4096, batch=256, label='Energetic Alloy Ingot', name='gregtech:gt.metaitem.01', damage=11366},
	-- {min=4096, batch=256, label='Naquadah Alloy Ingot', name='gregtech:gt.metaitem.01', damage=11325},
	-- {min=4096, batch=256, label='Naquadah Ingot', name='gregtech:gt.metaitem.01', damage=11324},
	-- {min=4096, batch=256, label='Sunnarium Ingot', name='gregtech:gt.metaitem.01', damage=11318},
	-- {min=4096, batch=256, label='Awakened Draconium Ingot', name='gregtech:gt.metaitem.01', damage=11976},
	-- {min=4096, batch=256, label='Trinium Ingot', name='gregtech:gt.metaitem.01', damage=11868},
	-- {min=4096, batch=256, label='Adamantium Ingot', name='gregtech:gt.metaitem.01', damage=11319},
	-- {min=4096, batch=256, label='TPV-Alloy Ingot', name='gregtech:gt.metaitem.01', damage=11576},
	-- {min=4096, batch=256, label='HSS-G Ingot', name='gregtech:gt.metaitem.01', damage=11372},
	-- {min=4096, batch=256, label='HSS-E Ingot', name='gregtech:gt.metaitem.01', damage=11373},
	-- {min=4096, batch=256, label='HSS-S Ingot', name='gregtech:gt.metaitem.01', damage=11374},
	-- {min=4096, batch=256, label='Ruridit Ingot', name='bartworks:gt.bwMetaGeneratedingot', damage=90},
	-- {min=4096, batch=256, label='Chrome Ingot', name='gregtech:gt.metaitem.01', damage=11030},
	-- {min=4096, batch=256, label='Tungsten Ingot', name='gregtech:gt.metaitem.01', damage=11081},
	-- {min=4096, batch=256, label='Fluxed Electrum Ingot', name='gregtech:gt.metaitem.01', damage=11320},
	-- {min=4096, batch=256, label='Enderium Ingot', name='gregtech:gt.metaitem.01', damage=11321},
	-- {min=4096, batch=256, label='Black Steel Ingot', name='gregtech:gt.metaitem.01', damage=11334},
	-- {min=4096, batch=256, label='Vanadium-Gallium Ingot', name='gregtech:gt.metaitem.01', damage=11357},
	-- {min=4096, batch=256, label='Yttrium-Barium Cuprate Ingot', name='gregtech:gt.metaitem.01', damage=11358},
	-- {min=4096, batch=256, label='Niobium-Titanium Ingot', name='gregtech:gt.metaitem.01', damage=11360},
	-- {min=4096, batch=256, label='Quantium Ingot', name='gregtech:gt.metaitem.01', damage=11391},
	-- {min=4096, batch=256, label='Mysterious Crystal Ingot', name='gregtech:gt.metaitem.01', damage=11398},
	-- {min=4096, batch=256, label='Enriched Holmium Ingot', name='gregtech:gt.metaitem.01', damage=11582},
	-- {min=4096, batch=256, label='Silicon Solar Grade (Poly SI) Ingot', name='gregtech:gt.metaitem.01', damage=11856},
	-- {min=4096, batch=256, label='Draconium Ingot', name='gregtech:gt.metaitem.01', damage=11975},
	-- {min=4096, batch=256, label='Signalium Ingot', name='bartworks:gt.bwMetaGeneratedingot', damage=10099},
	-- {min=4096, batch=256, label='Infinity Ingot', name='Avaritia:Resource', damage=6},

	-- ======================== MOTORS ========================
	-- {min=64, batch=16, label='Electric Motor (LV)', name='gregtech:gt.metaitem.01', damage=32600},
	-- {min=64, batch=16, label='Electric Motor (MV)', name='gregtech:gt.metaitem.01', damage=32601},
	-- {min=64, batch=16, label='Electric Motor (HV)', name='gregtech:gt.metaitem.01', damage=32602},
	-- {min=64, batch=16, label='Electric Motor (EV)', name='gregtech:gt.metaitem.01', damage=32603},
	-- {min=64, batch=16, label='Electric Motor (IV)', name='gregtech:gt.metaitem.01', damage=32604},
	-- {min=64, batch=16, label='Electric Motor (LuV)', name='gregtech:gt.metaitem.01', damage=32606},
	-- {min=64, batch=16, label='Electric Motor (ZPM)', name='gregtech:gt.metaitem.01', damage=32607},
	-- {min=64, batch=16, label='Electric Motor (UV)', name='gregtech:gt.metaitem.01', damage=32608},
	-- {min=64, batch=16, label='Electric Motor (UHV)', name='gregtech:gt.metaitem.01', damage=32596},
	-- {min=64, batch=16, label='Electric Motor (UEV)', name='gregtech:gt.metaitem.01', damage=32595},
	-- {min=64, batch=16, label='Electric Motor (UIV)', name='gregtech:gt.metaitem.01', damage=32017},
	-- {min=64, batch=16, label='Electric Motor (UMV)', name='gregtech:gt.metaitem.01', damage=32018},
	-- {min=64, batch=16, label='Electric Motor (UXV)', name='gregtech:gt.metaitem.01', damage=32019},
	-- {min=64, batch=16, label='Electric Motor (MAX)', name='gregtech:gt.metaitem.01', damage=32020},

	-- ======================== PUMPS =========================
	-- {min=64, batch=16, label='Electric Pump (LV)', name='gregtech:gt.metaitem.01', damage=32610},
	-- {min=64, batch=16, label='Electric Pump (MV)', name='gregtech:gt.metaitem.01', damage=32611},
	-- {min=64, batch=16, label='Electric Pump (HV)', name='gregtech:gt.metaitem.01', damage=32612},
	-- {min=64, batch=16, label='Electric Pump (EV)', name='gregtech:gt.metaitem.01', damage=32613},
	-- {min=64, batch=16, label='Electric Pump (IV)', name='gregtech:gt.metaitem.01', damage=32614},
	-- {min=64, batch=16, label='Electric Pump (LuV)', name='gregtech:gt.metaitem.01', damage=32615},
	-- {min=64, batch=16, label='Electric Pump (ZPM)', name='gregtech:gt.metaitem.01', damage=32616},
	-- {min=64, batch=16, label='Electric Pump (UV)', name='gregtech:gt.metaitem.01', damage=32617},
	-- {min=64, batch=16, label='Electric Pump (UHV)', name='gregtech:gt.metaitem.01', damage=32618},
	-- {min=64, batch=16, label='Electric Pump (UEV)', name='gregtech:gt.metaitem.01', damage=32619},
	-- {min=64, batch=16, label='Electric Pump (UIV)', name='gregtech:gt.metaitem.01', damage=32025},
	-- {min=64, batch=16, label='Electric Pump (UMV)', name='gregtech:gt.metaitem.01', damage=32026},
	-- {min=64, batch=16, label='Electric Pump (UXV)', name='gregtech:gt.metaitem.01', damage=32027},
	-- {min=64, batch=16, label='Electric Pump (MAX)', name='gregtech:gt.metaitem.01', damage=32028},

	-- ======================= PISTONS ========================
	-- {min=64, batch=16, label='Electric Piston (LV)', name='gregtech:gt.metaitem.01', damage=32640},
	-- {min=64, batch=16, label='Electric Piston (MV)', name='gregtech:gt.metaitem.01', damage=32641},
	-- {min=64, batch=16, label='Electric Piston (HV)', name='gregtech:gt.metaitem.01', damage=32642},
	-- {min=64, batch=16, label='Electric Piston (EV)', name='gregtech:gt.metaitem.01', damage=32643},
	-- {min=64, batch=16, label='Electric Piston (IV)', name='gregtech:gt.metaitem.01', damage=32644},
	-- {min=64, batch=16, label='Electric Piston (LuV)', name='gregtech:gt.metaitem.01', damage=32645},
	-- {min=64, batch=16, label='Electric Piston (ZPM)', name='gregtech:gt.metaitem.01', damage=32646},
	-- {min=64, batch=16, label='Electric Piston (UV)', name='gregtech:gt.metaitem.01', damage=32647},
	-- {min=64, batch=16, label='Electric Piston (UHV)', name='gregtech:gt.metaitem.01', damage=32648},
	-- {min=64, batch=16, label='Electric Piston (UEV)', name='gregtech:gt.metaitem.01', damage=32649},
	-- {min=64, batch=16, label='Electric Piston (UIV)', name='gregtech:gt.metaitem.01', damage=32021},
	-- {min=64, batch=16, label='Electric Piston (UMV)', name='gregtech:gt.metaitem.01', damage=32022},
	-- {min=64, batch=16, label='Electric Piston (UXV)', name='gregtech:gt.metaitem.01', damage=32023},
	-- {min=64, batch=16, label='Electric Piston (MAX)', name='gregtech:gt.metaitem.01', damage=32024},

	-- ==================== CONVEYOR BELTS ====================
	-- {min=64, batch=16, label='Conveyor Module (LV)', name='gregtech:gt.metaitem.01', damage=32630},
	-- {min=64, batch=16, label='Conveyor Module (MV)', name='gregtech:gt.metaitem.01', damage=32631},
	-- {min=64, batch=16, label='Conveyor Module (HV)', name='gregtech:gt.metaitem.01', damage=32632},
	-- {min=64, batch=16, label='Conveyor Module (EV)', name='gregtech:gt.metaitem.01', damage=32633},
	-- {min=64, batch=16, label='Conveyor Module (IV)', name='gregtech:gt.metaitem.01', damage=32634},
	-- {min=64, batch=16, label='Conveyor Module (LuV)', name='gregtech:gt.metaitem.01', damage=32635},
	-- {min=64, batch=16, label='Conveyor Module (ZPM)', name='gregtech:gt.metaitem.01', damage=32636},
	-- {min=64, batch=16, label='Conveyor Module (UV)', name='gregtech:gt.metaitem.01', damage=32637},
	-- {min=64, batch=16, label='Conveyor Module (UHV)', name='gregtech:gt.metaitem.01', damage=32638},
	-- {min=64, batch=16, label='Conveyor Module (UEV)', name='gregtech:gt.metaitem.01', damage=32639},
	-- {min=64, batch=16, label='Conveyor Module (UIV)', name='gregtech:gt.metaitem.01', damage=32029},
	-- {min=64, batch=16, label='Conveyor Module (UMV)', name='gregtech:gt.metaitem.01', damage=32030},
	-- {min=64, batch=16, label='Conveyor Module (UXV)', name='gregtech:gt.metaitem.01', damage=32031},
	-- {min=64, batch=16, label='Conveyor Module (MAX)', name='gregtech:gt.metaitem.01', damage=32032},

	-- ====================== ROBOT ARMS ======================
	-- {min=64, batch=16, label='Robot Arm (LV)', name='gregtech:gt.metaitem.01', damage=32650},
	-- {min=64, batch=16, label='Robot Arm (MV)', name='gregtech:gt.metaitem.01', damage=32651},
	-- {min=64, batch=16, label='Robot Arm (HV)', name='gregtech:gt.metaitem.01', damage=32652},
	-- {min=64, batch=16, label='Robot Arm (EV)', name='gregtech:gt.metaitem.01', damage=32653},
	-- {min=64, batch=16, label='Robot Arm (IV)', name='gregtech:gt.metaitem.01', damage=32654},
	-- {min=64, batch=16, label='Robot Arm (LuV)', name='gregtech:gt.metaitem.01', damage=32655},
	-- {min=64, batch=16, label='Robot Arm (ZPM)', name='gregtech:gt.metaitem.01', damage=32656},
	-- {min=64, batch=16, label='Robot Arm (UV)', name='gregtech:gt.metaitem.01', damage=32657},
	-- {min=64, batch=16, label='Robot Arm (UHV)', name='gregtech:gt.metaitem.01', damage=32658},
	-- {min=64, batch=16, label='Robot Arm (UEV)', name='gregtech:gt.metaitem.01', damage=32659},
	-- {min=64, batch=16, label='Robot Arm (UIV)', name='gregtech:gt.metaitem.01', damage=32033},
	-- {min=64, batch=16, label='Robot Arm (UMV)', name='gregtech:gt.metaitem.01', damage=32034},
	-- {min=64, batch=16, label='Robot Arm (UXV)', name='gregtech:gt.metaitem.01', damage=32035},
	-- {min=64, batch=16, label='Robot Arm (MAX)', name='gregtech:gt.metaitem.01', damage=32036},

	-- ======================= CIRCUITS =======================
	-- {min=256, batch=64, label='Microprocessor (LV)', name='gregtech:gt.metaitem.03', damage=32078},
	-- {min=256, batch=64, label='Integrated Processor (MV)', name='gregtech:gt.metaitem.03', damage=32080},
	-- {min=256, batch=64, label='Nanoprocessor (HV)', name='gregtech:gt.metaitem.03', damage=32082},
	-- {min=256, batch=64, label='Quantumprocessor (EV)', name='gregtech:gt.metaitem.03', damage=32085},

	-- {min=256, batch=64, label='Crystalprocessor (IV)', name='gregtech:gt.metaitem.03', damage=32089},
	-- {min=256, batch=64, label='Ultimate Crystalcomputer (LuV)', name='gregtech:gt.metaitem.03', damage=32090},
	-- {min=256, batch=64, label='Crystalprocessor Mainframe (ZPM)', name='gregtech:gt.metaitem.03', damage=32091},
	-- {min=256, batch=64, label='Crystalprocessor Assembly (UV)', name='gregtech:gt.metaitem.03', damage=32096},

	-- {min=256, batch=64, label='Wetwareprocessor (LuV)', name='gregtech:gt.metaitem.03', damage=32092},
	-- {min=256, batch=64, label='Wetwareprocessor Assembly (ZPM)', name='gregtech:gt.metaitem.03', damage=32093},
	-- {min=256, batch=64, label='Wetware Supercomputer (UV)', name='gregtech:gt.metaitem.03', damage=32094},
	-- {min=256, batch=64, label='Wetware Mainframe (UHV)', name='gregtech:gt.metaitem.03', damage=32095},

	-- {min=256, batch=64, label='Bioprocessor (ZPM)', name='gregtech:gt.metaitem.03', damage=32097},
	-- {min=256, batch=64, label='Biowareprocessor Assembly (UV)', name='gregtech:gt.metaitem.03', damage=32098},
	-- {min=256, batch=64, label='Bioware Supercomputer (UHV)', name='gregtech:gt.metaitem.03', damage=32099},
	-- {min=256, batch=64, label='Bio Mainframe (UEV)', name='gregtech:gt.metaitem.03', damage=32120},

	-- {min=256, batch=64, label='Optical Processor (UV)', name='gregtech:gt.metaitem.03', damage=32154},
	-- {min=256, batch=64, label='Optical Assembly (UHV)', name='gregtech:gt.metaitem.03', damage=32155},
	-- {min=256, batch=64, label='Optical Computer (UEV)', name='gregtech:gt.metaitem.03', damage=32156},
	-- {min=256, batch=64, label='Optical Mainframe (UIV)', name='gregtech:gt.metaitem.03', damage=32157},

	-- {min=256, batch=64, label='Nano Circuit (UIV)', name='dreamcraft:item.NanoCircuit', damage=0},
	-- {min=256, batch=64, label='Pico Circuit (UMV)', name='dreamcraft:item.PikoCircuit', damage=0},
	-- {min=256, batch=64, label='Quantum Circuit (UXV)', name='dreamcraft:item.QuantumCircuit', damage=0},

	-- ==================== CIRCUIT PARTS =====================
	-- {min=1024, batch=256, label='Wafer', name='gregtech:gt.metaitem.03', damage=32033},
	-- {min=1024, batch=256, label='Phosphorous Doped Wafer', name='gregtech:gt.metaitem.03', damage=32034},
	-- {min=1024, batch=256, label='Naquadah Doped Wafer', name='gregtech:gt.metaitem.03', damage=32035},
	-- {min=1024, batch=256, label='Europium Doped Wafer', name='gregtech:gt.metaitem.03', damage=32151},
	-- {min=1024, batch=256, label='Americium Doped Wafer', name='gregtech:gt.metaitem.03', damage=32153},

	-- {min=512, batch=128, label='PIC Wafer', name='gregtech:gt.metaitem.03', damage=32050},
	-- {min=512, batch=128, label='HPIC Wafer', name='gregtech:gt.metaitem.03', damage=32052},
	-- {min=512, batch=128, label='UHPIC Wafer', name='gregtech:gt.metaitem.03', damage=32058},
	-- {min=256, batch=128, label='NPIC Wafer', name='gregtech:gt.metaitem.03', damage=32160},
	-- {min=256, batch=128, label='PPIC Wafer', name='gregtech:gt.metaitem.03', damage=32162},
	-- {min=256, batch=128, label='QPIC Wafer', name='gregtech:gt.metaitem.03', damage=32164},

	-- ==================== OPEN COMPUTERS ====================
	-- {min=64, batch=16, label='Cable', name='OpenComputers:cable', damage=0},
	-- {min=4, batch=1, label='Computer Case (Tier 3)', name='OpenComputers:case3', damage=0},
	-- {min=4, batch=1, label='Screen (Tier 3)', name='OpenComputers:screen3', damage=0},
	-- {min=4, batch=1, label='Keyboard', name='OpenComputers:keyboard', damage=0},
	-- {min=4, batch=1, label='Adapter', name='OpenComputers:adapter', damage=0},
	-- {min=4, batch=1, label='Rack', name='OpenComputers:rack', damage=0},
	-- {min=4, batch=1, label='Transposer', name='OpenComputers:transposer', damage=0},
	-- {min=4, batch=1, label='Inventory Controller Upgrade', name='OpenComputers:item', damage=61},
	-- {min=4, batch=1, label='Hard Disk Drive (Tier 3) (4 MB)', name='OpenComputers:item', damage=7},
	-- {min=4, batch=1, label='Memory (Tier 3.5)', name='OpenComputers:item', damage=39},
	-- {min=4, batch=1, label='Graphics Card (Tier 3)', name='OpenComputers:item', damage=10},
	-- {min=4, batch=1, label='Internet Card', name='OpenComputers:item', damage=44},
	-- {min=4, batch=1, label='Central Processing Unit (Tier 3)', name='OpenComputers:item', damage=43},
	-- {min=4, batch=1, label='Accelerated Processing Unit (Tier 3)', name='OpenComputers:item', damage=102},
	-- {min=4, batch=1, label='Accelerated Processing Unit (Creative)', name='OpenComputers:item', damage=103},
	-- {min=4, batch=1, label='Server (Tier 3)', name='OpenComputers:item', damage=40},
	-- {min=4, batch=1, label='Server (Tier 4)', name='OpenComputers:item', damage=69},
}

return stockList