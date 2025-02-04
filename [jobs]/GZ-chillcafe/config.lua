Config = {}

Config.NewCore = true

Config.GaragePed = "s_m_y_xmech_01"

Config.PedLocation = vec4(0, 0, 0, 0)

Config.VehicleSpawn = vector4(0, 0, 0, 0)

Config.Vehicle = 'nspeedo'

HungerFill = { -- How much they fill your hunger
    ["gingerkitty_cookie"] = math.random(35, 45),
    ["kira_kira_currye"] = math.random(35, 45),
    ["om_nom_omurice"] = math.random(35, 45),
    ["dragos_fire_cupcake"] = math.random(35, 45),
    ["ballbarry_cupcake"] = math.random(35, 45),
    ["purrfect_parfait"] = math.random(35, 45),
    ["oxygen_cake"] = math.random(35, 45),
    ["meowchi_mochi_ice_cream"] = math.random(35, 45),
    ["strawberry_shortcake"] = math.random(35, 45),
    ["awwdorable_valentines_chocolate"] = math.random(35, 45),
    ["warm_chicken_noodle"] = math.random(35, 45),
    ["rice_balls"] = math.random(35, 45),
    ["doki_doki_pancakes"] = math.random(35, 45),
    ["hamburg_stake"] = math.random(35, 45),
    ["sugoi_katsu_sando"] = math.random(35, 45),
    ["cat_macaroon_pink"] = math.random(35, 45),
    ["cat_macaroon_green"] = math.random(35, 45),
    ["cat_macaroon_turquoise"] = math.random(35, 45),
    ["cat_macaroon_brown"] = math.random(35, 45),
}

ThirstFill = { -- How much they fill your thirst.
    ["sweet_herbal_tea"] = math.random(25, 35),
    ["booba_milk_tea_2"] = math.random(25, 35),
    ["lovely_hot_chocolate"] = math.random(25, 35),
    ["hot_chocolate"] = math.random(25, 35),
    ["matcha_coffee"] = math.random(25, 35),
}

Config.Zones = {
    [1] = { coords = vector3(179.83, -235.34, 54.05), radius = 0.35, icon = "fa-solid fa-hand-holding", event = "GZ-chillcafe:client:tray1", label = "Tray", },--
    [2] = { coords = vector3(184.25, -238.25, 54.05), radius = 0.8, icon = "fa-solid fa-hand-holding", event = "GZ-chillcafe:client:tray2", label = "Tray", },--
    [3] = { coords = vector3(183.12, -232.04, 54.05), radius = 0.8, icon = "fa-solid fa-hand-holding", event = "GZ-chillcafe:client:tray3", label = "Tray", },---
    [4] = { coords = vector3(180.22, -239.24, 54.05), radius = 0.5, icon = "fa-solid fa-warehouse", event = "GZ-chillcafe:client:stash1", label = "Stash", job = "chillcafe" }, --
    --[5] = { coords = vector3(-587.79, -1060.18, 21.81), radius = 0.5, icon = "fa-solid fa-warehouse", event = "GZ-chillcafe:client:stash2", label = "Stash", job = "chillcafe" }, 
    --[6] = { coords = vector3(-587.41, -1059.71, 22.53), radius = 0.7, icon = "fa-solid fa-warehouse", event = "GZ-chillcafe:client:stash3", label = "Stash", job = "chillcafe" }, 
    --[7] = { coords = vector3(-585.25, -1055.29, 22.34), radius = 0.78, icon = "fa-solid fa-warehouse", event = "GZ-chillcafe:client:stash4", label = "Stash", job = "chillcafe" }, 
    --[8] = { coords = vector3(-588.02, -1066.11, 22.34), radius = 0.8, icon = "fa-solid fa-warehouse", event = "GZ-chillcafe:client:stash5", label = "Stash", job = "chillcafe" }, 
    --[9] = { coords = vector3(-588.03, -1067.97, 22.34), radius = 0.8, icon = "fa-solid fa-warehouse", event = "GZ-chillcafe:client:stash6", label = "Stash", job = "chillcafe" }, 
    --[10] = { coords = vector3(-590.6, -1068.04, 22.34), radius = 0.8, icon = "fa-solid fa-warehouse", event = "GZ-chillcafe:client:stash7", label = "Stash", job = "chillcafe" }, 
    --[11] = { coords = vector3(-598.38, -1062.47, 22.99), radius = 1.55, icon = "fa-solid fa-warehouse", event = "GZ-chillcafe:client:stash8", label = "Stash", job = "chillcafe" }, 
    --[12] = { coords = vector3(-597.69, -1065.61, 22.99), radius = 1.55, icon = "fa-solid fa-warehouse", event = "GZ-chillcafe:client:stash9", label = "Stash", job = "chillcafe" }, 
    --[13] = { coords = vector3(-598.06, -1068.31, 22.99), radius = 1.55, icon = "fa-solid fa-warehouse", event = "GZ-chillcafe:client:stash10", label = "Stash", job = "chillcafe" }, 
    [14] = { coords = vector3(180.14, -237.95, 54.05), radius = 0.7, icon = "fa-solid fa-ice-cream", event = "GZ-chillcafe:client:refregiator", label = "Refregiator", job = "chillcafe" },-- 
    --[15] = { coords = vector3(-591.03, -1063.05, 22.36), radius = 0.5, icon = "fa-solid fa-muh-hot", event = "GZ-chillcafe:client:makeSides", label = "Sides", job = "chillcafe" },
    [17] = { coords = vector3(180.88, -238.2, 54.05), radius = 0.36, icon = "fa-solid fa-mug-hot", event = "GZ-chillcafe:client:makeDeserts", label = "Deserts", job = "chillcafe" },--
    [18] = { coords = vector3(181.53, -238.7, 54.05), radius = 0.36, icon = "fa-solid fa-fire-burner", event = "GZ-chillcafe:client:useOven", label = "Oven", job = "chillcafe" },--
    [19] = { coords = vector3(179.04, -237.72, 54.05), radius = 0.45, icon = "fa-solid fa-sink", event = "GZ-chillcafe:client:useSink", label = "Sink", job = "chillcafe" },---
    --[20] = { coords = vector3(-591.07, -1056.52, 22.38), radius = 0.44, icon = "fa-solid fa-bowl-food", event = "GZ-chillcafe:client:makeFood", label = "Food", job = "chillcafe" },
    [21] = { coords = vector3(177.26, -237.11, 54.05), radius = 0.5, icon = "fa-solid fa-mug-hot", event = "GZ-chillcafe:client:makeTea", label = "Tea", job = "chillcafe" },--
    [22] = { coords = vector3(177.87, -237.3, 54.05), radius = 0.4, icon = "fa-solid fa-mug-saucer", event = "GZ-chillcafe:client:makeCoffee", label = "Coffee Machine", job = "chillcafe" },--
    [23] = { coords = vector3(179.1, -242.01, 54.05), radius = 0.7, icon = "fa-solid fa-building", event = "qb-bossmenu:client:OpenMenu", label = "Boss Menu", job = {['chillcafe'] = 4} },--
    [24] = { coords = vector3(175.06, -241.43, 54.05), radius = 0.8, icon = "fa-solid fa-basket-shopping", event = "GZ-chillcafe:client:openShop", label = "Chill Shop", job = "chillcafe" },--
    [25] = { coords = vector3(-589.35, -1068.52, 21.84), radius = 0.7, icon = "fa-solid fa-boxes-stacked", event = "GZ-chillcafe:client:grabIce", label = "Ice Machine", job = "chillcafe" },
    [26] = { coords = vector3(176.84, -234.42, 54.05), radius = 0.6, icon = "fa-solid fa-martini-glass-citrus", event = "GZ-chillcafe:clientToggleDuty", label = "Toggle Duty", job = "chillcafe" },--
    -- [27] = { coords = vector3(177.51, -234.68, 54.05), radius = 0.25, icon = "fa-solid fa-cash-register", event = "GZ-chillcafe:bill", label = "Cash Register", job = "chillcafe" },--
    -- [28] = { coords = vector3(178.4, -235.02, 54.05), radius = 0.25, icon = "fa-solid fa-cash-register", event = "GZ-chillcafe:bill", label = "Cash Register", job = "chillcafe" },--
}

Config.Items = {
label = "Chill Cafe Shop",
    slots = 37,
    items = {
        [1] = {
            name = "glass_tall_dirty",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "butter",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "cup_dirty",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "cocoa_powder",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "dried_boba_tapioca_pearls",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "egg",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "flour",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "chicken",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 8,
        },
        [9] = {
            name = "chicken_breast",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 9,
        },
        [10] = {
            name = "chicken_thighs",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 10,
        },
        [11] = {
            name = "jelly_beans",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 11,
        },
        [12] = {
            name = "juice",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 12,
        },
        [13] = {
            name = "lemon",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 13,
        },
        [14] = {
            name = "matcha_powder",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 14,
        },
        [15] = {
            name = "milk",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 15,
        },
        [16] = {
            name = "nuts",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 16,
        },
        [17] = {
            name = "onion",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 17,
        },
        [18] = {
            name = "pullman_bread",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 18,
        },
        [19] = {
            name = "rice_flour",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 19,
        },
        [20] = {
            name = "rice",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 20,
        },
        [21] = {
            name = "sea_moss",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 21,
        },
        [22] = {
            name = "soy_sauce",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 22,
        },
        [23] = {
            name = "strawberry",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 23,
        },
        [24] = {
            name = "sugar",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 24,
        },
        [25] = {
            name = "ice",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 25,
        },
        [26] = {
            name = "baking_powder",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 26,
        },
        [27] = {
            name = "virgin_olive_oil",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 27,
        },
        [28] = {
            name = "noodles",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 28,
        },
        [29] = {
            name = "mint",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 29,
        },
        [30] = {
            name = "brewed_coffee",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 30,
        },
        [31] = {
            name = "steak",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 31,
        },
        [32] = {
            name = "brown_dye",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 32,
        },
        [33] = {
            name = "pink_dye",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 33,
        },
        [34] = {
            name = "green_dye",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 34,
        },
        [35] = {
            name = "turquoise_dye",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 35,
        },
        [36] = {
            name = "plate_dirty",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 36,
        },
        [37] = {
            name = "bar_bowl_dirty",
            price = 50,
            amount = 20,
            info = {},
            type = "item",
            slot = 37,
        },
    }
}
