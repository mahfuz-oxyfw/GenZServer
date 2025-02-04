Config = {}
Config.UseTextUI = true --only qb target false
Config.InventoryFolder = "nui://qb-inventory/html/images/"
Config.Text = "textui2" --textui2
--ox nui://ox_inventory/web/images/
--qs nui://qs-inventory/html/images/

Config.PaInv = false --make it true if you are using pa inventory
Config.OldInv = "qb" --if you are using pa inventory and if you are using ox before pa write ox here if not you don't need to write anything

Config.ServerCallbacks = {}

Config.Notify = {
    ["success"] = "The purchase was successful enjoy",
    ["error"] = "You don't have enough balance"
}

Config.Shops = {
    {
        name = "Market",
        label = "7/24 Market",
        type = "normal",
        blip = true,
        blipSprite = 59,
        blipColor = 2,
        blipScale = 0.6,
        categories = {
            [1] = {
                name = "General",
                description = "Needs",
                items = {
                    {name = "tosti", label = "tosti", perPrice = 150, description = "Food"},
                    {name = "water_bottle", label = "water", perPrice = 120, description = "Drinks"},
                    {name = "twerks_candy", label = "twerks candy", perPrice = 120, description = "Food"},
                    {name = "sandwich", label = "sandwich", perPrice = 130, description = "Food"},
                    {name = "ecola", label = "ecola", perPrice = 130, description = "Drinks"},
                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(24.47, -1346.62, 29.5, 271.66)},
            {ped = nil, coords = vector4(-3039.54, 584.38, 7.91, 17.27)},
            {ped = nil, coords = vector4(-3242.97, 1000.01, 12.83, 357.57)},
            {ped = nil, coords = vector4(1728.07, 6415.63, 35.04, 242.95)},
            {ped = nil, coords = vector4(1959.82, 3740.48, 32.34, 301.57)},
            {ped = nil, coords = vector4(549.13, 2670.85, 42.16, 99.39)},
            {ped = nil, coords = vector4(2677.47, 3279.76, 55.24, 335.08)},
            {ped = nil, coords = vector4(2556.66, 380.84, 108.62, 356.67)},
            {ped = nil, coords = vector4(372.66, 326.98, 103.57, 253.73)},
            {ped = nil, coords = vector4(-47.02, -1758.23, 29.42, 45.05)},
            {ped = nil, coords = vector4(-706.06, -913.97, 19.22, 88.04)},
            {ped = nil, coords = vector4(-1820.02, 794.03, 138.09, 135.45)},
            {ped = nil, coords = vector4(1164.71, -322.94, 69.21, 101.72)},
            {ped = nil, coords = vector4(1697.87, 4922.96, 42.06, 324.71)},
        }
    },
    {
        name = "Weed Store",
        label = "WeedStore",
        type = "normal",
        blip = true,
        blipSprite = 140,
        blipColor = 5,
        blipScale = 0.7,
        categories = {
            [1] = {
                name = "General",
                description = "Drugs",
                items = {
                    {name = "joint", label = "Joint", perPrice = 50, description = "Drinks"},
                    {name = "weapon_poolcue", label = "Poolcue", perPrice = 80, description = "Food"},
                    {name = "dust", label = "Dust", perPrice = 15, description = "Item"},
                    {name = "rolling_paper", label = "Rolling_Paper", perPrice = 20, description = "Item"},
                    {name = "fertilizer", label = "Fertilizer", perPrice = 15, description = "Item"},
                    {name = "weed_seed", label = "Weed Seed", perPrice = 7, description = "Item"},
                    {name = "water", label = "Water", perPrice = 15, description = "Item"},
                    {name = "finescale", label = "Finescale", perPrice = 500, description = "Item"},
                    {name = "trimming_scissors", label = "Trimming_Scissors", perPrice = 200, description = "Item"},
                    {name = "bakingsoda", label = "Bakingsoda", perPrice = 15, description = "Item"},
                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(1391.96, 3606.09, 34.98, 196.85)},
        }
    },
    {
        name = "Pharmeasy",
        label = "Pharmeasy",
        type = "normal",
        blip = false,
        blipSprite = 140,
        blipColor = 5,
        blipScale = 0.7,
        categories = {
            [1] = {
                name = "General",
                description = "Pharmeacy",
                items = {
                    {name = "bandage", label = "Bandage", perPrice = 600, description = "Drinks"},
                    {name = "painkillers", label = "Pinkillers", perPrice = 800, description = "Food"},
                    {name = "walkstick", label = "Walkstick", perPrice = 200, description = "General"},
                }
            },
        },
        pedHash = 's_m_y_autopsy_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(-487.48, -1010.7, 24.29, 173.75)},
        }
    },
    {
        name = "Tea Shop",
        label = "Tea Shop",
        type = "normal",
        blip = true,
        blipSprite = 466,
        blipColor = 2,
        blipScale = 0.7,
        categories = {
            [1] = {
                name = "General",
                description = "Tea Shop",
                items = {
                    {name = "coffee", label = "coffee", perPrice = 80, description = "Drinks"},
                    {name = "tea", label = "tea", perPrice = 60, description = "Drinks"},
                    {name = "ecola", label = "Cola", perPrice = 100, description = "Drinks"},
                    {name = "water_bottle", label = "Water", perPrice = 80, description = "Drinks"},
                    {name = "redwoodpack", label = "Redwood pack", perPrice = 100, description = "General"},
                    {name = "debonairepack", label = "Debonaire pack", perPrice = 100, description = "General"},
                    {name = "yukonpack", label = "Yukon pack", perPrice = 100, description = "General"},
                    {name = "sixtyninepack", label = "69 Pack", perPrice = 10, description = "General"},
                    {name = "cigs", label = "Cigarette", perPrice = 17, description = "General"},
                    {name = "vape", label = "Electronic Vape", perPrice = 150, description = "General"},
                    {name = "vapejuice", label = "Vape Juice", perPrice = 150, description = "General"},
                    {name = "lighter", label = "Lighter", perPrice = 150, description = "General"},
                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(307.11, -703.66, 29.31, 338.59)},
        }
    },

    {
        name = "digitalden",
        label = "Digital Den",
        type = "normal",
        blip = true,
        blipSprite = 606,
        blipColor = 1,
        blipScale = 0.7,
        categories = {
            [1] = {
                name = "General",
                description = "digitalden",
                items = {
                    {name = "yphone", label = "IPhone", perPrice = 5000, description = "Item"},
                    {name = "yphone_black", label = "IPhone Black", perPrice = 15000, description = "Item"},
                    {name = "yphone_white", label = "IPhone White", perPrice = 10000, description = "Item"},
                    {name = "yphone_blue", label = "IPhone Blue", perPrice = 10000, description = "Item"},
                    {name = "y24_silver", label = "s24 Silver", perPrice = 20000, description = "Item"},
                    {name = "y24_violet", label = "s24 Violet", perPrice = 20000, description = "Item"},
                    {name = "yflip_mint", label = "Flip Mint", perPrice = 25000, description = "Item"},
                    {name = "yflip_gold", label = "Flip Gold", perPrice = 25000, description = "Item"},
                    {name = "yflip_graphite", label = "Flip Graphite", perPrice = 25000, description = "Item"},
                    {name = "yflip_lavender", label = "Flip Lavender", perPrice = 25000, description = "Item"},
                    {name = "radio", label = "Radio", perPrice = 1000, description = "General"},
                    {name = "boombox", label = "Boombox", perPrice = 1000, description = "General"},
                    {name = "fitbit", label = "Fitbit", perPrice = 150, description = "General"},
                }
            },
        },
        pedHash = 's_f_y_clubbar_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(-1529.99, -401.86, 35.64, 230.29)},
        }
    },

    {
        name = "Market",
        label = "Rob's Liqour",
        type = "normal",
        blip = true,
        blipSprite = 93,
        blipColor = 1,
        blipScale = 0.6,
        categories = {
            [1] = {
                name = "General",
                description = "24/7",
                items = {
                    {name = "water_bottle", label = "Water", perPrice = 100, description = "Drinks"},
                    {name = "beer", label = "Beer", perPrice = 200, description = "General"},
                    {name = "whiskey", label = "Whiskey", perPrice = 200, description = "General"},
                    {name = "vodka", label = "Vodka", perPrice = 200, description = "General"},
                    {name = "beer_am", label = "Beer_am", perPrice = 200, description = "General"},
                    {name = "beer_logger", label = "Beer_logger", perPrice = 200, description = "General"},
                    {name = "beer_piss", label = "Beer_piss", perPrice = 200, description = "General"},
                    {name = "beer_dusche", label = "Beer_dusche", perPrice = 200, description = "General"},
                    {name = "beer_patriot", label = "Beer_patriot", perPrice = 200, description = "General"},
                    {name = "beer_stz", label = "Beer_stz", perPrice = 200, description = "General"},
                    {name = "beer_pride", label = "Beer_pride", perPrice = 200, description = "General"},
                    {name = "beer_jakey", label = "Beer_jakey", perPrice = 200, description = "General"},
                    {name = "beer_bar", label = "Beer_bar", perPrice = 200, description = "General"},
                    {name = "beer_blr", label = "Beer_blr", perPrice = 200, description = "General"},
                    {name = "whiskey_macbeth", label = "Whiskey_macbeth", perPrice = 200, description = "General"},
                    {name = "rum", label = "Rum", perPrice = 200, description = "General"},
                    {name = "brandy_cardi", label = "Brandy_cardi", perPrice = 200, description = "General"},
                    {name = "wine_red", label = "Wine_red", perPrice = 200, description = "General"},
                    {name = "wine_rose", label = "Wine_rose", perPrice = 200, description = "General"},
                    {name = "wine_white", label = "Wine_white", perPrice = 200, description = "General"},
                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(-1221.58, -908.15, 12.33, 35.49)},
            {ped = nil, coords = vector4(-1486.59, -377.68, 40.16, 139.51)},
            {ped = nil, coords = vector4(-2966.39, 391.42, 15.04, 87.48)},
            {ped = nil, coords = vector4(1165.17, 2710.88, 38.16, 179.43)},
            {ped = nil, coords = vector4(1134.2, -982.91, 46.42, 277.24)},
        }
    },
    {
        name = "Hardware Store",
        label = "Hardware",
        type = "normal",
        blip = true,
        blipSprite = 402,
        blipColor = 5,
        blipScale = 0.9,
        categories = {
            [1] = {
                name = "General",
                description = "Hardware Tools",
                items = {
                    {name = "lockpick", label = "Lockpick", perPrice = 200, description = "Drinks"},
                    {name = "weapon_wrench", label = "Wrench", perPrice = 1200, description = "Food"},
                    {name = "weapon_hammer", label = "Hammer", perPrice = 2000, description = "General"},
                    {name = "screwdriverset", label = "Tool Set", perPrice = 800, description = "General"},
                    {name = "firework1", label = "Firework XS", perPrice = 150, description = "General"},
                    {name = "firework2", label = "Firework S", perPrice = 150, description = "General"},
                    {name = "firework3", label = "Firework M", perPrice = 150, description = "General"},
                    {name = "firework4", label = "Firework L", perPrice = 150, description = "General"},
                    {name = "cleaningkit", label = "Cleaning Kit", perPrice = 250, description = "General"},
                    {name = "diving_gear", label = "Diving_gear", perPrice = 2500, description = "General"},
                    {name = "diving_fill", label = "Diving_fill", perPrice = 200, description = "General"},
                    {name = "parachute", label = "Parachute", perPrice = 1500, description = "General"},
                    {name = "binoculars", label = "Binoculars", perPrice = 1500, description = "General"},
                    {name = "lighter", label = "Lighter", perPrice = 150, description = "General"},
                    {name = "harness", label = "Harness", perPrice = 800, description = "General"},
                    {name = "gpsdevice", label = "GPS Device For Hud", perPrice = 800, description = "A Watch to Check Map"},
                    {name = "bag", label = "Bag", perPrice = 1000, description = "General"},
                    {name = "notebook", label = "Note Book", perPrice = 100, description = "General"},
                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(45.68, -1749.04, 29.61, 53.13)},
            {ped = nil, coords = vector4(2744.89, 3460.07, 55.76, 247.38)},
            {ped = nil, coords = vector4(-421.83, 6136.13, 31.88, 228.2)},
        }
    },
    {
        name = "Ammunation Store",
        label = "Weapons",
        type = "normal",
        blip = true,
        blipSprite = 110,
        blipColor = 2,
        blipScale = 0.8,
        categories = {
            [1] = {
                name = "General",
                description = "Ammunations",
                items = {
                    {name = "weapon_dagger", label = "Dagger", perPrice = 500, description = "General"},
                    {name = "weapon_bat", label = "Bat", perPrice = 500, description = "General"},
                    {name = "pistol_ammo", label = "Pistol Ammo", perPrice = 250, description = "General"},
                    {name = "weapon_pistol", label = "Weapon_pistol", perPrice = 5000, description = "General", requiredLicense = {'weapon'}},
                    {name = "armor", label = "Armor", perPrice = 800, description = "Ato Kinis Na"},
                    {name = "weapon_snspistol", label = "SNS Pistol", perPrice = 3500, description = "General", requiredLicense = {'weapon'}},
                    {name = "weapon_crowbar", label = "Crow Bar", perPrice = 9000, description = "General", requiredLicense = {'weapon'}},
                }
            },
        },
        pedHash = 'mp_m_shopkeep_01',
        scenario = 'WORLD_HUMAN_STAND_MOBILE',
        coords = {
            {ped = nil, coords = vector4(-3173.31, 1088.85, 20.84, 244.18)},
            {ped = nil, coords = vector4(-1304.19, -395.12, 36.7, 75.03)},
            {ped = nil, coords = vector4(841.92, -1035.32, 28.19, 1.56)},
            {ped = nil, coords = vector4(-1118.59, 2700.05, 18.55, 221.89)},
            {ped = nil, coords = vector4(2567.48, 292.59, 108.73, 349.68)},
            {ped = nil, coords = vector4(23.0, -1105.67, 29.8, 162.91)},
            {ped = nil, coords = vector4(253.63, -51.02, 69.94, 72.91)},
            {ped = nil, coords = vector4(-331.23, 6085.37, 31.45, 228.02)},
            {ped = nil, coords = vector4(1692.67, 3761.38, 34.71, 227.65)},
            {ped = nil, coords = vector4(809.68, -2159.13, 29.62, 1.43)},
            {ped = nil, coords = vector4(-661.96, -933.53, 21.83, 177.05)},
        }
    },
}

    -- {
    --     name = "Job Market",
    --     label = "LSPD Ammunation",
    --     type = "job",
    --     jobName = "police",
    --     blip = false,
    --     categories = {
    --         [1] = {
    --             name = "General",
    --             description = "24/7",
    --             items = {
    --                 {name = "pistol_ammo", label = "Pistol Ammo", perPrice = 150, description = "PD Items"},
    --                 {name = "smg_ammo", label = "SMG Ammo", perPrice = 150, description = "PD Items"},
    --                 {name = "rifle_ammo", label = "Rifle Ammo", perPrice = 150, description = "PD Items"},
    --                 -- {name = "taserammo", label = "Taser Ammo", perPrice = 150, description = "PD Items"},
    --                 {name = "handcuffs", label = "Handcuffs", perPrice = 150, description = "PD Items"},
    --                 {name = "empty_evidence_bag", label = "Empty Evidence Bag", perPrice = 150, description = "PD Items"},
    --                 {name = "police_stormram", label = "Storm Arm", perPrice = 150, description = "PD Items"},
    --                 {name = "armor", label = "Armor", perPrice = 150, description = "PD Items"},
    --                 {name = "radio", label = "Radio", perPrice = 150, description = "PD Items"},
    --                 -- {name = "policespikes", label = "Spikes", perPrice = 150, description = "PD Items"},
    --                 -- {name = "gps", label = "GPS", perPrice = 150, description = "PD Items"},
    --                 {name = "body_cam", label = "Body Cam", perPrice = 150, description = "PD Items"},
    --                 {name = "ifaks", label = "Ifak", perPrice = 150, description = "PD Items"},
    --                 {name = "bandage", label = "Bandage", perPrice = 150, description = "PD Items"}
    --             }
    --         },
    --         [2] = {
    --             name = "Weapon",
    --             description = "Ammunations",
    --             items = {
    --                 {name = "weapon_stungun", label = "Stun Gun", perPrice = 150, description = "PD Items"},
    --                 {name = "weapon_glock", label = "Glock", perPrice = 150, description = "PD Items"},
    --                 {name = "weapon_smg", label = "SMG", perPrice = 150, description = "PD Items"},
    --                 {name = "weapon_combatpdw", label = "Combat PDW", perPrice = 150, description = "PD Items"},
    --                 {name = "weapon_m4", label = "M4", perPrice = 150, description = "PD Items"},
    --                 {name = "weapon_specialcarbine_mk2", label = "ScarL", perPrice = 150, description = "PD Items"},
    --                 {name = "weapon_nightstick", label = "Nightstick", perPrice = 150, description = "PD Items"},
    --                 {name = "weapon_flashlight", label = "FlashLight", perPrice = 150, description = "PD Items"},
    --             }
    --         },
    --     },
    --     pedHash = 'ig_andreas',
    --     scenario = 'WORLD_HUMAN_STAND_MOBILE',
    --     coords = {
    --         {ped = nil, coords = vector4(482.58, -995.36, 30.69, 180.39)}
    --     }
    -- },

    -- {
    --     name = "Job Market",
    --     label = "Lester",
    --     type = "job",
    --     jobName = "",
    --     blip = false,
    --     categories = {
    --         [1] = {
    --             name = "General",
    --             description = "malys",
    --             items = {
    --                 {name = "ac_vpn", label = "Vpn", perPrice = 150, description = "Genel"},
    --                 {name = "ac_hdd", label = "Hdd", perPrice = 150, description = "Ekipman"},
    --                 {name = "ac_gpu", label = "Gpu", perPrice = 150, description = "Ekipman"},
    --                 {name = "ac_cpu", label = "Gpu", perPrice = 150, description = "Ekipman"},
    --                 {name = "weapon_pistol", label = "Pistol", perPrice = 450, description = "Weapon", requiredLicense = {'weapon'}}
    --             }
    --         },
    --     },
    --     pedHash = 'ig_lestercrest_2',
    --     scenario = 'WORLD_HUMAN_STAND_MOBILE',
    --     coords = {
    --         {ped = nil, coords = vector4(1275.6, -1714.85, 54.77, 18.08)}
    --     }
    -- },

-- }