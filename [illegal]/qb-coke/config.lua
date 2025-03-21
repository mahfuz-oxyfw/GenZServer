Config = {}
Config.Locale = 'en' -- English, German or Spanish - (en/de/es)

Config.useMythic = false -- change this if you want to use mythic_notify or not

Config.useCD = true -- change this if you want to have a global cooldown or not
Config.cdTime = 300000 -- global cooldown in ms. Set to 20 minutes by default - (https://www.timecalculator.net/minutes-to-milliseconds)
Config.doorHeading = 112.32 -- change this to the proper heading to look at the door you start the runs with
Config.price = 1000 -- amount you get after the run 
Config.amount = 1500 --amount you have to pay to start a run 
Config.cokeTime = 60000 -- time in ms the effects of coke will last for
Config.pickupTime = 5000 -- time it takes to pick up the delivery 
Config.randBrick = math.random(1,1) -- change the numbers to how much coke you want players to receive after breaking down bricks
Config.landPlane = false -- change this if you want the plane to fly and land or if it should spawn on the ground



Config.locations = {
	[1] = { 
		fuel = {x = 2140.458, y = 4789.831, z = 40.97033},
		landingLoc = {x = 2102.974, y = 4794.949, z = 41.06044},
		plane = {x = 1506.836, y = 4524.545, z = 97.78197, h = 296.68},
		runwayStart = {x = 2082.278, y = 4785.483, z = 41.06053},
		runwayEnd = {x = 1855.845, y = 4673.433, z = 52.04392},
		fuselage = {x = 2137.618, y = 4812.194, z = 41.19522},
		stationary = {x = 2137.618, y = 4812.194, z = 41.19522, h = 296.68},
		delivery = {x = -195.8702, y = 7051.156, z = 0.8857441},
		hangar = {x = 2134.474, y = 4780.939, z = 40.97027}, 
		parking = {x = 2137.618, y = 4812.194, z = 41.19522},
	},
	[2] = { 
		fuel = {x = 2140.458, y = 4789.831, z = 40.97033},
		landingLoc = {x = 2102.974, y = 4794.949, z = 41.06044},
		plane = {x = 1506.836, y = 4524.545, z = 97.78197, h = 296.68},
		runwayStart = {x = 2082.278, y = 4785.483, z = 41.06053},
		runwayEnd = {x = 1855.845, y = 4673.433, z = 52.04392},
		fuselage = {x = 2137.618, y = 4812.194, z = 41.19522},
		stationary = {x = 2137.618, y = 4812.194, z = 41.19522, h = 296.68},
		delivery = {x = 3218.79, y = 6677.31, z = 0.30},
		hangar = {x = 2134.474, y = 4780.939, z = 40.97027}, 
		parking = {x = 2137.618, y = 4812.194, z = 41.19522},
	},
	-- [3] = { 
	-- 	fuel = {x = 2140.458, y = 4789.831, z = 40.97033},
	-- 	landingLoc = {x = 2102.974, y = 4794.949, z = 41.06044},
	-- 	plane = {x = 1506.836, y = 4524.545, z = 97.78197, h = 296.68},
	-- 	runwayStart = {x = 2082.278, y = 4785.483, z = 41.06053},
	-- 	runwayEnd = {x = 1855.845, y = 4673.433, z = 52.04392},
	-- 	fuselage = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- 	stationary = {x = 2137.618, y = 4812.194, z = 41.19522, h = 296.68},
	-- 	delivery = {x = 4192.87, y = 2688.87, z = 0.10},
	-- 	hangar = {x = 2134.474, y = 4780.939, z = 40.97027}, 
	-- 	parking = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- },
	-- [4] = { 
	-- 	fuel = {x = 2140.458, y = 4789.831, z = 40.97033},
	-- 	landingLoc = {x = 2102.974, y = 4794.949, z = 41.06044},
	-- 	plane = {x = 1506.836, y = 4524.545, z = 97.78197, h = 296.68},
	-- 	runwayStart = {x = 2082.278, y = 4785.483, z = 41.06053},
	-- 	runwayEnd = {x = 1855.845, y = 4673.433, z = 52.04392},
	-- 	fuselage = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- 	stationary = {x = 2137.618, y = 4812.194, z = 41.19522, h = 296.68},
	-- 	delivery = {x = -195.8702, y = 7051.156, z = 0.8857441},
	-- 	hangar = {x = 2134.474, y = 4780.939, z = 40.97027}, 
	-- 	parking = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- },
	-- [5] = { 
	-- 	fuel = {x = 2140.458, y = 4789.831, z = 40.97033},
	-- 	landingLoc = {x = 2102.974, y = 4794.949, z = 41.06044},
	-- 	plane = {x = 1506.836, y = 4524.545, z = 97.78197, h = 296.68},
	-- 	runwayStart = {x = 2082.278, y = 4785.483, z = 41.06053},
	-- 	runwayEnd = {x = 1855.845, y = 4673.433, z = 52.04392},
	-- 	fuselage = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- 	stationary = {x = 2137.618, y = 4812.194, z = 41.19522, h = 296.68},
	-- 	delivery = {x = -195.8702, y = 7051.156, z = 0.8857441},
	-- 	hangar = {x = 2134.474, y = 4780.939, z = 40.97027}, 
	-- 	parking = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- },
	-- [6] = { 
	-- 	fuel = {x = 2140.458, y = 4789.831, z = 40.97033},
	-- 	landingLoc = {x = 2102.974, y = 4794.949, z = 41.06044},
	-- 	plane = {x = 1506.836, y = 4524.545, z = 97.78197, h = 296.68},
	-- 	runwayStart = {x = 2082.278, y = 4785.483, z = 41.06053},
	-- 	runwayEnd = {x = 1855.845, y = 4673.433, z = 52.04392},
	-- 	fuselage = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- 	stationary = {x = 2137.618, y = 4812.194, z = 41.19522, h = 296.68},
	-- 	delivery = {x = 3218.79, y = 6677.31, z = 0.30},
	-- 	hangar = {x = 2134.474, y = 4780.939, z = 40.97027}, 
	-- 	parking = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- },
	-- [7] = { 
	-- 	fuel = {x = 2140.458, y = 4789.831, z = 40.97033},
	-- 	landingLoc = {x = 2102.974, y = 4794.949, z = 41.06044},
	-- 	plane = {x = 1506.836, y = 4524.545, z = 97.78197, h = 296.68},
	-- 	runwayStart = {x = 2082.278, y = 4785.483, z = 41.06053},
	-- 	runwayEnd = {x = 1855.845, y = 4673.433, z = 52.04392},
	-- 	fuselage = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- 	stationary = {x = 2137.618, y = 4812.194, z = 41.19522, h = 296.68},
	-- 	delivery = {x = 4192.87, y = 2688.87, z = 0.10},
	-- 	hangar = {x = 2134.474, y = 4780.939, z = 40.97027}, 
	-- 	parking = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- },
	-- [8] = { 
	-- 	fuel = {x = 2140.458, y = 4789.831, z = 40.97033},
	-- 	landingLoc = {x = 2102.974, y = 4794.949, z = 41.06044},
	-- 	plane = {x = 1506.836, y = 4524.545, z = 97.78197, h = 296.68},
	-- 	runwayStart = {x = 2082.278, y = 4785.483, z = 41.06053},
	-- 	runwayEnd = {x = 1855.845, y = 4673.433, z = 52.04392},
	-- 	fuselage = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- 	stationary = {x = 2137.618, y = 4812.194, z = 41.19522, h = 296.68},
	-- 	delivery = {x = 3218.79, y = 6677.31, z = 0.30},
	-- 	hangar = {x = 2134.474, y = 4780.939, z = 40.97027}, 
	-- 	parking = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- },
	-- [9] = { 
	-- 	fuel = {x = 2140.458, y = 4789.831, z = 40.97033},
	-- 	landingLoc = {x = 2102.974, y = 4794.949, z = 41.06044},
	-- 	plane = {x = 1506.836, y = 4524.545, z = 97.78197, h = 296.68},
	-- 	runwayStart = {x = 2082.278, y = 4785.483, z = 41.06053},
	-- 	runwayEnd = {x = 1855.845, y = 4673.433, z = 52.04392},
	-- 	fuselage = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- 	stationary = {x = 2137.618, y = 4812.194, z = 41.19522, h = 296.68},
	-- 	delivery = {x = 4192.87, y = 2688.87, z = 0.10},
	-- 	hangar = {x = 2134.474, y = 4780.939, z = 40.97027}, 
	-- 	parking = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- },
	-- [10] = { 
	-- 	fuel = {x = 2140.458, y = 4789.831, z = 40.97033},
	-- 	landingLoc = {x = 2102.974, y = 4794.949, z = 41.06044},
	-- 	plane = {x = 1506.836, y = 4524.545, z = 97.78197, h = 296.68},
	-- 	runwayStart = {x = 2082.278, y = 4785.483, z = 41.06053},
	-- 	runwayEnd = {x = 1855.845, y = 4673.433, z = 52.04392},
	-- 	fuselage = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- 	stationary = {x = 2137.618, y = 4812.194, z = 41.19522, h = 296.68},
	-- 	delivery = {x = 3218.79, y = 6677.31, z = 0.30},
	-- 	hangar = {x = 2134.474, y = 4780.939, z = 40.97027}, 
	-- 	parking = {x = 2137.618, y = 4812.194, z = 41.19522},
	-- },
}



