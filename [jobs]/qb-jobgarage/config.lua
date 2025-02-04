Loc = {}

--[[	LIST OF POSSIBLE VEHICLE MODIFIERS   ]]--
-- Using these will change how each vehicle spawns
-- This can be used for making sure the vehicles comes out exactly how you want it to

-- CustomName = "Police Car", this will show a custom override name for your vehicles so you don't need to add them to your vehicles.lua
-- rank = { 2, 4 }, -- This specifes which grades can see it, and only these grades
-- grade = 4, -- This specifies the lowest grade and above that can see the vehicle
-- colors = { 136, 137 }, -- This is the colour index id of the vehicle, Primary and Secondary in that order
-- bulletproof = true, -- This determines if the tyres are bullet proof (don't ask me why, I was asked to add this)
-- livery = 1, -- This sets the livery id of the vehicle, (most mod menus would number them or have them in number order) 0 = stock
-- extras = { 1, 5 }, -- This enables the selected extras on the vehicle
-- performance = "max", this sets the stats to max if available
-- performance = { 2, 3, 3, 2, 4, true }, -- This allows more specific settings for each upgrade level, in order: engine, brakes, suspension, transmission, armour, turbo
-- trunkItems = { }, -- Use this to add items to the trunk of the vehicle when it is spawned

-- ANY VEHICLE, BOATS, POLICE CARS, EMS VEHICLES OR EVEN PLANES CAN BE ADDED.

Config = {
	Debug = false,  -- Enable to use debug features
	Lan = "en",

	Core = "qb-core",
	Menu = "qb",
	Notify = "qb",

	Fuel = "cdn-fuel", -- Set this to your fuel script folder

	CarDespawn = true, -- Sends the vehicle to hell (removal animation)

	DistCheck = false, -- Require the vehicle to be near by to remove it

	Locations = {
		{ 	zoneEnable = true,
			job = "mechanic",
			garage = {
				spawn = vec4(2759.45, 3467.72, 55.71, 157.05),  -- Where the car will spawn
				out = vec4(2752.89, 3479.01, 55.68, 248.22),	-- Where the parking stand is
				list = {
					["dl450mec"] = {
						CustomName = "Racker",
						colors = { 136, 137 },
						grade = 0,
						livery = 1,
						bulletproof = true,
						extras = { 1, 4 },
					},
					["dlmustmec"] = {
						CustomName = "Mustang",
						colors = { 136, 137 },
						grade = 0,
						livery = 1,
						bulletproof = true,
						extras = { 1, 4 },
					},
					["Kguinchomec"] = {
						CustomName = "Tow Truck",
						colors = { 136, 137 },
						grade = 0,
						livery = 1,
						bulletproof = true,
						extras = { 1, 4 },
					},
					["Ksierramec"] = {
						CustomName = "Offroad",
						colors = { 136, 137 },
						grade = 0,
						livery = 1,
						bulletproof = true,
						extras = { 1, 4 },
					},
					["Kteneremec"] = {
						CustomName = "Bike",
						colors = { 136, 137 },
						grade = 0,
						livery = 1,
						bulletproof = true,
						extras = { 1, 4 },
					},
				},
			},
		},

		{ 	zoneEnable = true,
			job = "mechanic",
			garage = {
				spawn = vec4(2684.41, 3475.3, 64.72, 343.34),  -- Where the car will spawn
				out = vec4(2678.37, 3501.9, 64.72, 157.86),   -- Where the parking stand is
				list = {
					["Khelimec"] = {
						colors = { 255, 140, 0, 255 },
						livery = 2,
						bulletproof = true,
						extras = { 1, 4 },
					},
					["cargobob"] = {
						colors = { 255, 140, 0, 255 },
						livery = 2,
						bulletproof = true,
						extras = { 1, 4 },
					},
				},
			},
		},


		{ 	zoneEnable = true,
			job = "chillcafe",
			garage = {
				spawn = vec4(171.30, -219.58, 54.12, 342.35),  -- Where the car will spawn
				out = vec4(172.42, -223.99, 54.21, 336.06),	-- Where the parking stand is
				list = {
					["nspeedo"] = {
						colors = { 35, 35 },
						grade = 1, 2, 3, 4,
						livery = 7,
						bulletproof = true,
						extras = { 1, 4 },
					},
				},
			},
		},

		{ 	zoneEnable = true,
			job = "burgershot",
			garage = {
					spawn = vec4(-1164.07, -891.09, 14.12, 122.97),  -- Where the car will spawn
					out = vec4(-1176.28, -893.15, 13.83, 308.34),	-- Where the parking stand is
				list = {
					["nspeedo"] = {
						colors = { 255, 140, 0, 255 },
						livery = 2,
						bulletproof = true,
						extras = { 1, 4 },
					},
				},
			},
		},
		{ 	zoneEnable = true,
			job = "police",
			garage = {
					spawn = vec4(427.64, -991.02, 25.14, 271.70),
					out = vec4(427.80, -988.40, 25.14, 273.62),
				list = {
					["gchuracan"] = {
						CustomName = "Lambo Huracan Speed unit 2",
						livery = 2,
						extras = { 1, 2 },
						performance = { 0, 0, 3, 0, 1, 0, true },
						rank = {8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["Pbmw1200"] = {
						CustomName = "Patrolling Bike",
						livery = 2,
						extras = { 1, 2 },
						performance = { 0, 0, 3, 0, 1, 0, true },
						rank = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["Pbmwm5"] = {
						CustomName = "BMW M5",
						livery = 2,
						extras = { 1, 2 },
						performance = { 0, 0, 3, 0, 1, 0, true },
						rank = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["polmustang"] = {
						CustomName = "Mustang GT",
						livery = 2,
						extras = { 1, 2 },
						performance = { 0, 0, 3, 0, 1, 0, true },
						rank = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["pchellcat"] = {
						CustomName = "Hellcat",
						livery = 1,
						extras = { 1, 2 },
						performance = { 0, 0, 3, 0, 1, 0, true },
						rank = {4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["Pexplorer"] = {
						CustomName = "Ford Explorer",
						livery = 2,
						extras = { 1, 2 },
						performance = { 0, 0, 3, 0, 1, 0, true },
						rank = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},

					["polcharger18"] = {
						CustomName = "Police Charger",
						livery = 1,
						extras = { 2, 3 },
						performance = { 0, 0, 3, 0, 1, 0, true },
						rank = {5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["PoliceVan"] = {
						CustomName = "Police Van",
						livery = 2,
						extras = { 1, 2 },
						performance = "max",
						rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["Pr1Speed"] = {
						CustomName = "Police Bike Speed Unit",
						livery = 1,
						extras = { 1, 2 },
						performance = "max",
						rank = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["PslsSpeed"] = {
						CustomName = "Merchades SLS Speed Unit 1",
						livery = 1,
						extras = { 1, 2 },
						performance = "max",
						rank = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},


					["gtam21"] = {
						CustomName = "AlfaRomeo",
						livery = 1,
						extras = { 1, 2 },
						performance = "max",
						rank = {16}
					},
					["12hiace"] = {
						CustomName = "DB_Hiace",
						livery = 1,
						extras = { 1, 2 },
						performance = "max",
						rank = {16}
					},
					["ss4rb"] = {
						CustomName = "PoliceP1",
						livery = 1,
						extras = { 1, 2 },
						performance = "max",
						rank = {16}
					},
					["ss1rb"] = {
						CustomName = "PolicePorsche",
						livery = 1,
						extras = { 1, 2 },
						performance = "max",
						rank = {16}
					},
					["tundrarab"] = {
						CustomName = "TundraTRDPro",
						livery = 1,
						extras = { 1, 2 },
						performance = "max",
						rank = {16}
					},
				},
			},
		},


		{ 	zoneEnable = true,
			job = "police",
			garage = {
					spawn = vec4(472.34, -1001.76, 25.14, 90.44),
					out = vec4(465.56, -1003.80, 25.14, 7.91),
				list = {
					["gchuracan"] = {
						CustomName = "Lambo Huracan Speed unit 2",
						livery = 2,
						extras = { 1, 2 },
						performance = { 0, 0, 3, 0, 1, 0, true },
						rank = {8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["Pbmw1200"] = {
						CustomName = "Patrolling Bike",
						livery = 2,
						extras = { 1, 2 },
						performance = { 0, 0, 3, 0, 1, 0, true },
						rank = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["Pbmwm5"] = {
						CustomName = "BMW M5",
						livery = 2,
						extras = { 1, 2 },
						performance = { 0, 0, 3, 0, 1, 0, true },
						rank = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["polmustang"] = {
						CustomName = "Mustang GT",
						livery = 2,
						extras = { 1, 2 },
						performance = { 0, 0, 3, 0, 1, 0, true },
						rank = {3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["pchellcat"] = {
						CustomName = "Hellcat",
						livery = 1,
						extras = { 1, 2 },
						performance = { 0, 0, 3, 0, 1, 0, true },
						rank = {4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["Pexplorer"] = {
						CustomName = "Ford Explorer",
						livery = 2,
						extras = { 1, 2 },
						performance = { 0, 0, 3, 0, 1, 0, true },
						rank = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},

					["polcharger18"] = {
						CustomName = "Police Charger",
						livery = 1,
						extras = { 2, 3 },
						performance = { 0, 0, 3, 0, 1, 0, true },
						rank = {5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["PoliceVan"] = {
						CustomName = "Police Van",
						livery = 2,
						extras = { 1, 2 },
						performance = "max",
						rank = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["Pr1Speed"] = {
						CustomName = "Police Bike Speed Unit",
						livery = 1,
						extras = { 1, 2 },
						performance = "max",
						rank = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
					["PslsSpeed"] = {
						CustomName = "Merchades SLS Speed Unit 1",
						livery = 1,
						extras = { 1, 2 },
						performance = "max",
						rank = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},
				},
			},
		},


		{ 	zoneEnable = true,
			job = "police",
			garage = {
				spawn = vec4(449.2, -981.55, 43.69, 358.23),
				out = vec4(439.89, -978.15, 43.69, 272.29),
				list = {
					--[[ ["pshp_aw139"] = {
						CustomName = "Police Heli",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						rank = {2, 3, 4, 5, 6, 7, 8, 9}
					}, ]]
					["seasparrow"] = {
						CustomName = "Sea Heli",
						livery = 2,
						extras = { 1, 2 },
						performance = "max",
						rank = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},	
					["annihilator"] = {
						CustomName = "Police Heli 6s",
						livery = 2,
						extras = { 1, 2 },
						performance = "max",
						rank = {14, 15, 16}
					},	
					["polmav"] = {
						CustomName = "Police Heli",
						livery = 2,
						extras = { 1, 2 },
						performance = "max",
						rank = {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16}
					},	
				},
			},
		},

		{ 	zoneEnable = true,
			job = "ambulance",
			garage = {
				spawn = vec4(-454.01, -1029.65, 38.40, 352.36),
				out = vec4(-455.63, -1040.44, 38.28, 3.51),
				list = {
					["pspg_aw139"] = {
						CustomName = "Ems Heli",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						rank = {6, 7, 8, 9, 10, 11, 12}
					},
					["polmav"] = {
						CustomName = "Ems Heli1",
						livery = 1,
						extras = { 1, 2 },
						performance = "max",
						rank = {6, 7, 8, 9, 10, 11, 12}
					},
				},
			},
		},

		{ 	zoneEnable = true,
			job = "ambulance",
			garage = {
				spawn = vec4(-252.63, 6319.01, 39.66, 285.13),
				out = vec4(-264.54, 6328.84, 37.58, 228.1),
				list = {
					["pspg_aw139"] = {
						CustomName = "Ems Heli",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						rank = {6, 7, 8, 9, 10, 11, 12}
					},
					["polmav"] = {
						CustomName = "Ems Heli1",
						livery = 1,
						extras = { 1, 2 },
						performance = "max",
						rank = {6, 7, 8, 9, 10, 11, 12}
					},
				},
			},
		},
		

		{ 	zoneEnable = true,
			job = "ambulance",
			garage = {
				spawn = vec4(-457.78, -1016.82, 24.29, 91.95),
				out = vec4(-472.50, -1022.22, 24.29, 3.90),
				list = {
					["emsnspeedo"] = {
						CustomName = "Ambulance"
					},
					["audirs6emsfire"] = {
						CustomName = "EMS Audi"
					},
					["ms_bronco"] = {
						CustomName = "Ems Offroad"
					},
					["iak_wheelchair"] = {
						CustomName = "Chair"
					},
					["ms_m5"] = {
						CustomName = "Ems BMW"
					},
					["RoyalYamahaEMS_white"] = {
						CustomName = "Bike"
					},
					["mustang19"] = {
						CustomName = "Ems BOSS"
					},
					["iyremakerolls"] = {
						CustomName = "BOSS"
					},
					["ms_coach"] = {
						CustomName = "BUS"
					},
				},
			},
		},

		{ 	zoneEnable = true,
			job = "ambulance",
			garage = {
				spawn = vec4(-464.37, -990.03, 24.29, 187.04),
				out = vec4(-453.37, -985.19, 24.29, 183.74),
				list = {
					["emsnspeedo"] = {
						CustomName = "Ambulance"
					},
					["audirs6emsfire"] = {
						CustomName = "EMS Audi"
					},
					["ms_bronco"] = {
						CustomName = "Ems Offroad"
					},
					["iak_wheelchair"] = {
						CustomName = "Chair"
					},
					["ms_m5"] = {
						CustomName = "Ems BMW"
					},
					["RoyalYamahaEMS_white"] = {
						CustomName = "Bike"
					},
					["mustang19"] = {
						CustomName = "Ems BOSS"
					},
					["iyremakerolls"] = {
						CustomName = "BOSS"
					},
					["ms_coach"] = {
						CustomName = "BUS"
					},
				},
			},
		},
	},
}
