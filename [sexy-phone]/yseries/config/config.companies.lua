Config = Config or {}

Config.Companies = {}
Config.RefreshInterval = 120                  -- 120 seconds(default). Recommended: 60 seconds or higher.
Config.Companies.MaxEmployeesToCall = 2       -- The maximum number of employees(random) to call when calling a company.

Config.Companies.PoliceAlwaysAvailable = false -- If true, the police company will always appear as online.
Config.Companies.AppearAsAlwaysAvailable = { 'police' }     -- The job name of the police job. -- This is used to determine if the police company should always appear as online.

---deprecated - Set your job name manually in the config below. This option will be removed in the future.
Config.Companies.PoliceJob = 'police'          -- The job name of the police job. 
--[[
    The name of the script that will be used for companies funds.
        * legacy: Means an old version of qb-management or esx_society.
        * qb-banking: If you are using the latest version of qb-banking.
        * renewed-banking: If you are using the latest version of renewed-banking.
]]
Config.Companies.Banking = 'qb-banking'

Config.Companies.Services = {
    {
        job = Config.Companies.PoliceJob,
        name = "Police",
        icon = "https://cdn-icons-png.flaticon.com/64/7693/7693100.png",
        canCall = true,    -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        location = {
            name = "Mission Row",
            coords = {
                x = 428.9,
                y = -984.5,
            }
        },
        hasJobActions = false,  -- if true, and the player job is configured here they can see the job actions
        hasJobActions = true, -- if true, and the player job is configured here they can see the boss actions(only if the player hash boss rank)
        management = {
            duty = false,       -- if true, employees can go on/off duty
            -- Boss actions
            deposit = false,    -- if true, the boss can deposit money into the company
            withdraw = false,   -- if true, the boss can withdraw money from the company
            hire = true,       -- if true, the boss can hire employees
            fire = true,       -- if true, the boss can fire employees
            promote = true,    -- if true, the boss can promote employees
        }
    },
    {
        job = "ambulance",
        name = "Doctors",
        icon = "https://cdn-icons-png.flaticon.com/64/790/790065.png",
        canCall = true,    -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        location = {
            name = "Pillbox",
            coords = {
                x = -495.12,
                y = -996.64
            }
        },
        hasJobActions = false,  -- if true, and the player job is configured here they can see the job actions
        hasBossActions = true, -- if true, and the player job is configured here they can see the boss actions(only if the player hash boss rank)
        management = {
            duty = false,       -- if true, employees can go on/off duty
            -- Boss actions
            deposit = false,    -- if true, the boss can deposit money into the company
            withdraw = false,   -- if true, the boss can withdraw money from the company
            hire = true,       -- if true, the boss can hire employees
            fire = true,       -- if true, the boss can fire employees
            promote = true,    -- if true, the boss can promote employees
        }
    },
    {
        job = "mechanic",
        name = "Mechanic",
        icon = "https://cdn-icons-png.flaticon.com/64/1505/1505456.png",
        canCall = true,    -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        location = {
            name = "LS Customs",
            coords = {
                x = 64.99,
                y = -1746.42
            }
        },
        hasJobActions = false,  -- if true, and the player job is configured here they can see the job actions
        hasBossActions = true, -- if true, and the player job is configured here they can see the boss actions(only if the player hash boss rank)
        management = {
            duty = false,       -- if true, employees can go on/off duty
            -- Boss actions
            deposit = false,    -- if true, the boss can deposit money into the company
            withdraw = false,   -- if true, the boss can withdraw money from the company
            hire = true,       -- if true, the boss can hire employees
            fire = true,       -- if true, the boss can fire employees
            promote = true,    -- if true, the boss can promote employees
        }
    },
    {
        job = "taxi",
        name = "Taxi",
        icon = "https://cdn-icons-png.flaticon.com/64/2282/2282410.png",
        canCall = true,    -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        location = {
            name = "Taxi HQ",
            coords = {
                x = 984.2,
                y = -219.0
            }
        },
        hasJobActions = false,  -- if true, and the player job is configured here they can see the job actions
        hasBossActions = true, -- if true, and the player job is configured here they can see the boss actions(only if the player hash boss rank)
        management = {
            duty = false,       -- if true, employees can go on/off duty
            -- Boss actions
            deposit = false,    -- if true, the boss can deposit money into the company
            withdraw = false,   -- if true, the boss can withdraw money from the company
            hire = true,       -- if true, the boss can hire employees
            fire = true,       -- if true, the boss can fire employees
            promote = true,    -- if true, the boss can promote employees
        }
    },
    {
        job = "burgershot",
        name = "Burgershot",
        icon = "https://r2.fivemanage.com/J1F1Rm3yV3UgyeHY0U4eU/images/bg.png",
        canCall = true,    -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        location = {
            name = "Best Burger in the city",
            coords = {
                x = -1188.05,
                y = -889.91
            }
        },
        hasJobActions = false,  -- if true, and the player job is configured here they can see the job actions
        hasJobActions = true, -- if true, and the player job is configured here they can see the boss actions(only if the player hash boss rank)
        management = {
            duty = false,       -- if true, employees can go on/off duty
            -- Boss actions
            deposit = true,    -- if true, the boss can deposit money into the company
            withdraw = true,   -- if true, the boss can withdraw money from the company
            hire = true,       -- if true, the boss can hire employees
            fire = true,       -- if true, the boss can fire employees
            promote = true,    -- if true, the boss can promote employees
        }
    },
    {
        job = "chillcafe",
        name = "Chill Cafe",
        icon = "https://r2.fivemanage.com/J1F1Rm3yV3UgyeHY0U4eU/images/Really_Best_Milk_Tea-removebg-preview.png",
        canCall = true,    -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        location = {
            name = "Best Cafe in the city",
            coords = {
                x = 180.31, 
                y = -234.47
            }
        },
        hasJobActions = false,  -- if true, and the player job is configured here they can see the job actions
        hasJobActions = true, -- if true, and the player job is configured here they can see the boss actions(only if the player hash boss rank)
        management = {
            duty = false,       -- if true, employees can go on/off duty
            -- Boss actions
            deposit = true,    -- if true, the boss can deposit money into the company
            withdraw = true,   -- if true, the boss can withdraw money from the company
            hire = true,       -- if true, the boss can hire employees
            fire = true,       -- if true, the boss can fire employees
            promote = true,    -- if true, the boss can promote employees
        }
    },
    {
        job = "genzadmins",
        name = "Admins Support",
        icon = "https://r2.fivemanage.com/J1F1Rm3yV3UgyeHY0U4eU/images/Add_a_heading_1.png",
        canCall = true,    -- if true, players can call the company
        canMessage = true, -- if true, players can message the company
        location = {
            name = "FIB Here to support",
            coords = {
                x = 0, 
                y = 0
            }
        },
        hasJobActions = false,  -- if true, and the player job is configured here they can see the job actions
        hasJobActions = true, -- if true, and the player job is configured here they can see the boss actions(only if the player hash boss rank)
        management = {
            duty = false,       -- if true, employees can go on/off duty
            -- Boss actions
            deposit = true,    -- if true, the boss can deposit money into the company
            withdraw = true,   -- if true, the boss can withdraw money from the company
            hire = true,       -- if true, the boss can hire employees
            fire = true,       -- if true, the boss can fire employees
            promote = true,    -- if true, the boss can promote employees
        }
    },
}
