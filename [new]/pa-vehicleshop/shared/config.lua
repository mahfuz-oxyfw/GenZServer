Config = {
    ServerCallbacks = {}, -- Don't edit or change
    AutoDatabaseCreator = true, -- If you are starting the script for the first time, make this true and restart the script, after restarting, make this false otherwise you will get an error.
    TestDriveTime = 30000, -- Seconds 600000
    TeleportBackWhenTestFinishes = true, -- If false destroys the test vehicle's engine and sets it unusable again
    WarpPedToTestVehicle = true, -- If you activate it, a player will be automatically teleported to the driver's seat of a test vehicle when they pick it up.
    SalesShare = 10, -- The player making the sale receives a share of the entered amount from the sale.
    EnableSocietyAccount = false, -- Activate/deactivate management bank accounts
    Permissions = {"admin", "staff", "god"},
    VehicleShops = {
        {   
            ClearAreaOfNPCVehicles = false, -- If true script deletes default spawned NPC cars around the vehicle shop
            Management = {
                Enable = false,
                Job = "cardealer"
            },
            EnableStocks = false,
            AllowedCategories = {"sedans", "sportsclassics", "offroad", "cycles", "motorcycles", "vans", "super", "sports", "coupes", "compacts", "suvs", "muscle"},
            Coords = {
                ShowroomVehicles = vector4(134.82, -159.79, 54.79, 337.57),
                BoughtVehicles = vector4(145.1, -128.33, 54.83, 60.39),
                TestVehicles = vector4(145.1, -128.33, 54.83, 60.39),
                SellingPoint = vector3(115.97, -140.85, 54.86)
            },
            Ped = {
                Enable = true,
                Coords = vector4(113.85, -140.36, 54.86, 152.16),
                Model = "a_m_m_hasjew_01",
                animDict = "amb@world_human_tourist_map@male@base",
                animName = "base"
            },
            ShowroomVehicles = {
                {coords = vector4(125.41, -156.82, 53.79, 241.76)},
                {coords = vector4(143.32, -163.56, 53.79, 73.59)},
                {coords = vector4(113.24, -145.77, 59.76, 207.9)},
                {coords = vector4(117.4, -153.64, 59.76, 239.91)}
            },
            Blip = { -- https://docs.fivem.net/docs/game-references/blips/
                Enable = true,
                coords = vector3(113.87, -140.44, 53.86),
                sprite = 595,
                color = 38,
                scale = 0.8,
                text = "Dealership"
            },
            Interaction = {
                Target = {
                    Enable = true,
                    Distance = 2.0,
                    Label = "Open Showroom",
                    Icon = "fa-solid fa-car",
                    Label2 = "Open Management",
                    Icon2 = "fa-solid fa-car"
                },
                Text = {
                    Enable = false,
                    Distance = 3.0,
                    Label = "[E] Open Showroom | [G] Open Management"
                },
                DrawText = {
                    Enable = false,
                    Distance = 3.0,
                    Show = function()
                        exports["qb-core"]:DrawText("Open Showroom/Open Management", "E/G")
                    end,
                    Hide = function()
                        exports["qb-core"]:HideText()
                    end
                }
            }
        }
    }
}

-- Fuel Function
function Config.SetFuel(vehicle, fuel)
    exports["cdn-fuel"]:SetFuel(vehicle, fuel)
end

-- Key Function
function Config.GiveKey(plate)
    TriggerEvent('vehiclekeys:client:SetOwner', plate)
end

-- HUD Function
function Config.HUD(state)
    TriggerEvent('esx:toggleHUD', state)
    --TriggerEvent('ps-hud:display', state)
end

-- Management Function
function Config.AddManagementMoney(job, amount)
    exports['qb-management']:AddMoney(job, amount)
end