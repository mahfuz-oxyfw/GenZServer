Config = {
	Debug = false,
	Core = "qb-core",

	Inv = "qb", -- set to "ox" if using ox_inventory
	Notify = "qb",  -- set to "ox" if using ox_lib

	UseProgbar = true,
	ProgressBar = "qb", -- set to "ox" if using ox_lib

	Consumables = {
		
		--["bowl_carbonara"] = { 			emote = "bzzz_carbonara", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { --[[ effect = "stress", time = 5000, ]] amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_drink_a"] = { 			emote = "bz_drink_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "drink", stats = { amount = 2, thirst = math.random(10,20), canOD = false }},
		["bzzz_prop_fastfood_drink_b"] = { 			emote = "bz_drink_b", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "drink", stats = { amount = 2, thirst = math.random(10,20), canOD = false }},
		["bzzz_prop_fastfood_chicken_a"] = { 		emote = "bz_chickenbox_a", 	canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_chicken_b"] = { 		emote = "bz_chickenbox_b", 	canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_icecream_a"] = { 		emote = "bz_icecream_a", 	canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_icecream_b"] = { 		emote = "bz_icecream_b", 	canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_nugget_a"] = { 		emote = "bz_nugget_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_onion_a"] = { 			emote = "bz_onion_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_noodle_a"] = { 		emote = "bz_noodle", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_chicken_d"] = { 		emote = "bz_chickenbox_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_chicken_e"] = { 		emote = "bz_chickenbox_b", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_chicken_f"] = { 		emote = "bz_chickenbox_c", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_fries_d"] = { 			emote = "bz_fries_c", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_nugget_b"] = { 		emote = "bz_nuggetbox", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_onion_b"] = { 			emote = "bz_rings", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_vegesalad_a"] = { 		emote = "bz_vegesalad", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_fries_a"] = { 			emote = "bz_fries_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_prop_fastfood_fries_b"] = { 			emote = "bz_fries_b", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bowl_carbonara"] = { 						emote = "bzzz_carbonara", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bowl_miso"] = { 							emote = "bzzz_miso", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bowl_pho"] = { 							emote = "bzzz_pho", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bowl_primavera"] = { 						emote = "bzzz_primavera", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bowl_sausage"] = { 						emote = "bzzz_sausage", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bowl_alfredo"] = { 						emote = "bzzz_carbonara", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bowl_borscht"] = { 						emote = "bzzz_carbonara", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_zucchini_grill_a"] = { 	emote = "bzzz_food_grill_zucchini_grill_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_tofu_grill_a"] = { 		emote = "bzzz_food_grill_tofu_grill_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_steak_grill_d"] = { 		emote = "bzzz_food_grill_steak_grill_d", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_steak_grill_c"] = { 		emote = "bzzz_food_grill_steak_grill_c", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_steak_grill_b"] = { 		emote = "bzzz_food_grill_steak_grill_b", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_steak_grill_a"] = { 		emote = "bzzz_food_grill_steak_grill_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_skewer_grill_a"] = { 		emote = "bzzz_food_grill_skewer_grill_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_sausage_grill_a"] = { 	emote = "bzzz_food_grill_sausage_grill_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_salmon_grill_a"] = { 		emote = "bzzz_food_grill_salmon_grill_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_ribs_grill_b"] = { 		emote = "bzzz_food_grill_ribs_grill_b", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_potato_grill_a"] = { 		emote = "bzzz_food_grill_potato_grill_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_pineapple_grill_a"] = { 	emote = "bzzz_food_grill_pineapple_grill_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_naan_grill_a"] = { 		emote = "bzzz_food_grill_naan_grill_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_mushrooms_grill_a"] = { 	emote = "bzzz_food_grill_mushrooms_grill_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_halloumi_grill_a"] = { 	emote = "bzzz_food_grill_halloumi_grill_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_fish_grill_a"] = { 		emote = "bzzz_food_grill_fish_grill_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_corn_grill_a"] = { 		emote = "bzzz_food_grill_corn_grill_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_chicken_grill_d"] = { 	emote = "bzzz_food_grill_chicken_grill_d", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_chicken_grill_c"] = { 	emote = "bzzz_food_grill_chicken_grill_c", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_chicken_grill_b"] = { 	emote = "bzzz_food_grill_chicken_grill_b", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_camembert_grill_a"] = { 	emote = "bzzz_food_grill_camembert_grill_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_baguette_grill_c"] = { 	emote = "bzzz_food_grill_baguette_grill_c", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},
		["bzzz_food_grill_bacon_grill_a"] = { 		emote = "bzzz_food_grill_bacon_grill_a", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(20,30), canOD = false }},

		-- chill cafe
		["sweet_herbal_tea"] = { 			emote = "cup", 				canRun = true, 	time = math.random(6000, 9000), stress = 30, heal = 0, armor = 0, type = "drink", stats = { amount = 2, thirst = math.random(40,45), canOD = false }},
		["booba_milk_tea_1"] = { 			emote = "boba", 			canRun = true, 	time = math.random(6000, 9000), stress = 20, heal = 0, armor = 0, type = "drink", stats = { amount = 2, thirst = math.random(54,55), canOD = false }},
		["booba_milk_tea_2"] = { 			emote = "boba2", 			canRun = true, 	time = math.random(6000, 9000), stress = 0, heal = 0, armor = 0, type = "drink", stats = { amount = 2, thirst = math.random(54,55), canOD = false }},
		["strawberry_shortcake"] = { 		emote = "xmascc", 			canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(60,65), canOD = false }},
		["matcha_coffee"] = { 				emote = "coffee", 			canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "drink", stats = { amount = 2, thirst = math.random(65,75), canOD = false }},
		["meowchi_mochi_ice_cream"] = { 	emote = "icecreamd", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(34,35), canOD = false }},
		["hot_chocolate"] = { 				emote = "sipshakel", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "drink", stats = { amount = 2, thirst = math.random(49,50), canOD = false }},
		["cat_macaroon_brown"] = { 			emote = "macaroon", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(49,50), canOD = false }},

		["gingerkitty_cookie"] = { 			emote = "sipshakel", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(29,30), canOD = false }},
		["lovely_hot_chocolate"] = { 		emote = "sipshakee", 		canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "drink", stats = { amount = 2, thirst = math.random(75,76), canOD = false }},
		["oxygen_cake"] = { 				emote = "xmascc2", 			canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(60,65), canOD = false }},
		["doki_doki_pancakes"] = { 			emote = "desert", 			canRun = true, 	time = math.random(5000, 6000), stress = 5, heal = 0, armor = 0, type = "drink", stats = { amount = 2, hunger = math.random(35,45), canOD = false }},
		
		-- burgershot new items 
		["sprite"] = { 					emote = "sipsodab", 		canRun = true, 	time = math.random(6000, 9000), stress = 0, heal = 0, armor = 0, type = "drink", stats = { amount = 2, thirst = math.random(45,50), canOD = false }},
		["fanta"] = { 					emote = "sipsodad", 		canRun = true, 	time = math.random(6000, 9000), stress = 0, heal = 0, armor = 0, type = "drink", stats = { amount = 2, thirst = math.random(45,50), canOD = false }},
		["mojitoslushy"] = { 			emote = "mojito", 			canRun = true, 	time = math.random(6000, 9000), stress = 10, heal = 0, armor = 0, type = "drink", stats = { amount = 2, thirst = math.random(70,75), canOD = false }},

		-- burgershot
		["bzzz_food_grill_burger_grill_d"] = { 	emote = "bzzz_food_grill_burger_grill_d", 	canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(60,65), canOD = false }},
		["bzzz_prop_fastfood_cheeseburger_a"] = { 	emote = "bz_burger", 	canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(60,65), canOD = false }},
		["bzzz_prop_fastfood_bigburger_a"] = { 	emote = "bz_bigburger", 	canRun = true, 	time = math.random(5000, 6000), stress = 0, heal = 0, armor = 0, type = "food", stats = { amount = 2, hunger = math.random(60,65), canOD = false }},


		--Effects can be applied here, like stamina on coffee for example
		["vodka"] = { 						emote = "vodkab", 			canRun = false, 	time = math.random(5000, 6000), stress = 0, 				heal = 0, armor = 0, type = "alcohol", 	stats = { effect = "stress", time = 5000, amount = 2, thirst = math.random(10,20), canOD = false }},
		["beer"] = { 						emote = "beer", 			canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", 	stats = { thirst = math.random(10,20), canOD = false }},
		["whiskey"] = { 					emote = "whiskey",  		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "alcohol", 	stats = { thirst = math.random(10,20), canOD = false }},

		["sandwich"] = { 					emote = "desert", 			canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", 	stats = { hunger = math.random(10,20), }},
		["twerks_candy"] = { 				emote = "egobar", 			canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", 	stats = { hunger = math.random(7,10), }},
		["snikkel_candy"] = { 				emote = "egobar", 			canRun = true, 		time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", 	stats = { hunger = math.random(10,20), }},
		["tosti"] = { 						emote = "sandwich", 		canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "food", 	stats = { hunger = math.random(5,10), }},

		["coffee"] = { 						emote = "coffee", 			canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", 	stats = { effect = "stamina", time = 10000, thirst = math.random(10,15), }},
		["water_bottle"] = { 				emote = "drink", 			canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", 	stats = { thirst = math.random(5,10), }},
		["kurkakola"] = { 					emote = "ecola", 			canRun = false, 	time = math.random(5000, 6000), stress = math.random(2, 4), heal = 0, armor = 0, type = "drink", 	stats = { thirst = math.random(10,15), }},

		--[[----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- Items that effect status changes, like bleeding can cause problems as they are all handled in their own scripts
		-- Testing these but they may be best left handled by default scripts
		["ifaks"] = { 			emote = "oxy", 		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 10, armor = 0, type = "drug", stats = { effect = "heal", amount = 6, widepupils = false, canOD = false } },
		["bandage"] = { 		emote = "oxy", 		time = math.random(5000, 6000), stress = 0, heal = 10, armor = 0, type = "drug", stats = { effect = "heal", amount = 3, widepupils = false, canOD = false } }, },
		]]

		--Testing effects & armor with small functionality to drugs - This may be another one left to default scripts
		["joint"] = { 			emote = "smoke3",	time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { screen = "weed", effect = "armor", widepupils = false, canOD = false } },

		["cokebaggy"] = { 		emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { screen = "focus", effect = "stamina", widepupils = false, canOD = false } },
		--["crackbaggy"] = { 		emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { effect = "heal", widepupils = false, canOD = false } },
		["xtcbaggy"] = { 		emote = "oxy",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { effect = "strength", widepupils = true, canOD = false } },
		["oxy"] = { 			emote = "oxy",		time = 3000, stress = math.random(12, 24), heal = 0, armor = 0, type = "drug", stats = { effect = "heal", widepupils = false, canOD = false } },
		["meth"] = { 			emote = "coke",		time = math.random(5000, 6000), stress = math.random(12, 24), heal = 0, armor = 10, type = "drug", stats = { effect = "stamina", widepupils = false, canOD = false } },
		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
		["stresspill"] = { 			emote = "oxy",	canRun = true,	time = 3000, stress = 100, heal = 0, armor = 0, type = "drug", stats = { effect = "heal", widepupils = false, canOD = false } },
		
		
		----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

		--[[Example item
		["heartstopper"] = {
			emote = "burger", 							-- Select an emote from below, it has to be in here
			time = math.random(5000, 6000),				-- Amount of time it takes to consume the item
			stress = math.random(1,2),					-- Amount of stress relief, can be 0
			heal = 0, 									-- Set amount to heal by after consuming
			armor = 5,									-- Amount of armor to add
			type = "food",								-- Type: "alcohol" / "drink" / "food"

			stats = {
				screen = "thermal",						-- The screen effect to be played when after consuming the item "rampage" "turbo" "focus" "weed" "trevor" "nightvision" "thermal"
				effect = "heal", 						-- The status effect given by the item, "heal" / "stamina"
														-- This supports ps-buffs effects "armor" "stress" "swimming" "hacking" "intelligence" "luck" "strength"
				time = 10000,							-- How long the effect should last (if not added it will default to 10000)
				amount = 6,								-- How much the value is changed by per second
				hunger = math.random(10, 20),			-- The hunger/thirst stats of the item, if not found in the items.lua
				thirst = math.random(10, 20),			-- The hunger/thirst stats of the item, if not found in the items.lua
			},
			--Reward Items Variables
														-- These can be the only thing in a consumable table and the item will still work
			amounttogive = 3,							-- Used for "RewardItems", tells the script how many to give
			rewards = {
				[1] = {
					item = "plastic", 					-- prize item name
					max = 10,							-- max amount to give (this is put into math.random(1, max) )
					rarity = 1,							-- the rarity system, 1 being rarest, 4 being most common
				},
			},
		},]]

	},
	Emotes = {
		["mojito"] = {
			"amb@code_human_wander_drinking@female@base",
			"static",
			"Mojito",
			AnimationOptions = {
				Prop = 'prop_mojito',
				PropBone = 28422,
				PropPlacement = {
					0.0000,
					0.0000,
				   -0.0900,
					0.0000,
					0.0000,
				  130.0000
				},
				EmoteLoop = true,
				EmoteMoving = true
			}
		},
		["sipsoda"] = {
			"smo@milkshake_idle",
			"milkshake_idle_clip",
			"Sip Soda Cup - Junk",
			AnimationOptions = {
				Prop = 'rpemotesreborn_soda01',
				PropBone = 28422,
				PropPlacement = {
				   0.0470,
				   0.0040,
				  -0.0600,
				-88.0263,
				-25.0367,
				-27.3898
				},
				EmoteLoop = true,
				EmoteMoving = true
			}
		},
		["sipsodab"] = {
			"smo@milkshake_idle",
			"milkshake_idle_clip",
			"Sip Soda Cup - Sprunk",
			AnimationOptions = {
				Prop = 'rpemotesreborn_soda02',
				PropBone = 28422,
				PropPlacement = {
				   0.0470,
				   0.0040,
				  -0.0600,
				-88.0263,
				-25.0367,
				-27.3898
				},
				EmoteLoop = true,
				EmoteMoving = true
			}
		},
		["sipsodad"] = {
			"smo@milkshake_idle",
			"milkshake_idle_clip",
			"Sip Soda Cup - Orang-O-Tang",
			AnimationOptions = {
				Prop = 'rpemotesreborn_soda04',
				PropBone = 28422,
				PropPlacement = {
				   0.0470,
				   0.0040,
				  -0.0600,
				-88.0263,
				-25.0367,
				-27.3898
				},
				EmoteLoop = true,
				EmoteMoving = true
			}
		},
		["sipshakee"] = {
			"smo@milkshake_idle",
			"milkshake_idle_clip",
			"Sip Milkshake - Double Chocolate",
			AnimationOptions = {
				Prop = 'brum_cherryshake_doublechocolate',
				PropBone = 28422,
				PropPlacement = {
				   0.0850,
				   0.0670,
				  -0.0350,
				-115.0862,
				-165.7841,
				  24.1318
				},
				EmoteLoop = true,
				EmoteMoving = true
			}
	   },
		["desert"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Eat dessert",
        AnimationOptions = {
            Prop = 'bzzz_food_dessert_a',
            PropBone = 18905,
            PropPlacement = {
                0.15,
                0.03,
                0.03,
                -42.0,
                -36.0,
                0.0
            },
            EmoteMoving = true
        }
    	},
		["boba"] = {
			"amb@world_human_drinking@coffee@male@idle_a",
			"idle_c",
			"Boba",
			AnimationOptions = {
				Prop = 'scully_boba',
				PropBone = 28422,
				PropPlacement = {
					0.0,
					0.0,
					0.0,
					0.0,
					0.0,
					0.0
				},
				EmoteLoop = true,
				EmoteMoving = true
			}
		},
		["boba2"] = {
			"amb@world_human_drinking@coffee@male@idle_a",
			"idle_c",
			"Boba 2",
			AnimationOptions = {
				Prop = 'scully_boba2',
				PropBone = 28422,
				PropPlacement = {
					0.0,
					0.0,
					0.0,
					0.0,
					0.0,
					0.0
				},
				EmoteLoop = true,
				EmoteMoving = true
			}
		},
		["macaroon"] = { -- Custom Prop by BzZz
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Macaroon",
        AnimationOptions = {
            Prop = 'bzzz_food_xmas_macaroon_a',
            PropBone = 18905,
            PropPlacement = {
                0.15,
                0.07,
                0.00,
                38.0,
                7.0,
                7.0
            },
            EmoteMoving = true
        }
    },
		["xmascc2"] = { -- Custom Prop by PataMods
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Cupcake 2",
        AnimationOptions = {
            Prop = 'pata_christmasfood8',
            PropBone = 60309,
            PropPlacement = {
                0.0200,
                0.0,
               -0.0100,
                9.3608,
              -90.1809,
               66.3689
            },
            EmoteMoving = true
        }
    },
		["xmassf"] = { -- Custom Prop by PataMods
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Snowflake Cookie",
        AnimationOptions = {
            Prop = 'pata_christmasfood2',
            PropBone = 60309,
            PropPlacement = {
                0.0200,
                -0.0500,
                0.0200,
                0.0,
                0.0,
                0.0
            },
            EmoteMoving = true
        }
    },
		["sipshakel"] = {
			"smo@milkshake_idle",
			"milkshake_idle_clip",
			"Sip Milkshake - Vanilla",
			AnimationOptions = {
				Prop = 'brum_cherryshake_vanilla',
				PropBone = 28422,
				PropPlacement = {
				   0.0850,
				   0.0670,
				  -0.0350,
				-115.0862,
				-165.7841,
				  24.1318
				},
				EmoteLoop = true,
				EmoteMoving = true
			}
		},
	["icecreamd"] = {
			"mp_player_inteat@burger",
			"mp_player_int_eat_burger",
			"Ice cream Pistachio",
			AnimationOptions = {
				Prop = 'bzzz_icecream_pistachio',
				PropBone = 18905,
				PropPlacement = {
					0.14,
					0.03,
					0.01,
					85.0,
					70.0,
					-203.0
				},
				EmoteMoving = true
			}
		},
    ["coffee"] = {
        "amb@world_human_drinking@coffee@male@idle_a",
        "idle_c",
        "Coffee",
        AnimationOptions = {
            Prop = 'p_amb_coffeecup_01',
            PropBone = 28422,
            PropPlacement = {
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0
            },
            EmoteLoop = true,
            EmoteMoving = true
        }
    },
	["xmascc"] = { -- Custom Prop by PataMods
        "mp_player_inteat@burger",
        "mp_player_int_eat_burger",
        "Xmas Cupcake",
        AnimationOptions = {
            Prop = 'pata_christmasfood6',
            PropBone = 60309,
            PropPlacement = {
                0.0100,
                0.0200,
               -0.0100,
               -170.1788,
                87.6716,
                30.0540
            },
            EmoteMoving = true
        }
    },
		["adjust"] = {
			"missmic4",
			"michael_tux_fidget",
			"Adjust",
			AnimationOptions = {
				EmoteMoving = true,
				EmoteDuration = 4000
			}
		},
	    ["cup"] = {
			"amb@world_human_drinking@coffee@male@idle_a",
			"idle_c",
			"Cup",
			AnimationOptions = {
				Prop = 'prop_plastic_cup_02',
				PropBone = 28422,
				PropPlacement = {
					0.0,
					0.0,
					0.0,
					0.0,
					0.0,
					0.0
				},
				EmoteLoop = true,
				EmoteMoving = true
			}
		},
	["bzzz_croissant"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat croissant", AnimationOptions =
   	{
      Prop = "bzzz_new_snacks_croissant_a",
      PropBone = 18905,
      PropPlacement = {0.14, 0.04, 0.03, -20.0, -30.0, 10.0},
      EmoteLoop = true,
      EmoteMoving = true,
   	}},
	["bzzz_donut_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat donut 1", AnimationOptions =
	{
		Prop = "bzzz_new_snacks_donut_a",
		PropBone = 18905,
		PropPlacement = {0.15, 0.06, 0.03, 30.0, 150.0, 10.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["bzzz_donut_b"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat donut 2", AnimationOptions =
	{
		Prop = "bzzz_new_snacks_donut_b",
		PropBone = 18905,
		PropPlacement = {0.15, 0.06, 0.03, 30.0, 150.0, 10.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["bzzz_peanuts"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat peanuts", AnimationOptions =
	{
		Prop = "bzzz_new_snacks_peanuts_a",
		PropBone = 18905,
		PropPlacement = {0.15, 0.07, 0.0, 30.0, 150.0, 10.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["bzzz_pretzels"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat pretzels", AnimationOptions =
	{
		Prop = "bzzz_new_snacks_pretzels_a",
		PropBone = 18905,
		PropPlacement = {0.16, 0.04, 0.03, -70.0, 140.0, 0.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}},   
	["bzzz_pepsiloca_a"] = {"mp_player_intdrink", "loop_bottle", "Drink Pepsiloca", AnimationOptions =
	{
		Prop = "bzzz_new_snacks_pepsiloca_a",
		PropBone = 18905,
		PropPlacement = {0.12, 0.03, 0.03, -60.0, 100.0, -20.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}}, 
	["bzzz_pepsiloca_b"] = {"mp_player_intdrink", "loop_bottle", "Drink Pepsiloca light", AnimationOptions =
	{
		Prop = "bzzz_new_snacks_pepsiloca_b",
		PropBone = 18905,
		PropPlacement = {0.12, 0.03, 0.03, -60.0, 100.0, -20.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}},  
	["bzzz_energy"] = {"mp_player_intdrink", "loop_bottle", "Drink Energy drink", AnimationOptions =
	{
		Prop = "bzzz_new_snacks_energy_a",
		PropBone = 18905,
		PropPlacement = {0.12, 0.0, 0.05, -60.0, 100.0, -20.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}}, 



		["bzzz_food_grill_zucchini_grill_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled zucchini", AnimationOptions =
		{
			Prop = "bzzz_food_grill_zucchini_grill_a",
			PropBone = 60309,
			PropPlacement = {0.05, 0.0, 0.0, 31.0, -33.0, 82.0},
			EmoteLoop = true,
			EmoteMoving = true,
		}},
	 
	 ["bzzz_food_grill_tofu_grill_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled tofu", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_tofu_grill_a",
		 PropBone = 60309,
		 PropPlacement = {0.05, 0.0, 0.0, 31.0, -33.0, 82.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_steak_grill_d"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Ossobuco", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_steak_grill_d",
		 PropBone = 60309,
		 PropPlacement = {0.03, -0.04, -0.02, 30.0, 0.0, -8.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_steak_grill_c"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "T-Bone Steak", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_steak_grill_c",
		 PropBone = 60309,
		 PropPlacement = {0.06, -0.04, -0.02, 24.0, 30.0, -62.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_steak_grill_b"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Tomahawk steak", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_steak_grill_b",
		 PropBone = 60309,
		 PropPlacement = {0.05, 0.0, 0.0, 31.0, -33.0, 82.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_steak_grill_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled steak", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_steak_grill_a",
		 PropBone = 60309,
		 PropPlacement = {0.05, 0.0, 0.0, 31.0, -33.0, 82.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_skewer_grill_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled meat", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_skewer_grill_a",
		 PropBone = 60309,
		 PropPlacement = {0.05, 0.0, 0.0, 31.0, -33.0, 82.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_sausage_grill_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled sausage", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_sausage_grill_a",
		 PropBone = 60309,
		 PropPlacement = {0.05, 0.0, 0.0, 31.0, -33.0, 82.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_salmon_grill_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled salmon", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_salmon_grill_a",
		 PropBone = 60309,
		 PropPlacement = {0.0, 0.0, -0.01, 10.0, -2.0, 82.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_ribs_grill_b"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled rib", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_ribs_grill_b",
		 PropBone = 60309,
		 PropPlacement = {0.01, -0.01, -0.01, -62.0, 5.0, 174.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_potato_grill_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled potato", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_potato_grill_a",
		 PropBone = 60309,
		 PropPlacement = {-0.03, 0.0, -0.01, 2.0, -15.0, 106.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_pineapple_grill_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled pineapple", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_pineapple_grill_a",
		 PropBone = 60309,
		 PropPlacement = {-0.03, 0.0, -0.01, 2.0, -15.0, 106.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_naan_grill_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled naan", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_naan_grill_a",
		 PropBone = 60309,
		 PropPlacement = {0.03, -0.06, -0.04, 32.0, 5.0, 25.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_mushrooms_grill_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled mushrooms", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_mushrooms_grill_a",
		 PropBone = 60309,
		 PropPlacement = {0.05, 0.0, 0.0, 31.0, -33.0, 82.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_halloumi_grill_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled halloumi", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_halloumi_grill_a",
		 PropBone = 60309,
		 PropPlacement = {-0.03, 0.0, 0.0, 22.0, -25.0, 85.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_fish_grill_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled fish", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_fish_grill_a",
		 PropBone = 60309,
		 PropPlacement = {0.06, 0.0, -0.01, -20.0, -16.0, -83.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_corn_grill_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled corn", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_corn_grill_a",
		 PropBone = 60309,
		 PropPlacement = {0.05, 0.0, 0.0, 31.0, -33.0, 82.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_chicken_grill_d"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled chicken steak", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_chicken_grill_d",
		 PropBone = 60309,
		 PropPlacement = {-0.01, 0.0, 0.0, -20.0, -16.0, -83.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_chicken_grill_c"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled chicken wing", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_chicken_grill_c",
		 PropBone = 60309,
		 PropPlacement = {-0.01, 0.0, 0.0, -20.0, -16.0, -83.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_chicken_grill_b"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled chicken thigh", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_chicken_grill_b",
		 PropBone = 60309,
		 PropPlacement = {-0.01, 0.0, 0.0, -20.0, -16.0, -83.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_camembert_grill_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled camembert", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_camembert_grill_a",
		 PropBone = 60309,
		 PropPlacement = {-0.01, 0.0, 0.0, -20.0, -16.0, -83.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_burger_grill_d"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled burger", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_burger_grill_d",
		 PropBone = 60309,
		 PropPlacement = {0.0, -0.02, -0.03, 0.0, 0.0, -50.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_baguette_grill_c"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled chicken baguette", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_baguette_grill_c",
		 PropBone = 60309,
		 PropPlacement = {0.07, 0.01, -0.02, 0.15, 0.0, -60.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 ["bzzz_food_grill_bacon_grill_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Grilled bacon", AnimationOptions =
	 {
		 Prop = "bzzz_food_grill_bacon_grill_a",
		 PropBone = 60309,
		 PropPlacement = {0.02, -0.01, -0.01, 0.0, 0.0, 80.0},
		 EmoteLoop = true,
		 EmoteMoving = true,
	 }},
	 
	 

	-- ANIMATION 1
	["bz_fries_a"] = {"bzzz_fastfood_anim1", "anim1", "Eat small fries", AnimationOptions =
	{
		Prop = 'bzzz_prop_fastfood_fries_a',
		PropBone = 18905,
		PropPlacement = {0.14, 0.04, 0.04, -77.0, 73.0, 0.0},
		SecondProp = 'bzzz_prop_fastfood_fries_c',
		SecondPropBone = 57005,
		SecondPropPlacement = {0.13, 0.03, -0.03, -40.0, -41.0, 7.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["bz_fries_b"] = {"bzzz_fastfood_anim1", "anim1", "Eat medium fries", AnimationOptions =
	{
		Prop = 'bzzz_prop_fastfood_fries_b',
		PropBone = 18905,
		PropPlacement = {0.14, 0.04, 0.04, -77.0, 73.0, 0.0},
		SecondProp = 'bzzz_prop_fastfood_fries_c',
		SecondPropBone = 57005,
		SecondPropPlacement = {0.13, 0.03, -0.03, -40.0, -41.0, 7.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}},

	-- ANIMATION 2   
	["bz_fries_c"] = {"bzzz_fastfood_anim2", "anim2", "Eat big fries", AnimationOptions =
	{
		Prop = 'bzzz_prop_fastfood_fries_d',
		PropBone = 18905,
		PropPlacement = {0.12, 0.04, 0.08, -34.0, 11.0, 7.0},
		SecondProp = 'bzzz_prop_fastfood_fries_c',
		SecondPropBone = 57005,
		SecondPropPlacement = {0.13, 0.03, -0.03, -40.0, -41.0, 7.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["bz_vegesalad"] = {"bzzz_fastfood_anim2", "anim2", "Eat vegetarian salad", AnimationOptions =
	{
		Prop = 'bzzz_prop_fastfood_vegesalad_a',
		PropBone = 18905,
		PropPlacement = {0.12, 0.0, 0.07, -55.0, -35.0, -47.0},
		SecondProp = 'bzzz_prop_fastfood_vegesalad_b',
		SecondPropBone = 57005,
		SecondPropPlacement = {0.13, 0.04, -0.03, 78.0, 150.0, 186.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["bz_noodle"] = {"bzzz_fastfood_anim2", "anim2", "Eat Chinese noodles", AnimationOptions =
	{
		Prop = 'bzzz_prop_fastfood_noodle_a',
		PropBone = 18905,
		PropPlacement = {0.1, 0.03, 0.07, 35.0, 15.0, 223.0},
		SecondProp = 'bzzz_prop_fastfood_noodle_b',
		SecondPropBone = 57005,
		SecondPropPlacement = {0.1, 0.06, 0.0, 78.0, 150.0, 186.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["bz_rings"] = {"bzzz_fastfood_anim2", "anim2", "Eat Onion rings", AnimationOptions =
	{
		Prop = 'bzzz_prop_fastfood_onion_b',
		PropBone = 18905,
		PropPlacement = {0.1, 0.01, 0.04, 20.0, 10.0, 186.0},
		SecondProp = 'bzzz_prop_fastfood_onion_a',
		SecondPropBone = 57005,
		SecondPropPlacement = {0.14, 0.06, -0.04, 143.0, 157.0, 186.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["bz_chickenbox_a"] = {"bzzz_fastfood_anim2", "anim2", "Eat Chicken legs", AnimationOptions =
	{
		Prop = 'bzzz_prop_fastfood_chicken_d',
		PropBone = 18905,
		PropPlacement = {0.1, 0.01, 0.04, 20.0, 10.0, 186.0},
		SecondProp = 'bzzz_prop_fastfood_chicken_a',
		SecondPropBone = 57005,
		SecondPropPlacement = {0.14, 0.06, -0.04, 303.0, 131.0, 186.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["bz_chickenbox_b"] = {"bzzz_fastfood_anim2", "anim2", "Eat Chicken strips", AnimationOptions =
	{
		Prop = 'bzzz_prop_fastfood_chicken_e',
		PropBone = 18905,
		PropPlacement = {0.1, 0.01, 0.04, 20.0, 10.0, 186.0},
		SecondProp = 'bzzz_prop_fastfood_chicken_b',
		SecondPropBone = 57005,
		SecondPropPlacement = {0.14, 0.06, -0.04, 303.0, 131.0, 186.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["bz_chickenbox_c"] = {"bzzz_fastfood_anim2", "anim2", "Eat Chicken bites", AnimationOptions =
	{
		Prop = 'bzzz_prop_fastfood_chicken_f',
		PropBone = 18905,
		PropPlacement = {0.1, 0.01, 0.04, 20.0, 10.0, 186.0},
		SecondProp = 'bzzz_prop_fastfood_chicken_c',
		SecondPropBone = 57005,
		SecondPropPlacement = {0.14, 0.06, -0.04, 303.0, 131.0, 186.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}},
	["bz_nuggetbox"] = {"bzzz_fastfood_anim2", "anim2", "Eat Chicken nuggets", AnimationOptions =
	{
		Prop = 'bzzz_prop_fastfood_nugget_b',
		PropBone = 18905,
		PropPlacement = {0.1, 0.01, 0.04, 20.0, 10.0, 186.0},
		SecondProp = 'bzzz_prop_fastfood_nugget_a',
		SecondPropBone = 57005,
		SecondPropPlacement = {0.14, 0.06, -0.04, 303.0, 159.0, 186.0},
		EmoteLoop = true,
		EmoteMoving = true,
	}},

		["bzzz_carbonara"] = {"bzzz_bowl_eat", "bowl_eat", "Eat chicken carbonara", AnimationOptions =
		{
			Prop = 'bzzz_bowlfood_chicken_carbonara_a',
			PropBone = 60309,
			PropPlacement = {0.07, 0.03, 0.07, -30.0, 0.0, 0.0},
			SecondProp = 'bzzz_bowlfood_chicken_carbonara_b',
			SecondPropBone = 28422,
			SecondPropPlacement = {0.04, 0.05, 0.0, -90.0, -27.0, -27.0},
			EmoteLoop = true,
			EmoteMoving = true,
		}},    
		 ["bzzz_primavera"] = {"bzzz_bowl_eat", "bowl_eat", "Eat pasta primavera", AnimationOptions =
		{
			Prop = 'bzzz_bowlfood_primavera_pasta_a',
			PropBone = 60309,
			PropPlacement = {0.07, 0.03, 0.07, -30.0, 0.0, 0.0},
			SecondProp = 'bzzz_bowlfood_primavera_pasta_b',
			SecondPropBone = 28422,
			SecondPropPlacement = {0.04, 0.05, 0.0, -90.0, -27.0, -27.0},
			EmoteLoop = true,
			EmoteMoving = true,
		}},   
		 ["bzzz_sausage"] = {"bzzz_bowl_eat", "bowl_eat", "Eat pasta sausage", AnimationOptions =
		{
			Prop = 'bzzz_bowlfood_sausage_pasta_a',
			PropBone = 60309,
			PropPlacement = {0.07, 0.03, 0.07, -30.0, 0.0, 0.0},
			SecondProp = 'bzzz_bowlfood_sausage_pasta_b',
			SecondPropBone = 28422,
			SecondPropPlacement = {0.04, 0.05, 0.0, -90.0, -27.0, -27.0},
			EmoteLoop = true,
			EmoteMoving = true,
		}},   
		 ["bzzz_borscht"] = {"bzzz_bowl_eat", "bowl_eat", "Eat borscht", AnimationOptions =
		{
			Prop = 'bzzz_bowlfood_soup_borscht_a',
			PropBone = 60309,
			PropPlacement = {0.07, 0.01, 0.05, -40.0, -7.0, -27.0},
			SecondProp = 'bzzz_bowlfood_soup_borscht_b',
			SecondPropBone = 28422,
			SecondPropPlacement = {0.08, 0.03, -0.02, -60.0, 93.0, 43.0},
			EmoteLoop = true,
			EmoteMoving = true,
		}},   
		 ["bzzz_miso"] = {"bzzz_bowl_eat", "bowl_eat", "Eat miso soup", AnimationOptions =
		{
			Prop = 'bzzz_bowlfood_soup_miso_a',
			PropBone = 60309,
			PropPlacement = {0.07, 0.01, 0.05, -40.0, -7.0, -27.0},
			SecondProp = 'bzzz_bowlfood_soup_miso_b',
			SecondPropBone = 28422,
			SecondPropPlacement = {0.08, 0.03, -0.02, -60.0, 93.0, 43.0},
			EmoteLoop = true,
			EmoteMoving = true,
		}},    
		 ["bzzz_pho"] = {"bzzz_bowl_eat", "bowl_eat", "Eat pho soup", AnimationOptions =
		{
			Prop = 'bzzz_bowlfood_soup_pho_a',
			PropBone = 60309,
			PropPlacement = {0.07, 0.01, 0.05, -40.0, -7.0, -27.0},
			SecondProp = 'bzzz_bowlfood_soup_pho_b',
			SecondPropBone = 28422,
			SecondPropPlacement = {0.08, 0.03, -0.02, -60.0, 93.0, 43.0},
			EmoteLoop = true,
			EmoteMoving = true,
		}}, 
		
	







	   -- one-handed eating
	   ["bz_burger"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat Cheeseburger", AnimationOptions =
	   {
		   Prop = "bzzz_prop_fastfood_cheeseburger_a",
		   PropBone = 18905,
		   PropPlacement = {0.16, 0.06, 0.03, 24.0, -210.0, -28.0},
		   EmoteLoop = true,
		   EmoteMoving = true,
	   }},
		["bz_bigburger"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat Bigburger", AnimationOptions =
	   {
		   Prop = "bzzz_prop_fastfood_bigburger_a",
		   PropBone = 18905,
		   PropPlacement = {0.16, 0.06, 0.03, 24.0, -210.0, -28.0},
		   EmoteLoop = true,
		   EmoteMoving = true,
	   }},
		   ["bz_chicken_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat Chicken leg", AnimationOptions =
	   {
		   Prop = "bzzz_prop_fastfood_chicken_a",
		   PropBone = 18905,
		   PropPlacement = {0.15, 0.07, 0.0, 38.0, -68.0, 188.0},
		   EmoteLoop = true,
		   EmoteMoving = true,
	   }},
		   ["bz_chicken_b"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat Chicken strips", AnimationOptions =
	   {
		   Prop = "bzzz_prop_fastfood_chicken_b",
		   PropBone = 18905,
		   PropPlacement = {0.15, 0.07, 0.0, 38.0, -68.0, 188.0},
		   EmoteLoop = true,
		   EmoteMoving = true,
	   }},
		["bz_icecream_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat Chocolate-vanilla ice cream", AnimationOptions =
	   {
		   Prop = "bzzz_prop_fastfood_icecream_a",
		   PropBone = 18905,
		   PropPlacement = {0.14, 0.06, 0.01, 122.0, -68.0, 188.0},
		   EmoteLoop = true,
		   EmoteMoving = true,
	   }},
		   ["bz_icecream_b"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat Raspberry-moon ice cream", AnimationOptions =
	   {
		   Prop = "bzzz_prop_fastfood_icecream_b",
		   PropBone = 18905,
		   PropPlacement = {0.14, 0.06, 0.01, 122.0, -68.0, 188.0},
		   EmoteLoop = true,
		   EmoteMoving = true,
	   }},
		   ["bz_nugget_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat chicken nugget", AnimationOptions =
	   {
		   Prop = "bzzz_prop_fastfood_nugget_a",
		   PropBone = 18905,
		   PropPlacement = {0.15, 0.06, -0.01, 192.0, -40.0, 135.0},
		   EmoteLoop = true,
		   EmoteMoving = true,
	   }},
		   ["bz_onion_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat onion ring", AnimationOptions =
	   {
		   Prop = "bzzz_prop_fastfood_onion_a",
		   PropBone = 18905,
		   PropPlacement = {0.16, 0.06, 0.01, 192.0, -40.0, 135.0},
		   EmoteLoop = true,
		   EmoteMoving = true,
	   }},
	   
	  
	  
	  -- DRINK
	  ["bz_drink_a"] = {"mp_player_intdrink", "loop_bottle", "Drink a big cup", AnimationOptions =
	  {
	   Prop = "bzzz_prop_fastfood_drink_a",
	   PropBone = 18905,
	   PropPlacement = {0.07, -0.04, 0.08, 139.0, 302.0, 183.0},
	   EmoteLoop = true,
	   EmoteMoving = false,
	  }},   
	  ["bz_drink_b"] = {"mp_player_intdrink", "loop_bottle", "Drink a small cup", AnimationOptions =
	  {
	   Prop = "bzzz_prop_fastfood_drink_b",
	   PropBone = 18905,
	   PropPlacement = {0.08, -0.02, 0.07, 139.0, 302.0, 183.0},
	   EmoteLoop = true,
	   EmoteMoving = false,
	  }}, 
		
		



		["drink"] = {"mp_player_intdrink", "loop_bottle", "Drink", AnimationOptions =
			{ Prop = "prop_ld_flow_bottle", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["coffee"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Coffee", AnimationOptions =
			{ Prop = 'p_amb_coffeecup_01', PropBone = 28422, PropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
				EmoteLoop = true, EmoteMoving = true }},
		["burger"] = { "mp_player_inteat@burger", "mp_player_int_eat_burger", "Burger",	AnimationOptions =
			{ Prop = 'prop_cs_burger_01', PropBone = 18905, PropPlacement = {0.13,0.05,0.02,-50.0,16.0,60.0},
				EmoteMoving = true }},
		["beer"] = {"amb@world_human_drinking@beer@male@idle_a", "idle_c", "Beer", AnimationOptions =
			{ Prop = 'prop_amb_beer_bottle', PropBone = 28422, PropPlacement = {0.0,0.0,0.06,0.0,15.0,0.0},
				EmoteLoop = true, EmoteMoving = true }},
		["egobar"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger","Ego Bar", AnimationOptions =
			{ Prop = 'prop_choc_ego', PropBone = 60309, PropPlacement ={0.0,0.0,0.0,0.0,0.0,0.0},
				EmoteMoving = true }},
		["sandwich"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Sandwich", AnimationOptions =
			{ Prop = 'prop_sandwich_01', PropBone = 18905, PropPlacement = {0.13,0.05,0.02,-50.0,16.0,60.0},
				EmoteMoving = true }},
		["smoke3"] = { "amb@world_human_aa_smoke@male@idle_a", "idle_b", "Smoke 3", AnimationOptions =
			{ Prop = 'prop_cs_ciggy_01', PropBone = 28422, PropPlacement = {0.0,0.0,0.0,0.0,0.0,0.0},
				EmoteLoop = true, EmoteMoving = true }},
		["whiskey"] = { "amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Whiskey", AnimationOptions =
			{ Prop = 'prop_drink_whisky', PropBone = 28422, PropPlacement = {0.01,-0.01,-0.06,0.0,0.0,0.0},
				EmoteLoop = true, EmoteMoving = true } },
		["vodkab"] = {"mp_player_intdrink", "loop_bottle", "(Don't Use) Vodka Bottle", AnimationOptions =
			{ Prop = 'prop_vodka_bottle', PropBone = 18905, PropPlacement = {0.00, -0.26, 0.10, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true }},
		["ecola"] = {"mp_player_intdrink", "loop_bottle", "E-cola", AnimationOptions =
			{ Prop = "prop_ecola_can", PropBone = 18905, PropPlacement = {0.12, 0.008, 0.03, 240.0, -60.0},
				EmoteMoving = true, EmoteLoop = true, }},
		["crisps"] = {"amb@world_human_drinking@coffee@male@idle_a", "idle_c", "Chrisps", AnimationOptions =
			{ Prop = 'v_ret_ml_chips2', PropBone = 28422, PropPlacement = {0.01, -0.05, -0.1, 0.0, 0.0, 90.0},
				EmoteLoop = true, EmoteMoving = true, }},		
		--Drugs
		["coke"] = { "switch@trevor@trev_smoking_meth", "trev_smoking_meth_loop", "Coke", AnimationOptions =
			{ EmoteLoop = true, EmoteMoving = true, }},
		["oxy"] = { "mp_suicide", "pill", "Oxy", AnimationOptions =
			{ EmoteLoop = true, EmoteMoving = true, }},
				["cigar"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigar", AnimationOptions =
			{ Prop = 'prop_cigar_02', PropBone = 47419, PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["cigar2"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cigar 2", AnimationOptions =
			{ Prop = 'prop_cigar_01', PropBone = 47419, PropPlacement = {0.010, 0.0, 0.0, 50.0, 0.0, -80.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["joint"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Joint", AnimationOptions =
			{ Prop = 'p_cs_joint_02', PropBone = 47419, PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
				EmoteMoving = true, EmoteDuration = 2600 }},
		["cig"] = {"amb@world_human_smoking@male@male_a@enter", "enter", "Cig", AnimationOptions =
			{ Prop = 'prop_amb_ciggy_01', PropBone = 47419, PropPlacement = {0.015, -0.009, 0.003, 55.0, 0.0, 110.0},
			EmoteMoving = true, EmoteDuration = 2600 }},
	},
}
