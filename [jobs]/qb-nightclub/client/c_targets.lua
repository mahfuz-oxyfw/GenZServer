local QBCore = exports[Config.CoreName]:GetCoreObject()

----------------------------------------------------
--------- TARGETS
----------------------------------------------------

-- || ===============> Stash
-- exports[Config.Target]:AddBoxZone("StashTequila", vector3(-562.64, 289.87, 82.18), 0.7, 0.5, 
--     { name="StashTequila", heading = 355, debugPoly = false, minZ = 78.18, maxZ = 82.18 }, 
--     { options = { {  event = "qb-Tequila:Client:Storage", icon = "fas fa-box", label = "Stash", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Non Alcool
exports[Config.Target]:AddBoxZone("NonAlcool", vector3(-1389.77, -606.44, 30.32), 1.4, 0.5, 
    { name="NonAlcool", heading = 40, debugPoly = false, minZ = 26.32, maxZ = 30.32 }, 
    { options = { {   action = function() CraftNonAlcoholicMenu() end, icon = "fa-solid fa-martini-glass-citrus", label = "Non Alcoholic Drinks", job = Config.Job }, },  distance = 2.0 })

-- || ===============> Alcool
exports[Config.Target]:AddBoxZone("Alcool", vector3(-1391.03, -604.63, 30.32), 1.4, 0.5, 
    { name="Alcool", heading = 25, debugPoly = false, minZ =26.32, maxZ = 30.32 }, 
    { options = { {   action = function() CraftAlcoholicMenu() end, icon = "fa-solid fa-martini-glass-citrus", label = "Alcoholic Drinks", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Shop Tequila
exports[Config.Target]:AddBoxZone("ShopTequila", vector3(-1386.44, -609.05, 30.32), 1.0, 0.5, 
    { name="ShopTequila", heading = 300, debugPoly = false, minZ = 27.52, maxZ = 31.52 }, 
    { options = { {   event = "qb-Tequila:Client:OpenShop", icon = "fa-solid fa-martini-glass-citrus", label = "Shop", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Billing
exports[Config.Target]:AddBoxZone("Billing", vector3(-1390.36, -605.04, 30.32), 0.8, 0.5, 
    { name="Billing", heading = 30, debugPoly = false, minZ = 26.92, maxZ = 30.92 }, 
    { options = { {   event = "qb-Tequila:Client:Faturamento", icon = "fa-solid fa-money-bill", label = "Billing", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Duty
exports[Config.Target]:AddBoxZone("Duty", vector3(-562.78, 279.12, 82.98), 0.5, 0.5, 
    { name="Duty", heading = 356, debugPoly = false, minZ = 79.38, maxZ = 83.38 }, 
    { options = { {   action = function() Duty() end, icon = "fa-solid fa-clipboard-list", label = "Duty", job = Config.Job }, },  distance = 2.0 })
-- || ===============> Tray01
exports[Config.Target]:AddBoxZone("Tray01", vector3(-1390.62, -608.56, 30.32), 1.2, 0.5, 
    { name="Tray01", heading = 45, debugPoly = false, minZ = 26.72, maxZ = 30.72 }, 
    { options = { {  event = "qb-Tequila:Client:OpenTray01", icon = "fa-solid fa-clipboard-list", label = "Tray" }, },  distance = 2.0 })
-- || ===============> Tray02
exports[Config.Target]:AddBoxZone("Tray02", vector3(-1392.12, -606.84, 30.32), 1.4, 0.5,  
    { name="Tray02", heading = 20, debugPoly = false, minZ = 26.72, maxZ = 30.72 }, 
    { options = { {  event = "qb-Tequila:Client:OpenTray02", icon = "fa-solid fa-clipboard-list", label = "Tray" }, },  distance = 2.0 })
-- || ===============> Tray03
exports[Config.Target]:AddBoxZone("Tray03", vector3(-1393.34, -604.02, 30.32), 1, 0.5, 
    { name="Tray03", heading = 0, debugPoly = false, minZ = 26.72, maxZ = 30.72 }, 
    { options = { {  event = "qb-Tequila:Client:OpenTray03", icon = "fa-solid fa-clipboard-list", label = "Tray" }, },  distance = 2.0 })
-- || ===============> Tray04
-- exports[Config.Target]:AddBoxZone("Tray04", vector3(-560.94, 286.09, 82.18), 0.5, 0.3, 
--     { name="Tray04", heading = 355, debugPoly = false, minZ = 80.38, maxZ = 82.38 }, 
--     { options = { {  event = "qb-Tequila:Client:OpenTray04", icon = "fa-solid fa-clipboard-list", label = "Tray" }, },  distance = 2.0 })

-- RegisterNetEvent('qb-Tequila:Client:GoDown', function()
--     local ped = PlayerPedId()
--     SetEntityCoords(ped, vector4(-561.84, 289.8, 82.18, 177.1))
-- end)

-- RegisterNetEvent('qb-Tequila:Client:GoUp', function()
--     local ped = PlayerPedId()
--     SetEntityCoords(ped, vector4(-565.31, 284.59, 85.38, 352.43))
-- end)