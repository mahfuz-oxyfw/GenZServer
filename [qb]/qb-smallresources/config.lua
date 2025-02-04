Config = {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)
Config.PauseMapText = ''                                     -- Text shown above the map when ESC is pressed. If left empty 'FiveM' will appear
Config.HarnessUses = 20
Config.DamageNeeded = 40.0                                  -- amount of damage till you can push your vehicle. 0-1000
Config.Logging = 'discord'                                   -- fivemanage

Config.AFK = {
    enabled = true, -- Set to true to enable the AFK kick system.
    ignoredGroups = {
        ['mod'] = true,
        ['admin'] = true,
        ['god'] = true
    },
    secondsUntilKick = 2700, -- AFK Kick Time Limit (in seconds)
    kickInCharMenu = true    -- Set to true if you want to kick players for being AFK even when they are in the character menu.
}


Config.HandsUp = {
    command = 'hu',
    keybind = 'X',
    controls = { 24, 25, 47, 58, 59, 63, 64, 71, 72, 75, 140, 141, 142, 143, 257, 263, 264 }
}

Config.Binoculars = {
    zoomSpeed = 10.0,        -- camera zoom speed
    storeBinocularsKey = 177 -- backspace by default
}

Config.AIResponse = {
    wantedLevels = false, -- if true, you will recieve wanted levels
    dispatchServices = {  -- AI dispatch services
        [1] = false,      -- Police Vehicles
        [2] = false,      -- Police Helicopters
        [3] = false,      -- Fire Department Vehicles
        [4] = false,      -- Swat Vehicles
        [5] = false,      -- Ambulance Vehicles
        [6] = false,      -- Police Motorcycles
        [7] = false,      -- Police Backup
        [8] = false,      -- Police Roadblocks
        [9] = false,      -- PoliceAutomobileWaitPulledOver
        [10] = false,     -- PoliceAutomobileWaitCruising
        [11] = false,     -- Gang Members
        [12] = false,     -- Swat Helicopters
        [13] = false,     -- Police Boats
        [14] = false,     -- Army Vehicles
        [15] = false      -- Biker Backup
    }
}

-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686
Config.Discord = {
    isEnabled = true,                                     -- If set to true, then discord rich presence will be enabled
    applicationId = '1301889593301536770',                   -- The discord application id
    iconLarge = '1',                               -- The name of the large icon
    iconLargeHoverText = 'Gen Z Roleplay', -- The hover text of the large icon
    iconSmall = '2',                         -- The name of the small icon
    iconSmallHoverText = 'Brought to you by OXA', -- The hover text of the small icon
    updateRate = 60000,                                    -- How often the player count should be updated
    showPlayerCount = true,                                -- If set to true the player count will be displayed in the rich presence
    maxPlayers = 120,                                       -- Maximum amount of players
    buttons = {
        {
            text = 'Gen Z FiveM',
            url = 'https://cfx.re/join/j9pqak'
        },
        {
            text = 'Gen Z Discord',
            url = 'https://discord.gg/wnRQckTdpz'
        }
    }
}

Config.Density = {
    parked = 0.01,
    vehicle = 0.01,
    multiplier = 0.02,
    peds = 0.08,
    scenario = 0.03
}

Config.Disable = {
    hudComponents = { 1, 2, 3, 4, 7, 9, 13, 14, 19, 20, 21, 22 }, -- Hud Components: https://docs.fivem.net/natives/?_0x6806C51AD12B83B8
    controls = { 37 },                                            -- Controls: https://docs.fivem.net/docs/game-references/controls/
    displayAmmo = true,                                           -- false disables ammo display
    ambience = false,                                             -- disables distance sirens, distance car alarms, flight music, etc
    idleCamera = false,                                            -- disables the idle cinematic camera
    vestDrawable = true,                                         -- disables the vest equipped when using heavy armor
    pistolWhipping = true,                                        -- disables pistol whipping
    driveby = true,                                              -- disables driveby
}

Config.RelieveWeedStress = 20 -- stress relief amount ( max)

Config.Consumables = {
    eat = { -- default food items
        ['sandwich'] = math.random(35, 54),
        ['tosti'] = math.random(40, 50),
        ['twerks_candy'] = math.random(35, 54),
        ['snikkel_candy'] = math.random(40, 50),
        ["tq_banana_nut"] = math.random(20, 40),
		["tq_chocolatecup"] = math.random(20, 40),
		["tq_strawberrycup"] = math.random(20, 40),
        ["burgershot_bigking"] = math.random(64, 65),
        ["burgershot_bleeder"] = math.random(20, 30),
        ["burgershot_goatwrap"] = math.random(60, 75),
        ["burgershot_macaroon"] = math.random(10, 15),
        ["burgershot_patatob"] = math.random(15, 20),
        ["burgershot_patatos"] = math.random(5, 10),
        ["burgershot_shotnuggets"] = math.random(10, 15),
        ["burgershot_shotrings"] = math.random(10, 15),
        ["burgershot_thesmurfsicecream"] = math.random(1, 3),
        ["burgershot_smurfetteicecream"] = math.random(1, 3),
        ["burgershot_matchaicecream"] = math.random(1, 3),
        ["burgershot_ubeicecream"] = math.random(1, 3),
        ["burgershot_unicornicecream"] = math.random(1, 3),
        ["burgershot_vanillaicecream"] = math.random(1, 3),
        ["burgershot_chocolateicecream"] = math.random(1, 3),
        ["burgershot_strawberryicecream"] = math.random(1, 3),
    },
    drink = { -- default drink items
        ['water_bottle'] = math.random(35, 54),
        ['kurkakola'] = math.random(35, 54),
        ['tea'] = math.random(35, 54),
        ['ecola'] = math.random(35, 54),
        ['coffee'] = math.random(40, 50),
        ["tq_berry_hydrating"] = math.random(20, 40),
	    ["tq_green_dream"] = math.random(20, 40),
	    ["tq_island_breeze"] = math.random(20, 40),
	    ["tq_just_peachy"] = math.random(20, 40),
	    ["tq_watermelon_dream"] = math.random(20, 40),
	    ["tq_ban_straw_juice"] = math.random(20, 40),
	    ["tq_banana_juice"] = math.random(20, 40),
	    ["tq_kiwi_juice"] = math.random(20, 40),
	    ["tq_strawberry_juice"] = math.random(20, 40),
	    ["tq_orange_juice"] = math.random(20, 40),
        ["burgershot_colab"] = math.random(40, 45),
        ["burgershot_colas"] = math.random(20, 30),
        ["burgershot_coffee"] = math.random(10, 20),

        ["prime"] = math.random(20, 40),
        ["drpepper"] = math.random(20, 30),
        ["mtdew"] = math.random(20, 30),
        ["barqs"] = math.random(20, 30),
        ["icetea"] = math.random(20, 30),
        ["sprite"] = math.random(20, 30),
        ["fanta"] = math.random(20, 30),
    },
    alcohol = { -- default alcohol items
        ['whiskey'] = math.random(20, 30),
        ['beer'] = math.random(30, 40),
        ['vodka'] = math.random(20, 40),
        ["tq_cocktail"] = math.random(20, 30),
	    ["tq_coconut_drink"] = math.random(30, 40),
	    ["tq_island_fantasy"] = math.random(20, 40),
	    ["tq_kamikaze"] = math.random(20, 40),
	    ["tq_redhot_daquiri"] = math.random(20, 40),
        ['beer_am'] = math.random(20, 30),
        ['beer_logger'] = math.random(30, 40),
        ['beer_piss'] = math.random(20, 40),
        ["beer_dusche"] = math.random(20, 30),
	    ["beer_patriot"] = math.random(30, 40),
	    ["beer_stz"] = math.random(20, 40),
	    ["beer_pride"] = math.random(20, 40),
	    ["beer_jakey"] = math.random(20, 40),
        ['beer_bar'] = math.random(20, 30),
        ['beer_blr'] = math.random(30, 40),
        ['whiskey_macbeth'] = math.random(20, 40),
        ["rum"] = math.random(20, 30),
	    ["brandy_cardi"] = math.random(30, 40),
	    ["wine_red"] = math.random(20, 40),
	    ["wine_rose"] = math.random(20, 40),
	    ["wine_white"] = math.random(20, 40),
    },
    custom = {
        ['icecream_chr'] = {
            progress = {
                label = 'Using Item...',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger_fp',
                flags = 17,
            },
            prop = {
                model = 'bzzz_icecream_cherry',
                bone = 18905,
                coords = vector3(0.12, 0.01, 0.03), -- vector 3 format
                rotation = vector3(-114.0, -30.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['icecream_chc'] = {
            progress = {
                label = 'Using Item...',
                time = 2500
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger_fp',
                flags = 17,
            },
            prop = {
                model = 'bzzz_icecream_chocolate',
                bone = 18905,
                coords = vector3(0.12, 0.01, 0.03), -- vector 3 format
                rotation = vector3(-114.0, -30.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger',
                replenish = math.random(20, 40),
                isAlcohol = false,
                event = false,
                server = false
            }
        },
        ['icecream_lmn'] = {
            progress = {
                label = 'Using Item...',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger_fp',
                flags = 17,
            },
            prop = {
                model = 'bzzz_icecream_lemon',
                bone = 18905,
                coords = vector3(0.12, 0.01, 0.03), -- vector 3 format
                rotation = vector3(-114.0, -30.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger',
                replenish = math.random(20, 40),
                isAlcohol = false,
                event = false,
                server = false
            }
        },
        ['icecream_pso'] = {
            progress = {
                label = 'Using Item...',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger_fp',
                flags = 17,
            },
            prop = {
                model = 'bzzz_icecream_pistachio',
                bone = 18905,
                coords = vector3(0.12, 0.01, 0.03), -- vector 3 format
                rotation = vector3(-114.0, -30.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger',
                replenish = math.random(20, 40),
                isAlcohol = false,
                event = false,
                server = false
            }
        },
        ['icecream_rpy'] = {
            progress = {
                label = 'Using Item...',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger_fp',
                flags = 17,
            },
            prop = {
                model = 'bzzz_icecream_raspberry',
                bone = 18905,
                coords = vector3(0.12, 0.01, 0.03), -- vector 3 format
                rotation = vector3(-114.0, -30.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger',
                replenish = math.random(20, 40),
                isAlcohol = false,
                event = false,
                server = false
            }
        },
        ['icecream_ckd'] = {
            progress = {
                label = 'Using Item...',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger_fp',
                flags = 17,
            },
            prop = {
                model = 'bzzz_icecream_stracciatella',
                bone = 18905,
                coords = vector3(0.12, 0.01, 0.03), -- vector 3 format
                rotation = vector3(-114.0, -30.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger',
                replenish = math.random(20, 40),
                isAlcohol = false,
                event = false,
                server = false
            }
        },
        ['icecream_sby'] = {
            progress = {
                label = 'Using Item...',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger_fp',
                flags = 17,
            },
            prop = {
                model = 'bzzz_icecream_strawberry',
                bone = 18905,
                coords = vector3(0.12, 0.01, 0.03), -- vector 3 format
                rotation = vector3(-114.0, -30.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger',
                replenish = math.random(20, 40),
                isAlcohol = false,
                event = false,
                server = false
            }
        },
        ['icecream_vna'] = {
            progress = {
                label = 'Using Item...',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger_fp',
                flags = 17,
            },
            prop = {
                model = 'bzzz_icecream_walnut',
                bone = 18905,
                coords = vector3(0.12, 0.01, 0.03), -- vector 3 format
                rotation = vector3(-114.0, -30.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger',
                replenish = math.random(20, 40),
                isAlcohol = false,
                event = false,
                server = false
            }
        },

        ['bzzz_croissant'] = {
            progress = {
                label = 'Using Item...',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 17,
            },
            prop = {
                model = 'bzzz_new_snacks_croissant_a',
                bone = 60309,
                coords = vector3(0.0, 0.0, 0.0), -- vector 3 format
                rotation = vector3(0.0, -50.0, 80.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['bzzz_donut_a'] = {
            progress = {
                label = 'Using Item...',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 17,
            },
            prop = {
                model = 'bzzz_new_snacks_donut_a',
                bone = 60309,
                coords = vector3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vector3(0.0, -20.0, 80.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['bzzz_donut_b'] = {
            progress = {
                label = 'Using Item...',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 17,
            },
            prop = {
                model = 'bzzz_new_snacks_donut_b',
                bone = 60309,
                coords = vector3(0.0, 0.0, -0.02), -- vector 3 format
                rotation = vector3(0.0, -20.0, 80.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['bzzz_peanuts'] = {
            progress = {
                label = 'Using Item...',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 17,
            },
            prop = {
                model = 'bzzz_new_snacks_peanuts_a',
                bone = 60309,
                coords = vector3(0.0, -0.02, -0.01), -- vector 3 format
                rotation = vector3(0.0, -20.0, 80.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['bzzz_pretzels'] = {
            progress = {
                label = 'Using Item...',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_inteat@burger',
                anim = 'mp_player_int_eat_burger',
                flags = 17,
            },
            prop = {
                model = 'bzzz_new_snacks_pretzels_a',
                bone = 60309,
                coords = vector3(0.03, -0.04, -0.01), -- vector 3 format
                rotation = vector3(-80.0, 0.0, 70.0), -- vector 3 format
            },
            replenish = {
                type = 'Hunger', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['bzzz_pepsiloca_a'] = {
            progress = {
                label = 'Using Item...',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 17,
            },
            prop = {
                model = 'bzzz_new_snacks_pepsiloca_a',
                bone = 60309,
                coords = vector3(0.01 ,0.00, 0.07), -- vector 3 format
                rotation = vector3(0.0, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['bzzz_pepsiloca_b'] = {
            progress = {
                label = 'Using Item...',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 17,
            },
            prop = {
                model = 'bzzz_new_snacks_pepsiloca_b',
                bone = 60309,
                coords = vector3(0.01 ,0.00, 0.07), -- vector 3 format
                rotation = vector3(0.0, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
        ['bzzz_energy'] = {
            progress = {
                label = 'Using Item...',
                time = 5000
            },
            animation = {
                animDict = 'mp_player_intdrink',
                anim = 'loop_bottle',
                flags = 17,
            },
            prop = {
                model = 'bzzz_new_snacks_energy_a',
                bone = 60309,
                coords = vector3(0.01 ,0.00, 0.05), -- vector 3 format
                rotation = vector3(0.0, 0.0, 0.0), -- vector 3 format
            },
            replenish = {
                type = 'Thirst', -- replenish type 'Hunger'/'Thirst' / false
                replenish = math.random(20, 40),
                isAlcohol = false, -- if you want it to add alcohol count
                event = false, -- 'eventname' if you want it to trigger an outside event on use useful for drugs
                server = false -- if the event above is a server event
            }
        },
    }
}

Config.Fireworks = {
    delay = 5, -- time in s till it goes off
    items = {  -- firework items
        'firework1',
        'firework2',
        'firework3',
        'firework4'
    }
}

Config.BlacklistedScenarios = {
    types = {
        'WORLD_VEHICLE_MILITARY_PLANES_SMALL',
        'WORLD_VEHICLE_MILITARY_PLANES_BIG',
        'WORLD_VEHICLE_AMBULANCE',
        'WORLD_VEHICLE_POLICE_NEXT_TO_CAR',
        'WORLD_VEHICLE_POLICE_CAR',
        'WORLD_VEHICLE_POLICE_BIKE'
    },
    groups = {
        2017590552,
        2141866469,
        1409640232,
        `ng_planes`
    }
}

Config.BlacklistedVehs = {
    [`shamal`] = true,
    [`luxor`] = true,
    [`luxor2`] = true,
    [`jet`] = true,
    [`lazer`] = true,
    [`buzzard`] = true,
    [`buzzard2`] = true,
    [`annihilator`] = true,
    [`savage`] = true,
    [`titan`] = true,
    [`rhino`] = true,
    [`firetruck`] = true,
    [`mule`] = true,
    [`maverick`] = true,
    [`blimp`] = true,
    [`airtug`] = true,
    [`camper`] = true,
    [`hydra`] = true,
    [`oppressor`] = true,
    [`technical3`] = true,
    [`insurgent3`] = true,
    [`apc`] = true,
    [`tampa3`] = true,
    [`trailersmall2`] = true,
    [`halftrack`] = true,
    [`hunter`] = true,
    [`vigilante`] = true,
    [`akula`] = true,
    [`barrage`] = true,
    [`khanjali`] = true,
    [`caracara`] = true,
    [`blimp3`] = true,
    [`menacer`] = true,
    [`oppressor2`] = true,
    [`scramjet`] = true,
    [`strikeforce`] = true,
    [`cerberus`] = true,
    [`cerberus2`] = true,
    [`cerberus3`] = true,
    [`scarab`] = true,
    [`scarab2`] = true,
    [`scarab3`] = true,
    [`rrocket`] = true,
    [`ruiner2`] = true,
    [`deluxo`] = true,
    [`cargoplane2`] = true,
    [`voltic2`] = true
}

Config.BlacklistedWeapons = {
    [`WEAPON_RAILGUN`] = true,
}

Config.BlacklistedPeds = {
    [`s_m_y_ranger_01`] = true,
    [`s_m_y_sheriff_01`] = true,
    [`s_m_y_cop_01`] = true,
    [`s_f_y_sheriff_01`] = true,
    [`s_f_y_cop_01`] = true,
    [`s_m_y_hwaycop_01`] = true
}

Config.Objects = { -- for object removal
    { coords = vector3(266.09, -349.35, 44.74), heading = 0, length = 200, width = 200, model = 'prop_sec_barier_02b' },
    { coords = vector3(285.28, -355.78, 45.13), heading = 0, length = 200, width = 200, model = 'prop_sec_barier_02a' },
}

-- You may add more than 2 selections and it will bring up a menu for the player to select which floor be sure to label each section though
Config.Teleports = {
    [1] = {                   -- Elevator @ labs
        [1] = {               -- up
            poly = { coords = vector3(3540.74, 3675.59, 20.99), heading = 167.5, length = 2, width = 2 },
            allowVeh = false, -- whether or not to allow use in vehicle
            label = false     -- set this to a string for a custom label or leave it false to keep the default. if more than 2 options, label all options

        },
        [2] = { -- down
            poly = { coords = vector3(3540.74, 3675.59, 28.11), heading = 172.5, length = 2, width = 2 },
            allowVeh = false,
            label = false
        }
    }
    -- [2] = { --Coke Processing Enter/Exit
    --     [1] = {
    --         poly = { coords = vector3(909.49, -1589.22, 30.51), heading = 92.24, length = 2, width = 2 },
    --         allowVeh = false,
    --         label = '[E] Enter Coke Processing'
    --     },
    --     [2] = {
    --         poly = { coords = vector3(1088.81, -3187.57, -38.99), heading = 181.7, length = 2, width = 2 },
    --         allowVeh = false,
    --         label = '[E] Leave'
    --     }
    -- }
}

Config.CarWash = {
    dirtLevel = 0.1,                                                                                   -- threshold for the dirt level to be counted as dirty
    defaultPrice = 20,                                                                                 -- default price for the carwash
    locations = {
        -- [1] = { coords = vector3(174.81, -1736.77, 28.87), length = 7.0, width = 8.8, heading = 359 }, -- South Los Santos Carson Avenue
        -- [2] = { coords = vector3(25.2, -1391.98, 28.91), length = 6.6, width = 8.2, heading = 0 },     -- South Los Santos Innocence Boulevard
        -- [3] = { coords = vector3(-74.27, 6427.72, 31.02), length = 9.4, width = 8, heading = 315 },    -- Paleto Bay Boulevard
        -- [4] = { coords = vector3(1362.69, 3591.81, 34.5), length = 6.4, width = 8, heading = 21 },     -- Sandy Shores
        -- [5] = { coords = vector3(-699.84, -932.68, 18.59), length = 11.8, width = 5.2, heading = 0 }   -- Little Seoul Gas Station
    }
}
