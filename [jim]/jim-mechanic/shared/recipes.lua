Crafting = {
	Tools = {
		{ ["mechanic_tools"] = { ["iron"] = 1, } },
		{ ["toolbox"] = { ["iron"] = 1, } },
		{ ["ducttape"] = { ["plastic"] = 1, } },
		{ ["paintcan"] = { ["aluminum"] = 1, } },
		{ ["tint_supplies"] = { ["iron"] = 1, } },
		{ ["underglow_controller"] = { ["iron"] = 1, } },
		{ ["cleaningkit"] = { ["rubber"] = 1, } },
		{ ["newoil"] = { ["plastic"] = 1, } },
		{ ["sparkplugs"] = { ["metalscrap"] = 1, } },
		{ ["carbattery"] = { ["metalscrap"] = 1, ["plastic"] = 1 } },
		{ ["axleparts"] = { ["steel"] = 1, } },
		{ ["sparetire"] = { ["rubber"] = 1, } },

				-- Example : Delete me --
		-- Support for multiple items in recipes --
		-- Support for multiple resulting items --
		-- Support to limit items to certain job roles --
		{ ["cleaningkit"] = { ["rubber"] = 5, ["engine2"] = 1, ["plastic"] = 2 },
				["amount"] = 2, ["job"] = { ["mechanic"] = 4, ["tuner"] = 4, } },
				-- Example : Delete me --

	},
	Perform = {
		{ ["turbo"] = { ["steel"] = 80, } },
		{ ["car_armor"] = { ["plastic"] = 200, } },
		{ ["engine1"] = { ["steel"] = 150, } },
		{ ["engine2"] = { ["steel"] = 160, } },
		{ ["engine3"] = { ["steel"] = 170, } },
		{ ["engine4"] = { ["steel"] = 180, } },
		{ ["engine5"] = { ["steel"] = 200, } },
		{ ["transmission1"] = { ["steel"] = 50, } },
		{ ["transmission2"] = { ["steel"] = 60, } },
		{ ["transmission3"] = { ["steel"] = 70, } },
		{ ["transmission4"] = { ["steel"] = 90, } },
		{ ["brakes1"] = { ["steel"] = 20, } },
		{ ["brakes2"] = { ["steel"] = 25, } },
		{ ["brakes3"] = { ["steel"] = 35, } },
		{ ["suspension1"] = { ["steel"] = 10, } },
		{ ["suspension2"] = { ["steel"] = 15, } },
		{ ["suspension3"] = { ["steel"] = 20, } },
		{ ["suspension4"] = { ["steel"] = 25, } },
		{ ["suspension5"] = { ["steel"] = 30, } },
		{ ["bprooftires"] = { ["rubber"] = 100000000, } },
		{ ["drifttires"] = { ["rubber"] = 100, } },
		--{ ["nos"] = { ["noscan"] = 1, } },
		--{ ["noscan"] = { ["steel"] = 1, } },
	},
	Cosmetic = {
		{ ["hood"] = { ["plastic"] = 1, } },
		{ ["roof"] = { ["plastic"] = 1, } },
		{ ["spoiler"] = { ["plastic"] = 1, } },
		{ ["bumper"] = { ["plastic"] = 1, } },
		{ ["skirts"] = { ["plastic"] = 1, } },
		{ ["exhaust"] = { ["iron"] = 1, } },
		{ ["seat"] = { ["plastic"] = 1, } },
		{ ["livery"] = { ["plastic"] = 1 }, },
		{ ["tires"] = { ["rubber"] = 1, } },
		{ ["horn"] = { ["plastic"] = 1, } },
		{ ["internals"] = { ["plastic"] = 1, } },
		{ ["externals"] = { ["plastic"] = 1, } },
		{ ["customplate"] = { ["steel"] = 1, } },
		{ ["headlights"] = { ["plastic"] = 1, } },
		{ ["rims"] = { ["iron"] = 1, } },
		{ ["rollcage"] = { ["steel"] = 1, } },
		{ ["noscolour"] = { ["plastic"] = 1, } },
	},
}

Stores = {
	ToolItems = {
		label = Loc[Config.Lan]["stores"].tools,
		items = {
			{ name = "mechanic_tools", price = 1000, amount = 10, info = {}, type = "item", },
			{ name = "toolbox", price = 1000, amount = 10, info = {}, type = "item", },
			{ name = "ducttape", price = 1000, amount = 100, info = {}, type = "item", },
			{ name = "paintcan", price = 1000, amount = 50, info = {}, type = "item", },
			{ name = "tint_supplies", price = 1000, amount = 50, info = {}, type = "item", },
			{ name = "underglow_controller", price = 0, amount = 50, info = {}, type = "item", },
			{ name = "cleaningkit", price = 1000, amount = 100, info = {}, type = "item", },
			{ name = "sparetire", price = 1000, amount = 100, info = {}, type = "item", },
			{ name = "axleparts", price = 1000, amount = 1000, info = {}, type = "item", },
			{ name = "carbattery", price = 1000, amount = 1000, info = {}, type = "item", },
			{ name = "sparkplugs", price = 1000, amount = 1000, info = {}, type = "item", },
			{ name = "newoil", price = 1000, amount = 1000, info = {}, type = "item", },
			{ name = "radio", price = 500, amount = 1, info = {}, type = "item", },
			{ name = "repairkit", price = 500, amount = 1, info = {}, type = "item", },
			{ name = "advancedrepairkit", price = 5000, amount = 1, info = {}, type = "item", },
		},
	},
	PerformItems = {
		label = Loc[Config.Lan]["stores"].perform,
		items = {
			{ name = "turbo", price = 20000, amount = 50, info = {}, type = "item", },
			{ name = "engine1", price = 12000, amount = 50, info = {}, type = "item", },
			{ name = "engine2", price = 13000, amount = 50, info = {}, type = "item", },
			{ name = "engine3", price = 14000, amount = 50, info = {}, type = "item", },
			{ name = "engine4", price = 15000, amount = 50, info = {}, type = "item", },
			{ name = "engine5", price = 16000, amount = 50, info = {}, type = "item", },
			{ name = "transmission1", price = 8000, amount = 50, info = {}, type = "item", },
			{ name = "transmission2", price = 9000, amount = 50, info = {}, type = "item", },
			{ name = "transmission3", price = 10000, amount = 50, info = {}, type = "item", },
			{ name = "transmission4", price = 11000, amount = 50, info = {}, type = "item", },
			{ name = "brakes1", price = 4000, amount = 50, info = {}, type = "item", },
			{ name = "brakes2", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "brakes3", price = 6000, amount = 50, info = {}, type = "item", },
			{ name = "car_armor", price = 18000, amount = 50, info = {}, type = "item", },
			{ name = "suspension1", price = 3000, amount = 50, info = {}, type = "item", },
			{ name = "suspension2", price = 4000, amount = 50, info = {}, type = "item", },
			{ name = "suspension3", price = 5000, amount = 50, info = {}, type = "item", },
			{ name = "suspension4", price = 8000, amount = 50, info = {}, type = "item", },
			{ name = "suspension5", price = 9000, amount = 50, info = {}, type = "item", },
			--{ name = "bprooftires", price = 0, amount = 50, info = {}, type = "item", },
			{ name = "drifttires", price = 1500, amount = 50, info = {}, type = "item", },
			--{ name = "nos", price = 0, amount = 50, info = {}, type = "item", },
		},
	},
	StoreItems = {
		label = Loc[Config.Lan]["stores"].cosmetic,
		items = {
			{ name = "hood", price = 800, amount = 50, info = {}, type = "item", },
			{ name = "roof", price = 800, amount = 50, info = {}, type = "item", },
			{ name = "spoiler", price = 800, amount = 50, info = {}, type = "item", },
			{ name = "bumper", price = 900, amount = 50, info = {}, type = "item", },
			{ name = "skirts", price = 900, amount = 50, info = {}, type = "item", },
			{ name = "exhaust", price = 800, amount = 50, info = {}, type = "item", },
			{ name = "seat", price = 600, amount = 50, info = {}, type = "item", },
			{ name = "livery", price = 1200, amount = 50, info = {}, type = "item", },
			{ name = "tires", price = 2000, amount = 50, info = {}, type = "item", },
			{ name = "horn", price = 100, amount = 50, info = {}, type = "item", },
			{ name = "internals", price = 1000, amount = 50, info = {}, type = "item", },
			{ name = "externals", price = 100, amount = 50, info = {}, type = "item", },
			{ name = "customplate", price = 1200, amount = 50, info = {}, type = "item", },
			{ name = "headlights", price = 650, amount = 50, info = {}, type = "item", },
			{ name = "rims", price = 2000, amount = 100, info = {}, type = "item", },
			{ name = "rollcage", price = 200, amount = 50, info = {}, type = "item", },
			--{ name = "noscolour", price = 0, amount = 50, info = {}, type = "item", },
		},
	},
}

-- No Touch
	-- This is corrective code to help simplify the stores for people removing the slot info
	-- Jim shops doesn"t use it but other inventories do
	-- Most people don"t even edit the slots, these lines generate the slot info autoamtically
Stores.StoreItems.slots = #Stores.StoreItems.items
for k in pairs(Stores.StoreItems.items) do Stores.StoreItems.items[k].slot = k end
Stores.PerformItems.slots = #Stores.PerformItems.items
for k in pairs(Stores.PerformItems.items) do Stores.PerformItems.items[k].slot = k end
Stores.ToolItems.slots = #Stores.ToolItems.items
for k in pairs(Stores.ToolItems.items) do Stores.ToolItems.items[k].slot = k end