-- IF YOU HAVE ANY PROBLEM OR DO YOU NEED HELP PLS COME TO MY DISCORD SERVER AND CREATE A TICKET
-- IF YOU DONT HAVE ANY PROBLEM YET AGAIN COME TO MY DISCORD :)
-- https://discord.gg/NCHub

NCHub = {}

NCHub.Framework = "qb" -- qb / oldqb | qb = export system | oldqb = triggerevent system
NCHub.Mysql = "oxmysql" -- Check fxmanifest.lua when you change it! | ghmattimysql / oxmysql / mysql-async
NCHub.OpenCommand = nil
NCHub.DefaultGarage = "motelgarage" -- purchased vehicles will be sent to this garage
NCHub.RewardCoin = 10
NCHub.NeededPlayTime = 25 -- Minutes

NCHub.Language = {
    title1 = "GZ",
    title2 = "Playtime",
    coin = "COIN",
    nextReward = "FOR THE NEXT COIN REWARD",
    exit = "EXIT",
    reward = "REWARD :",
    title3 = "TOP",
    title4 = "PLAYERS",
    title5 = "PLAYTIME",
    title6 = "SHOP",
    cancel = "CANCEL",
    buy = "BUY",
    accept = "ACCEPT",
    realCurrency = "$",
    nextPage = "NEXT PAGE",
    previousPage = "PRIVIOUS PAGE",
    succesfully = "SUCCESSFULLY",
    purchased = "PURCHASED",
    invalidCode = "INVALID CODE!",
    thxForPurch = "Thanks for purchasing!",
    top = "TOP",
    youDntHvEngMoney = "YOU DONT HAVE ENOUGH MONEY!",
    text6 = "6",
}

NCHub.Categories = {
    { category = "items", icon = "fa-solid fa-cookie-bite", items = {} }, -- do not touch items section..
    { category = "weapons", icon = "fa-solid fa-gun", items = {} }, -- do not touch items section..
    { category = "vehicles", icon = "fa-solid fa-car", items = {} }, -- do not touch items section..
}

-- itemType : vehicle, weapon, item, money
NCHub.Items = {
    --{ id = 1, itemName = "weapon_heavypistol", label = "HEAVY PISTOL", price = 500, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_heavypistol.png" },
    { id = 1, itemName = "weapon_combatpistol", label = "COMBAT PISTOL", price = 200, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_combatpistol.png" },
    { id = 2, itemName = "weapon_machete", label = "Machete", price = 3000, count = 1, itemType = "weapon", category = "weapons", image = "./images/machete.png" },
    { id = 3, itemName = "licenseplate", label = "Licenseplate", price = 10000, count = 1, itemType = "item", category = "items", image = "./images/licenseplate.png" },
    { id = 4, itemName = "bdrone", label = "BDrone", price = 1000, count = 1, itemType = "item", category = "items", image = "./images/bdrone.png" },
    { id = 5, itemName = "badrone", label = "BADrone", price = 2000, count = 1, itemType = "item", category = "items", image = "./images/badrone.png" },
    { id = 6, itemName = "bbdrone", label = "BBDrone", price = 3000, count = 1, itemType = "item", category = "items", image = "./images/bbdrone.png" },
    { id = 7, itemName = "bcdrone", label = "BCDrone", price = 4000, count = 1, itemType = "item", category = "items", image = "./images/bcdrone.png" },
    { id = 8, itemName = "bddrone", label = "BDDrone", price = 5000, count = 1, itemType = "item", category = "items", image = "./images/bddrone.png" },
    { id = 9, itemName = "weapon_battleaxe", label = "Battlekatana", price = 1000, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_battleaxe.png" },
    -- { id = 4, itemName = "weapon_advancedrifle", label = "ADVANCED RIFLE", price = 60, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_advancedrifle.png" },
    -- { id = 5, itemName = "weapon_smg", label = "SMG", price = 100, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_smg.png" },
    -- { id = 6, itemName = "weapon_specialcarbine", label = "SPECIAL CARBINE", price = 40, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_specialcarbine.png" },
    -- { id = 7, itemName = "weapon_specialcarbine_mk2", label = "SPECIAL CARBINE MK2", price = 35, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_specialcarbine_mk2.png" },
    -- { id = 8, itemName = "weapon_heavyshotgun", label = "HEAVY SHOTGUN", price = 65, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_heavyshotgun.png" },
    -- { id = 9, itemName = "weapon_combatpdw", label = "COMBAT PDW", price = 85, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_combatpdw.png" },
    -- { id = 10, itemName = "weapon_assaultrifle", label = "ASSAULT RIFLE", price = 110, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_assaultrifle.png" },
    -- { id = 11, itemName = "weapon_carbinerifle", label = "CARBINE RIFLE", price = 135, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_carbinerifle.png" },
    -- { id = 12, itemName = "weapon_bullpuprifle", label = "BULLPUP RIFLE", price = 125, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_bullpuprifle.png" },

    { id = 10, itemName = "weapon_katana", label = "katana", price = 2000, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_katana.png" },
    --{ id = 2, itemName = "weapon_knuckle", label = "KNUCKLE", price = 1000, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_knuckle.png" },
    --{ id = 2, itemName = "weapon_battleaxe", label = "Battlekatana", price = 1000, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_battleaxe.png" },
    -- { id = 14, itemName = "weapon_knife", label = "KNIFE", price = 95, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_knife.png" },
    -- { id = 15, itemName = "weapon_knuckle", label = "KNUCKLE", price = 65, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_knuckle.png" },
    -- { id = 16, itemName = "weapon_grenade", label = "GRENADE", price = 45, count = 1, itemType = "weapon", category = "weapons", image = "./images/weapon_grenade.png" },

    -- { id = 17, itemName = "advancedkit", label = "ADVANCED KIT", price = 25, count = 1, itemType = "item", category = "items", image = "./images/advancedkit.png" },
    { id = 18, itemName = "advancedlockpick", label = "ADVANCED LOCKPICK", price = 35, count = 1, itemType = "item", category = "items", image = "./images/advancedlockpick.png" },
    { id = 19, itemName = "armor", label = "ARMOR", price = 50, count = 1, itemType = "item", category = "items", image = "./images/armor.png" },
    --{ id = 20, itemName = "redphone", label = "Redphone", price = 5000, count = 1, itemType = "item", category = "items", image = "./images/redphone.png" },
    -- { id = 27, itemName = "pistol_ammo", label = "PISTOL AMMO", price = 15, count = 1, itemType = "item", category = "items", image = "./images/pistol_ammo.png" },
    -- { id = 28, itemName = "pistol_suppressor", label = "PISTOL SUPPRESSOR", price = 65, count = 1, itemType = "item", category = "items", image = "./images/pistol_suppressor.png" },
    -- { id = 29, itemName = "radio", label = "RADIO", price = 95, count = 1, itemType = "item", category = "items", image = "./images/radio.png" },

    -- { id = 30, itemName = "tezeract", label = "Cholena", price = 1000, count = 1, itemType = "vehicle", category = "vehicles", image = "./images/Tezeract.png" },
    { id = 31, itemName = "dv4r", label = "Ducati", price = 3500, count = 1, itemType = "vehicle", category = "vehicles", image = "./images/Ducati.png" },
    { id = 32, itemName = "m5f90c", label = "BMW M5", price = 3000, count = 1, itemType = "vehicle", category = "vehicles", image = "./images/bmwm4.png" },
    { id = 33, itemName = "i815", label = "Bmw I8", price = 3500, count = 1, itemType = "vehicle", category = "vehicles", image = "./images/bmwi8.png" },
    { id = 34, itemName = "ToyotaVan", label = "Storage 800", price = 2000, count = 1, itemType = "vehicle", category = "vehicles", image = "./images/Storagevan.png" },
    { id = 35, itemName = "sclgt63s", label = "Mercedes", price = 4000, count = 1, itemType = "vehicle", category = "vehicles", image = "./images/345.png" },
    { id = 36, itemName = "nissanr36", label = "GTR 36", price = 4500, count = 1, itemType = "vehicle", category = "vehicles", image = "./images/123.png" },
    { id = 37, itemName = "cupra22f", label = "Cupra", price = 5000, count = 1, itemType = "vehicle", category = "vehicles", image = "./images/Cupra.png" },
    --{ id = 38, itemName = "", label = "", price = 10000, count = 1, itemType = "vehicle", category = "vehicles", image = "./images/bmwm4.png" },
    --{ id = 39, itemName = "", label = "", price = 10000, count = 1, itemType = "vehicle", category = "vehicles", image = "./images/bmwm4.png" },
    
}

NCHub.CoinList = {
    { coinCount = 500, realPrice = 200, link = "https://sites.google.com/view/goldenstateroleplaybd/home", image = "./images/coin.png" },
    { coinCount = 1000, realPrice = 370, link = "https://sites.google.com/view/goldenstateroleplaybd/home", image = "./images/coin.png" },
    { coinCount = 1500, realPrice = 550, link = "https://sites.google.com/view/goldenstateroleplaybd/home", image = "./images/coin.png" },
    { coinCount = 2000, realPrice = 750, link = "https://sites.google.com/view/goldenstateroleplaybd/home", image = "./images/coin.png" },
    { coinCount = 3000, realPrice = 1100, link = "https://sites.google.com/view/goldenstateroleplaybd/home", image = "./images/coin.png" },
    { coinCount = 5000, realPrice = 1800, link = "https://sites.google.com/view/goldenstateroleplaybd/home", image = "./images/coin.png" },
    { coinCount = 10000, realPrice = 3600, link = "https://sites.google.com/view/goldenstateroleplaybd/home", image = "./images/coin.png" },
}