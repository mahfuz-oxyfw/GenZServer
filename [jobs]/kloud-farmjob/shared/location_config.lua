KloudDev.Locations = {
    ["potato"] = {
        coords = vec4(2852.95, 4627.06, 50.69, 284.01),
        zoneType = "sphere",
        zoneRadius = 65,
        zoneSize = vec3(15, 15, 25), -- for box zone
        prop = "prop_plant_fern_02a",
        job = false, -- false to disable, "jobname" to enable
        action = {
            type = "skillCheck", -- "progress" / "skillCheck"
            progressDuration = 5000,
            skillCheckDifficulty = {"easy", "easy", "easy", "easy"}, -- "easy", "medium", "hard"
            skillCheckInputs = {"1", "2", "3", "4"}
        },
        max = 25,
        target = {
            label = "Uproot",
            icon = "fas fa-trowel"
        },
        anim = {
            scenario = "WORLD_HUMAN_GARDENER_PLANT",
            dict = nil,
            clip = nil,
            upperBody = false
        },
        item = {
            require = {
                enable = true,
                item = "trowel",
                durability = {
                    subtract = true,
                    amount = 1,
                    chance = 75
                },
                breaking = {
                    enabled = true,
                    chance = 15
                }
            },
            name = "dirty_potato",
            label = "Dirty Potato",
            min = 1,
            max = 4
        },
        blip = {
            enabled = true,
            label = "Potato Field",
            sprite = 285,
            scale = 0.9,
            colour = 21,
        },
    },
    ["cabbage"] = {
        coords = vec4(2541.34, 4812.27, 33.73, 65.37),
        zoneType = "sphere",
        zoneRadius = 35,
        zoneSize = vec3(15, 15, 25), -- for box zone
        prop = "prop_veg_crop_03_cab",
        job = false, -- false to disable, "jobname" to enable
        action = {
            type = "progress", -- "progress" / "skillCheck"
            progressDuration = 5000,
            skillCheckDifficulty = {"easy", "easy", "easy", "easy"}, -- "easy", "medium", "hard"
            skillCheckInputs = {"1", "2", "3", "4"}
        },
        max = 25,
        target = {
            label = "Uproot",
            icon = "fas fa-hands-holding"
        },
        anim = {
            scenario = nil,
            dict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
            clip = "machinic_loop_mechandplayer",
            upperBody = false,
        },
        item = {
            require = {
                enable = false,
                item = "trowel",
                durability = {
                    subtract = true,
                    amount = 1,
                    chance = 75
                },
                breaking = {
                    enabled = true,
                    chance = 15
                }
            },
            name = "dirty_cabbage",
            label = "Dirty Cabbage",
            min = 1,
            max = 4
        },
        blip = {
            enabled = true,
            label = "Cabbage Field",
            sprite = 285,
            scale = 0.9,
            colour = 2,
        },
    },
    ["tomato"] = {
        coords = vec4(2238.95, 5074.01, 47.25, 220.28),
        zoneType = "sphere",
        zoneRadius = 45,
        zoneSize = vec3(15, 15, 25), -- for box zone
        prop = "prop_veg_crop_02",
        job = false, -- false to disable, "jobname" to enable
        action = {
            type = "skillCheck", -- "progress" / "skillCheck"
            progressDuration = 5000,
            skillCheckDifficulty = {"easy", "easy", "easy", "easy"}, -- "easy", "medium", "hard"
            skillCheckInputs = {"1", "2", "3", "4"}
        },
        max = 25,
        target = {
            label = "Uproot",
            icon = "fas fa-hands-holding"
        },
        anim = {
            scenario = nil,
            dict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
            clip = "machinic_loop_mechandplayer",
            upperBody = true,
        },
        item = {
            require = {
                enable = false,
                item = "trowel",
                durability = {
                    subtract = true,
                    amount = 1,
                    chance = 75
                },
                breaking = {
                    enabled = true,
                    chance = 15
                }
            },
            name = "dirty_tomato",
            label = "Dirty Tomato",
            min = 1,
            max = 4
        },
        blip = {
            enabled = true,
            label = "Tomato Field",
            
            sprite = 285,
            scale = 0.9,
            colour = 6,
        },
    },
    ["coffee_beans"] = {
        coords = vec4(2308.01, 5131.05, 50.5, 45.11),
        zoneType = "sphere",
        zoneRadius = 35,
        zoneSize = vec3(15, 15, 25), -- for box zone
        prop = "prop_veg_crop_04_leaf",
        job = false, -- false to disable, "jobname" to enable
        action = {
            type = "skillCheck", -- "progress" / "skillCheck"
            progressDuration = 5000,
            skillCheckDifficulty = {"easy", "easy", "easy", "easy"}, -- "easy", "medium", "hard"
            skillCheckInputs = {"1", "2", "3", "4"}
        },
        max = 25,
        target = {
            label = "Uproot",
            icon = "fas fa-hands-holding"
        },
        anim = {
            scenario = nil,
            dict = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@",
            clip = "machinic_loop_mechandplayer",
            upperBody = true,
        },
        item = {
            require = {
                enable = false,
                item = "trowel",
                durability = {
                    subtract = true,
                    amount = 1,
                    chance = 75
                },
                breaking = {
                    enabled = true,
                    chance = 15
                }
            },
            name = "dirty_coffee_beans",
            label = "Dirty Coffe Beans",
            min = 1,
            max = 4
        },
        blip = {
            enabled = true,
            label = "Coffee Bean Field",
            
            sprite = 285,
            scale = 0.9,
            colour = 44,
        },
    },
}

KloudDev.Trees = {
    -- ["orange"] = {
    --     coords = vec4(2341.86, 5003.98, 42.53, 45.44),
    --     zoneType = "sphere",
    --     zoneRadius = 55,
    --     zoneSize = vec3(15, 15, 25), -- for box zone
    --     zonePoints = {
    --         vec3(2455.0, 4670.0, 35.0),
    --         vec3(2367.0, 4761.0, 35.0),
    --         vec3(2311.0, 4780.0, 35.0),
    --         vec3(2299.0, 4743.0, 35.0),
    --         vec3(2361.0, 4712.0, 35.0),
    --         vec3(2428.0, 4646.0, 35.0),
    --     },
    --     treeBoxes = {
    --         vec3(2390.087646484375, 4992.4052734375, 45.84523010253906),
    --         vec3(2389.78125, 5004.60791015625, 46.16830062866211),
    --         vec3(2377.555908203125, 5003.97998046875, 45.05754089355469),
    --         vec3(2376.390380859375, 5016.849609375, 46.13376998901367),
    --         vec3(2369.387939453125, 5010.86083984375, 44.57109451293945),
    --         vec3(2360.85595703125, 5002.35498046875, 44.25883865356445),
    --         vec3(2373.978515625, 4989.0029296875, 44.79965591430664),
    --         vec3(2361.60009765625, 4988.73095703125, 43.83900833129883),
    --         vec3(2361.814208984375, 4976.4228515625, 43.84741592407226),
    --         vec3(2349.230224609375, 4975.888671875, 43.39030838012695),
    --         vec3(2349.380859375, 4989.5654296875, 43.69776153564453)
    --     },
    --     cooldown = 60,
    --     prop = "prop_veg_crop_orange",
    --     job = false, -- false to disable, "jobname" to enable
    --     action = {
    --         type = "skillCheck", -- "progress" / "skillCheck"
    --         progressDuration = 5000,
    --         skillCheckDifficulty = {"easy", "easy", "easy", "easy"}, -- "easy", "medium", "hard"
    --         skillCheckInputs = {"1", "2", "3", "4"}
    --     },
    --     target = {
    --         label = "Pick Orange",
    --         icon = "fas fa-cannabis"
    --     },
    --     anim = {
    --         scenario = nil,
    --         dict = "missmechanic",
    --         clip = "work_base",
    --         upperBody = true
    --     },
    --     item = {
    --         require = {
    --             enable = false,
    --             item = "trowel",
    --             durability = {
    --                 subtract = true,
    --                 amount = 1,
    --                 chance = 75
    --             },
    --             breaking = {
    --                 enabled = true,
    --                 chance = 15
    --             }
    --         },
    --         name = "orange",
    --         label = "Orange",
    --         min = 1,
    --         max = 4
    --     },
    --     blip = {
    --         enabled = false,
    --         label = "Orange Field",
            
    --         sprite = 285,
    --         scale = 0.9,
    --         colour = 47,
    --     },
    -- }
}

KloudDev.WashLocations = {
    blip = {
        enabled = true,
        label = "Wash Crops",
        sprite = 728,
        scale = 0.9,
        colour = 4,
    },
    duration = 3000, -- per item count ex. x1 orange = 3secs, x10 orange = 30secs
    maxWash = 20,
    anim = {
        scenario = "WORLD_HUMAN_BUM_WASH", -- nil to disable
        dict = nil,
        clip = nil,
        upperBody = false
    },
    items = {
        {"dirty_potato", "potato"},
        {"dirty_cabbage", "cabbage"},
        {"dirty_tomato", "tomato"},
        {"dirty_coffee_beans", "coffee_beans"},
        --{requiredItem, resultItem}
    },
    coords = {
        vec4(2405.77, 4600.39, 30.31, 98.15),
        vec4(2397.81, 4596.51, 30.31, 134.76),
        vec4(2384.6, 4594.71, 30.38, 107.85),
        vec4(2363.49, 4593.61, 30.52, 106.54),
        vec4(2372.93, 4595.23, 30.54, 190.0),
    }
}

KloudDev.Shops = {
    ["sell"] = {
        blip = {
            enabled = true,
            label = "Crops Buyer",
            sprite = 480,
            scale = 0.9,
            colour = 5,
        },
        coords = {
            vector4(2028.18, 4978.26, 40.12, 224.48),
            -- vector4(2243.63, 5154.18, 56.89, 154.39)
        },
        pedModels = {
            "a_m_m_farmer_01",
            "cs_russiandrunk",
            "cs_old_man1a",
            "cs_old_man2",
            "cs_nervousron",
        },
        prices = {
            {"potato", 90},
            {"tomato", 70},
            {"orange", 80},
            {"cabbage", 75},
            {"coffee_beans", 79},
        --  {"itemName", price}
        }
    },
    ["shop"] = {
        blip = {
            enabled = true,
            label = "Farmer's Shop",
            sprite = 280,
            scale = 0.9,
            colour = 5,
        },
        coords = {
            vector4(461.93, -696.86, 26.42, 70.94),

        },
        pedModels = {
            "a_m_m_farmer_01",
            "cs_russiandrunk",
            "cs_old_man1a",
            "cs_old_man2",
            "cs_nervousron",
        },
        prices = {
            {"plantremover", 200},
            {"trowel", 200},
            {"potato", 110},
            {"tomato", 110},
            {"orange", 75},
            {"cabbage", 70},
            {"coffee_beans", 110},
        --  {"itemName", price}
        }
    },
}