-- ANY VEHICLE, BOATS OR EVEN PLANES CAN BE ADDED.

Config = {
	Debug = false,  -- Enable to use debug features
	Notify = "qb",
	CarDespawn = false, -- Sends the vehicle to hell
	Locations = {
		{ 	zoneEnable = true,
			gang = "theyakuza",
			garage = {
				spawn = vector4(1409.23, 1118.30, 114.84, 92.29),  -- the car spawn
				out = vector4(1408.89, 1123.33, 114.84, 177.51),	-- the parking props
				list = {
					["wrangler22"] = {
						colors = {83, 0},
					    performance = "max",
					},
					["wolfsbane"] = {
						colors = {83, 0},
					    performance = "max",
					},
				},
			},
		},

		{ 	zoneEnable = true,
			gang = "whitemilitia",
			garage = {
				spawn = vector4(-126.02, 1003.13, 235.73, 200.43),  -- Where the car will spawn
				out = vector4(-121.52, 1012.15, 235.74, 203.52),	-- Where the parking stand is
				list = {
					["wrangler22"] = {
						colors = {111, 0},
					    performance = "max",
					},
					["wolfsbane"] = {
						colors = {111, 0},
					    performance = "max",
					},
				},
			},
		},

		{ 	zoneEnable = true,
			gang = "thecontinental",
			garage = {
				spawn = vector4(-104.44, 824.17, 235.72, 7.11),  -- Where the car will spawn
				out = vector4(-100.36, 819.29, 235.72, 108.88),	-- Where the parking stand is
				list = {
					["wrangler22"] = {
						colors = {142, 0},
						performance = "max",
					},
					["wolfsbane"] = {
						colors = {142, 0},
						performance = "max",
					},
				},
			},
		},

		{ 	zoneEnable = true,
			gang = "thefallenbs",
			garage = {
				spawn = vector4(1378.22, -596.48, 74.34, 62.78),  -- Where the car will spawn
				out = vector4(1379.89, -600.86, 74.34, 54.97),	-- Where the parking stand is
				list = {
					["wrangler22"] = {
						colors = {12, 12},
						performance = "max",
					},
					["wolfsbane"] = {
						colors = {12, 12},
						performance = "max",
					},
				},
			},
		},

		-- { 	zoneEnable = true,
		-- 	gang = "akatsuki",
		-- 	garage = {
		-- 		spawn = vector4(-1802.25, 457.16, 128.3, 87.32),  -- Where the car will spawn
		-- 		out = vector4(-1799.34, 452.89, 128.31, 357.28),	-- Where the parking stand is
		-- 		list = {
		-- 			["wrangler22"] = {
		-- 				colors = {0, 27},
		-- 				performance = "max",
		-- 			},
		-- 			["wolfsbane"] = {
		-- 				colors = {0, 27},
		-- 				performance = "max",
		-- 			},
		-- 		},
		-- 	},
		-- },




		-- { 	zoneEnable = true,
		--     gang = "ballas",
		--     garage = {
		-- 	    spawn = vector4(88.37, -1968.33, 20.4, 319.3),  -- Where the car will spawn
		-- 	    out = vector4(82.52, -1968.75, 20.75, 224.68),	-- Where the parking stand is
		-- 	    list = {
		-- 		    ["neon"] = {
		-- 			    colors = {0,0},
		-- 			    performance = "max",
		-- 		    },

		-- 	    },
		--     },
	    -- },
		
	},
}
