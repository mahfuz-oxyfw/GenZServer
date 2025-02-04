Config = {}

Config.KeyRequired = true

Config.Delays = {
	WeedProcessing = 1000 * 10,
	MethProcessing = 1000 * 10,
	CokeProcessing = 1000 * 10,
	lsdProcessing = 1000 * 10,
	HeroinProcessing = 1000 * 10,
	thionylchlorideProcessing = 1000 * 10,
}

Config.CircleZones = {
	WeedField = {coords = vector3(320.66, 4316.75, 47.87), name = ('weed'), radius = 65.0},
	WeedProcessing = {coords = vector3(2329.12, 2571.86, 46.68), name = ('Weed Process'), radius = 100.0},
	
	MethProcessing = {coords = vector3(978.17, -147.98, -48.53), name = ('Meth Process'), radius = 20.0},
	MethTemp = {coords = vector3(982.56, -145.59, -49.0), name = ('Meth Temperature'), radius = 20.0},
	MethBag = {coords = vector3(987.81, -140.43, -49.0), name = ('Meth Bagging'), radius = 20.0},
	HydrochloricAcidFarm = {coords = vector3(-1069.25, 4945.57, 212.18), name = ('Hydrochloric Acid'), radius = 100.0},

	SulfuricAcidFarm = {coords = vector3(1686.64, 2204.44, 81.07), name = ('Sulfuric Acid'), radius = 45.0},
	SodiumHydroxideFarm = {coords = vector3(-487.55, 2961.22, 25.07), name = ('Sodium Hydroxide'), radius = 30.0},
	
	ChemicalsField = {coords = vector3(2281.21, -1989.3, 56.03), name = ('Chemicals'), radius = 55.0},
	ChemicalsConvertionMenu = {coords = vector3(3536.71, 3662.63, 28.12), name = ('Chemicals Process'), radius = 100.0},

	CokeField = {coords = vector3(122.55, 6791.96, 19.51), name = ('Coke'), radius = 85.0},
	CokeProcessing = {coords = vector3(1087.14, -3195.31, -38.99), name = ('Coke Process'), radius = 20.0}, 
	CokePowder = {coords = vector3(1092.9, -3196.65, -38.99), name = ('Powder Cutting'), radius = 20.0},--vector3(1092.9, -3196.65, -38.99)
	CokeBrick = {coords = vector3(1099.57, -3194.35, -38.99), name = ('Brick Up Packages'), radius = 20.0},--vector3(1099.57, -3194.35, -38.99)
	
	HeroinField = {coords = vector3(-2426.73, 2787.08, 2.88), name = ('Heroin'), radius = 65.0},
	HeroinProcessing = {coords = vector3(1413.37, -2041.74, 52.0), name = ('Heroin Process'), radius = 100.0},

	lsdProcessing = {coords = vector3(2434.88, 4964.43, 42.35), name = ('LSD process'), radius = 5.0},

	--[[ thionylchlorideProcessing = {coords = vector3(2430.04, 4964.43, 42.35), name = ('Thi Clo Process'), radius = 2.0}, ]]
}


Config.MethLab = {
	--[[ ["enter"] = {
        coords = vector4(1861.85, 3857.05, 35.27, 290.23),
    },
    ["exit"] = {
        coords = vector4(969.37, -147.49, -46.40, 100.93),  --vector3(969.57, -147.07, -46.4)
    }, ]]
}

Config.CokeLab = {
	["enter"] = {
        coords = vector4(813.21, -2398.69, 23.66, 171.51), --vector3(813.21, -2398.69, 23.66)
    },
    ["exit"] = {
        coords = vector4(1088.68, -3187.68, -38.99, 176.04), -- GTA DLC Biker Cocaine Lab -- vector3(1088.68, -3187.68, -38.99)
    },
}

Config.WeedLab = {
	["enter"] = {
		coords = vector4(102.07, 175.09, 104.59, 165.63), 
    },
    ["exit"] = {
        coords = vector4(1066.01, -3183.38, -39.16, 93.01), -- GTA DLC Weed Lab -- 
    },
}


--------------------------------
-- DRUG CONFIG AMOUNTS --
--------------------------------

--------------------------------
-- COKE PROCESSING AMOUNTS --
--------------------------------

Config.CokeProcessing = {
	CokeLeaf = 1, -- Amount of Leaf Needed to Process
	ProcessCokeLeaf = math.random(3,7), -- Amount of Coke Received
	-- Processing Small Bricks --
	Coke = 10, -- Amount of Coke Needed for Small Brick
	BakingSoda = 5, -- Amount of Baking Soda Needed for Small Brick
	SmallCokeBrick = math.random(3,7),
	-- Process Small Bricks Into Large Brick --
	SmallBrick = 1, -- Amount of Small Bricks Required
	CokeToy = 2, -- Coke Toy Received
}

--------------------------------
-- METH PROCESSING AMOUNTS --
--------------------------------
Config.MethProcessing = {
	-- Chemical Processing --
	SulfAcid = 1, -- Amount of Sulfuric Acid Needed for Liquid Mix
	HydAcid = 1, -- Amount of Hydrochloric Acid Needed for Liquid Mix
	SodHyd = 1, -- Amount of Sodium Hydroxide Needed for Liquid Mix
	Meth = math.random(5,12), -- Amount of Meth Recevied From 1 Tray
}

--------------------------------
-- HEROIN PROCESSING AMOUNTS --
--------------------------------
Config.HeroinProcessing = {
	Poppy = 2 -- Amount of Poppy Required for 1 Heroin
}
