Config = {}

Config['ShopRobbery'] = {
    ['framework'] = {
        name = 'QB', -- Only ESX or QB.
        scriptName = 'qb-core', -- Only for QB users.
        eventName = 'esx:getSharedObject', -- Only for ESX users.
    },
    ['setjobForPolice'] = 'police', -- Setjob for check police count and police alert
    ['requiredPoliceCount'] = 4, -- Required police count for start heist
    ['cooldown'] = { -- If you set globalCooldown to true, players can rob one shop in same time. Cooldown time is the time it takes to each shop or global.
        globalCooldown = true,
        time = 20,
    },
    ['rewardItems'] = { -- Add this items to database or shared. Don't change the order, you can change the item names.
        {itemName = 'goldbar', count = math.random(2, 4)}, -- For safecrack reward
        {itemName = 'markedbills', count = math.random(1, 2)}, -- For safecrack reward
        {itemName = 'security_card_02', count = math.random(1, 1)}, -- For safecrack reward
    },
    ['rewardMoneys'] = {
        ['safecrack'] = function()
            return math.random(25000, 35000) -- For safecrack money reward
        end,
        ['till'] = function() -- For till money reward 
            return math.random(8000, 20000)
        end,
    },
    ['tillGrabTime'] = 15000, -- For grab till time (miliseconds)
    ['clerkWeaponChance'] = 25, -- Chance that the clerk will get scared or pull a gun
    ['clerkWeapon'] = GetHashKey('WEAPON_PISTOL'), -- Clerk weapon
    ['markedbills'] = {  -- If change true, all moneys will convert to black. QBCore players can change itemName
        status = false,
        itemName = 'markedbills'
    },
}

Config['ShopRobberySetup'] = {
    [1] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(373.13, 328.62, 102.57), heading = 258.78}, -- For shop clerk settings: Ped model, coords and heading.
        safecrackSetup = {coords = vector3(379.960, 331.858, 102.566), heading = 255.47}, -- For shop safecrack object: Object coords and heading
        lixeiroCharmoso = {marketId = "market_6", tillAmount = 2, remainingTill = 2} -- For lixeiroCharmoso stores script: Market Id from his config file and the amount of tills
    },
    [2] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(1400.55, 3603.27, 34.0), heading = 200.31},
        safecrackSetup = {coords = vector3(1387.86, 3607.24, 34.98), heading = 200.47},
        lixeiroCharmoso = {marketId = "market_14", tillAmount = 1, remainingTill = 1}
    },
    [3] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(-47.88, -1759.37, 28.42), heading = 39.41},
        safecrackSetup = {coords = vector3(-41.688, -1749.3, 28.4210), heading = 320.47},
        lixeiroCharmoso = {marketId = "market_13", tillAmount = 2, remainingTill = 2}
    },
    [4] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(1165.02, -324.5, 68.21), heading = 94.04},
        safecrackSetup = {coords = vector3(1161.55, -313.43, 68.2050), heading = 10.47},
        lixeiroCharmoso = {marketId = "market_4", tillAmount = 2, remainingTill = 2}
    },
    [5] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(-706.17, -915.42, 18.22), heading = 79.73},
        safecrackSetup = {coords = vector3(-707.70, -904.08, 18.2155), heading = 0.47},
        lixeiroCharmoso = {marketId = "market_1", tillAmount = 2, remainingTill = 2}
    },
    [6] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(24.45, -1344.88, 28.47), heading = 271.64},
        safecrackSetup = {coords = vector3(30.45, -1339.88, 28.44), heading = 269.47},
        lixeiroCharmoso = {marketId = "market_2", tillAmount = 2, remainingTill = 2}
    },
    [7] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(1728.87, 6417.39, 34.04), heading = 247.87},
        safecrackSetup = {coords = vector3(1736.66, 6419.02, 34.0372), heading = 243.47},
        lixeiroCharmoso = {marketId = "market_8", tillAmount = 2, remainingTill = 2}
    },
    [8] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(549.48, 2669.04, 41.16), heading = 97.7},
        safecrackSetup = {coords = vector3(545.07, 2663.47, 41.1564), heading = 96.47},
        lixeiroCharmoso = {marketId = "market_9", tillAmount = 2, remainingTill = 2}
    },
    [9] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(-3244.67, 1000.12, 11.83), heading = 354.82},
        safecrackSetup = {coords = vector3(-3249.02, 1006.04, 11.8307), heading = 0.47},
        lixeiroCharmoso = {marketId = "market_7", tillAmount = 2, remainingTill = 2}
    },
    [10] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(-1818.87, 792.93, 137.08), heading = 127.36},
        safecrackSetup = {coords = vector3(-1828.23, 799.83, 137.1), heading = 44.47},
        lixeiroCharmoso = {marketId = "market_5", tillAmount = 2, remainingTill = 2}
    },
    [11] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(1696.63, 4923.88, 41.06), heading = 325.29},
        safecrackSetup = {coords = vector3(1706.87, 4919.76, 41.0636), heading = 237.47},
        lixeiroCharmoso = {marketId = "market_12", tillAmount = 2, remainingTill = 2}
    },
    [12] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(1958.91, 3742.08, 31.34), heading = 308.39},
        safecrackSetup = {coords = vector3(1961.32, 3749.37, 31.3437), heading = 300.47},
        lixeiroCharmoso = {marketId = "market_10", tillAmount = 2, remainingTill = 2}
    },
    [13] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(2675.86, 3280.57, 54.24), heading = 333.6},
        safecrackSetup = {coords = vector3(2674.24, 3287.99, 54.2411), heading = 330.47},
        lixeiroCharmoso = {marketId = "market_11", tillAmount = 2, remainingTill = 2}
    },
    [14] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(2554.79, 380.93, 107.62), heading = 359.14},
        safecrackSetup = {coords = vector3(2550.09, 386.529, 107.623), heading = 357.47},
        lixeiroCharmoso = {marketId = "market_3", tillAmount = 2, remainingTill = 2}
    },
    [15] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(-3041.24, 583.82, 6.91), heading = 23.78},
        safecrackSetup = {coords = vector3(-3047.88, 588.16, 6.90893), heading = 17.47},
        lixeiroCharmoso = {marketId = "market_15", tillAmount = 2, remainingTill = 2}
    },
    [16] = {
        pedSetup = {model = 'mp_m_shopkeep_01', coords = vector3(1167.29, 2710.86, 38.16), heading = 172.64},
        safecrackSetup = {coords = vector3(1169.0, 2719.89, 36.16), heading = 350.8},
        lixeiroCharmoso = {marketId = "market_16", tillAmount = 1, remainingTill = 1}
    },
}

Strings = {
    ['grab_till'] = 'Press ~INPUT_CONTEXT~ to grab till',
    ['safecrack'] = 'Press ~INPUT_CONTEXT~ to start safecrack',
    ['pickup'] = 'Press ~INPUT_CONTEXT~ to pickup bag',
    ['wait_nextrob'] = 'You have to wait this long to undress again',
    ['minute'] = 'minute.',
    ['need_this'] = 'You need this: ',
    ['need_police'] = 'Not enough police in the city.',
    ['total_money'] = 'You got this: ',
    ['police_alert'] = 'Shop robbery alert! Check your gps.',
    ['not_cop'] = 'You are not cop!',
    ['not_near'] = 'There is no shop nearby',
    ['safecrack_help'] = '~INPUT_FRONTEND_LEFT~ ~INPUT_FRONTEND_RIGHT~ Rotate\n~INPUT_FRONTEND_RDOWN~ Check',
    ['charmoso_log_title'] = 'Money stolen',
    ['charmoso_store_being_robbed'] = 'Your store is being robbed!',
    ['charmoso_no_owner_online'] = 'This store is closed!',
}

-- Set this as true if you're using the "Stores" script from LixeiroCharmoso (https://discord.gg/U5YDgbh). 
-- When enabled, the reward items and the money will be got from stores stocks and stores money. If the stores does not have owner, it wil be the values you configured in rewardMoneys and rewardItems
-- ATTENTION: remove the -- from this line "@mysql-async/lib/MySQL.lua" inside the server_scripts on fxmanifest.lua
-- If you need any support related to this, send a DM on discord: Lixeiro Charmoso#1104
Config['enableLixeiroCharmosoMarkets'] = false
Config['LixeiroCharmosoMarketsSettings'] = {
    money_percentage_earned = 0.7, -- Amount of money that will be taken from store bank in %
    items_percentage_earned = 0.7, -- Amount of items that will be taken from store stock in %
	require_owner_be_online = true -- true: the store can only be robbed if the owner is online | false: the store can be robbed at any time
}