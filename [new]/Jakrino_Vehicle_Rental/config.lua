Config = Config or {}
Locales = Locales or {}

Config.Locales = 'EN' -- EN * TR --

Config.InteractType = {
    ["textui"]   = { useThis = false },
    ["drawtext"] = { useThis = false  },
    ["target"]   = { useThis = true },
}

Config.OneMore = 500 -- This value is a penalty for those who try to remove the vehicle again once the vehicle is removed and deleted or destroyed
Config.SQLScript = 'oxmysql' -- oxmysql * ghmattimysql * mysql-async
Config.MinRentDay = 2 -- Days
Config.MaxRentDay = 30 -- Days
Config.Tax = 10 -- Percentage

Config.VehicleRentals = {
    [1] = {
        npcSettings = { model = "s_m_y_valet_01", coords = vector4(845.97, -2992.61, 4.9, 181.89) },
        blipSettings = { id = 326, colour = 5, scale = 0.65, displayName = "Car Rental"},
        viewCoords = vector4(852.35, -2996.7, 5.9, 95.01),
        spawnCoords = vector4(852.35, -2996.7, 5.9, 95.01),
        categories = {"Cars", "Motorcycles", "Bicycles"}
    },
    [2] = {
        npcSettings = { model = "s_m_y_valet_01", coords = vector4(1696.8640, 3279.0237, 40.1396, 212.6614) },
        blipSettings = { id = 64, colour = 22, scale = 0.65, displayName = "Helicopter Rental"},
        viewCoords = vector4(1770.1366, 3239.7834, 42.2459, 103.0017),
        spawnCoords = vector4(1699.6395, 3249.4446, 41.0692, 104.8032),
        categories = {"Helicopters", "Armed-Helicopters", "Cargo-Series"}
    },
    [3] = {
        npcSettings = { model = "s_m_y_valet_01", coords = vector4(-729.7288, -1310.0464, 4.0004, 48.9748) },
        blipSettings = { id = 410, colour = 3, scale = 0.65, displayName = "Boat Rental"},
        viewCoords = vector4(-827.7631, -1469.8037, -0.0098, 18.6597),
        spawnCoords = vector4(-724.0052, -1353.0079, 0.1307, 138.5196),
        categories = {"Boats", "Luxury-Boats", "Jetski"}
    },
    [4] = {
        npcSettings = { model = "s_m_y_valet_01", coords = vector4(-941.5560, -2955.1121, 12.9451, 150.4492) },
        blipSettings = { id = 90, colour = 51, scale = 0.65, displayName = "Air Vehicles Rental"},
        viewCoords = vector4(-976.6277, -3006.2639, 14.5506, 60.3945),
        spawnCoords = vector4(-1002.8295, -3007.5823, 12.9449, 59.7110),
        categories = {"Aircraft", "Helicopters", "Cargo-Series"}
    }
}

Config.RentForVehicles = {
    ["Cars"] = {
        icon = "fa-solid fa-car-side",
        vehicles = {
            [1] = { model = "infernus", price = 1200 },
            [2] = { model = "virgo", price = 1000 },
            [3] = { model = "minivan", price = 1100 },
            [8] = { model = "blazer2", price = 800 }
        }
    },
    ["Motorcycles"] = {
        icon = "fa-solid fa-motorcycle",
        vehicles = {
            [1] = { model = "faggio", price = 500 },
            [2] = { model = "pcj", price = 400 }
        }
    },
    ["Bicycles"] = {
        icon = "fa-solid fa-bicycle",
        vehicles = {
            [1] = { model = "bmx", price = 50 },
            [2] = { model = "cruiser", price = 70 },
            [3] = { model = "fixter", price = 60 }
        }
    },
    ["Helicopters"] = {
        icon = "fa-solid fa-helicopter",
        vehicles = {
            [1] = { model = "seasparrow2", price = 5000 },
            [2] = { model = "conada", price = 6000 }
        }
    },
    -- ["Armed-Helicopters"] = {
    --     icon = "fa-solid fa-helicopter-symbol",
    --     vehicles = {
    --         [1] = { model = "buzzard", price = 2000 },
    --         [2] = { model = "valkyrie", price = 2200 },
    --         [3] = { model = "valkyrie2", price = 2100 },
    --         [4] = { model = "annihilator", price = 1900 }
    --     }
    -- },

    ["Cargo-Series"] = {
        icon = "fa-solid fa-helicopter-symbol",
        vehicles = {
            [1] = { model = "cargobob", price = 10000 },
            [2] = { model = "cargobob", price = 10000 }
        }
    },
    ["Boats"] = {
        icon = "fa-solid fa-anchor",
        vehicles = {
            [1] = { model = "tropic", price = 2200 },
            [2] = { model = "tropic2", price = 2000 },
            [3] = { model = "suntrap", price = 1000 },
            [4] = { model = "squalo", price = 1900 },
            [5] = { model = "jetmax", price = 3000 },
            [6] = { model = "dinghy", price = 2100 },
            [7] = { model = "dinghy2", price = 1900 },
            [8] = { model = "dinghy3", price = 2000 },
            [9] = { model = "dinghy4", price = 2200 }
        }
    },
    ["Luxury-Boats"] = {
        icon = "fa-solid fa-ferry",
        vehicles = {
            [1] = { model = "longfin", price = 1900 },
            [2] = { model = "toro", price = 2100 },
            [3] = { model = "toro2", price = 2200 },
            [4] = { model = "marquis", price = 2000 },
            [5] = { model = "speeder", price = 2200 },
            [6] = { model = "speeder2", price = 2000 },
        }
    },
    ["Jetski"] = {
        icon = "fa-solid fa-ship",
        vehicles = {
            [1] = { model = "seashark", price = 1900 },
            [2] = { model = "seashark3", price = 2100 }
        }
    },
    ["Aircraft"] = {
        icon = "fa-solid fa-plane",
        vehicles = {
            [1] = { model = "luxor", price = 20000 },
            [2] = { model = "luxor", price = 20000 }
        }
    }
}

-- Two Side
function Config.Notification(text, server, source)
    if server then
        -- TriggerClientEvent('esx:showNotification', source, text)
        TriggerClientEvent('QBCore:Notify', source, text)
    else
        -- TriggerEvent('esx:showNotification', text)
        TriggerEvent('QBCore:Notify', text)
    end
end

-- Client Side
function Config.Hud(bool)
    if bool then
        TriggerEvent("ShowHud")
    else
        TriggerEvent("HideHud")
    end
end

function Config.GiveKey(model, plate)
    TriggerEvent("vehiclekeys:client:SetOwner", plate)
end