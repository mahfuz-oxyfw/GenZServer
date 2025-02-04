local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem('burgershot_bagsmall', function(source) 
	TriggerClientEvent('qb-burgershot:CraftSmallBagItem', source) 
    TriggerClientEvent('QBCore:Notify', source, Lang:t("notify.success"), "primary", 1500)
end) 

RegisterNetEvent('qb-burgershot:SmallBagItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.SmallBag) do
        Player.Functions.AddItem(v, 1)
    end  
    Player.Functions.RemoveItem(Config.SmallBagItem , 1)  
end)

QBCore.Functions.CreateUseableItem('burgershot_bagbig', function(source) 
	TriggerClientEvent('qb-burgershot:CraftBigBagItem', source) 
    TriggerClientEvent('QBCore:Notify', source, Lang:t("notify.success"), "primary", 1500)
end)

RegisterNetEvent('qb-burgershot:BigBagItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.BigBag) do
        Player.Functions.AddItem(v, 1)
    end 
    Player.Functions.RemoveItem(Config.BigBagItem , 1)
    
end)

QBCore.Functions.CreateUseableItem('burgershot_baggoat', function(source) 
	TriggerClientEvent('qb-burgershot:CraftGoatMenuItem', source) 
    TriggerClientEvent('QBCore:Notify', source, Lang:t("notify.success"), "primary", 1500)
end)

RegisterNetEvent('qb-burgershot:GoatMenuItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.GoatBag) do
        Player.Functions.AddItem(v, 1)
    end 
    Player.Functions.RemoveItem(Config.GoatBagItem, 1)
    
end)

QBCore.Functions.CreateUseableItem('burgershot_bagcoffe', function(source) 
	TriggerClientEvent('qb-burgershot:CraftCoffeeMenuItem', source) 
    TriggerClientEvent('QBCore:Notify', source, Lang:t("notify.success"), "primary", 1500)
end)

RegisterNetEvent('qb-burgershot:CoffeeMenuItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.CoffeeBag) do
        Player.Functions.AddItem(v, 1)
    end 
    Player.Functions.RemoveItem(Config.CoffeeBagItem, 1)
    
end)

RegisterServerEvent('qb-burgershot:givetoyburgershot')
AddEventHandler('qb-burgershot:givetoyburgershot', function(key)
    local src = source
    local items = {"burgershot_toy1", "burgershot_toy2", "burgershot_toy3", "burgershot_toy4", "burgershot_toy5", "burgershot_toy6"}
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local item = items[math.random(1, #items)]
    local amount = 1
    if xPlayer.Functions.AddItem(item, amount) then
        TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.toy"), "primary")
    else
        TriggerClientEvent("QBCore:Notify", src, Lang:t("notify.heavy"), "error")
    end
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:smallpacket', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.BleederBurger)
    local item2 = Ply.Functions.GetItemByName(Config.SmallColaItem)
    local item3 = Ply.Functions.GetItemByName(Config.SmallPotato)
    if item1 ~= nil and item2 ~= nil and item3 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterNetEvent('qb-burgershot:add:smallpacket', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.SmallBag) do
        Player.Functions.RemoveItem(v)
    end
    Player.Functions.AddItem(Config.SmallBagItem, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.SmallBagItem], "add")
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:bigpacket', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.BigKingBurger)
    local item2 = Ply.Functions.GetItemByName(Config.BigColaItem)
    local item3 = Ply.Functions.GetItemByName(Config.BigPotato)
    if item1 ~= nil and item2 ~= nil and item3 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterNetEvent('qb-burgershot:add:bigpacket', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.BigBag) do
        Player.Functions.RemoveItem(v)
    end
    Player.Functions.AddItem(Config.BigBagItem, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.BigBagItem], "add")
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:goatpacket', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.Wrap)
    local item2 = Ply.Functions.GetItemByName(Config.Nuggets)
    local item3 = Ply.Functions.GetItemByName(Config.Rings)
    local item4 = Ply.Functions.GetItemByName(Config.BigColaItem)
    if item1 ~= nil and item2 ~= nil and item3 ~= nil and item4 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterNetEvent('qb-burgershot:add:goatpacket', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.GoatBag) do
        Player.Functions.RemoveItem(v)
    end
    Player.Functions.AddItem(Config.GoatBagItem, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.GoatBagItem], "add")
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:coffeepacket', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.CoffeeItem)
    local item2 = Ply.Functions.GetItemByName(Config.Macaroon)
    if item1 ~= nil and item2 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

RegisterNetEvent('qb-burgershot:add:coffeepacket', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    for k, v in pairs (Config.CoffeeBag) do
        Player.Functions.RemoveItem(v)
    end
    Player.Functions.AddItem(Config.CoffeeBagItem, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.CoffeeBagItem], "add")
end)

QBCore.Functions.CreateCallback('qb-burgershot:itemcheck', function(source, cb, item)
	local xPlayer = QBCore.Functions.GetPlayer(source)
    local itemcount = xPlayer.Functions.GetItemByName(item)
	if itemcount ~= nil then
		cb(true)
	else
        cb(false)
	end
end)

---------Burger Shot Job---------


RegisterNetEvent('qb-burgershot:server:burger_grill', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    local missingItems = {}
    
    local bread = Player.Functions.GetItemByName("burgershot_bread")
    local tomato = Player.Functions.GetItemByName("burgershot_tomato")
    local sauce = Player.Functions.GetItemByName("burgershot_sauce")
    local grilledMeat = Player.Functions.GetItemByName("burgershot_grilledmeat")
    local cheddar = Player.Functions.GetItemByName("burgershot_cheddar")
    local curly = Player.Functions.GetItemByName("burgershot_curly")

    if not bread then table.insert(missingItems, "Bread") end
    if not tomato then table.insert(missingItems, "Tomato") end
    if not sauce then table.insert(missingItems, "Sauce") end
    if not grilledMeat then table.insert(missingItems, "Grilled Meat") end
    if not cheddar then table.insert(missingItems, "Cheddar") end
    if not curly then table.insert(missingItems, "Curly") end

    if #missingItems == 0 then
        Player.Functions.RemoveItem("burgershot_bread", 1)
        Player.Functions.RemoveItem("burgershot_tomato", 1)
        Player.Functions.RemoveItem("burgershot_sauce", 1)
        Player.Functions.RemoveItem("burgershot_grilledmeat", 1)
        Player.Functions.RemoveItem("burgershot_cheddar", 1)
        Player.Functions.RemoveItem("burgershot_curly", 1)
        Player.Functions.AddItem("bzzz_food_grill_burger_grill_d", 1)
        TriggerClientEvent('QBCore:Notify', src, "You have made a Smoky BBQ Burger!", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "You are missing: " .. table.concat(missingItems, ", "), "error")
    end
end)



-- RegisterNetEvent('qb-burgershot:server:cheeseburger', function()
--     local src = source
--     local Player = QBCore.Functions.GetPlayer(src)
    
--     local missingItems = {}
    
--     local bread = Player.Functions.GetItemByName("burgershot_bread")
--     local tomato = Player.Functions.GetItemByName("burgershot_tomato")
--     local sauce = Player.Functions.GetItemByName("burgershot_sauce")
--     local meat = Player.Functions.GetItemByName("burgershot_meat")
--     local americanCheese = Player.Functions.GetItemByName("burgershot_americancheese")
--     local curly = Player.Functions.GetItemByName("burgershot_curly")

--     if not bread then table.insert(missingItems, "Bread") end
--     if not tomato then table.insert(missingItems, "Tomato") end
--     if not sauce then table.insert(missingItems, "Sauce") end
--     if not meat then table.insert(missingItems, "Meat") end
--     if not americanCheese then table.insert(missingItems, "American Cheese") end
--     if not curly then table.insert(missingItems, "Curly") end

--     if #missingItems == 0 then
--         Player.Functions.RemoveItem("burgershot_bread", 1)
--         Player.Functions.RemoveItem("burgershot_tomato", 1)
--         Player.Functions.RemoveItem("burgershot_sauce", 1)
--         Player.Functions.RemoveItem("burgershot_meat", 1)
--         Player.Functions.RemoveItem("burgershot_americancheese", 1)
--         Player.Functions.RemoveItem("burgershot_curly", 1)
--         Player.Functions.AddItem("bzzz_prop_fastfood_cheeseburger_a", 1)
--         TriggerClientEvent('QBCore:Notify', src, "You have made a Double Cheese Burger!", "success")
--     else
--         TriggerClientEvent('QBCore:Notify', src, "You are missing: " .. table.concat(missingItems, ", "), "error")
--     end
-- end)




















RegisterNetEvent('qb-burgershot:server:smokyburger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    local missingItems = {}
    
    local bread = Player.Functions.GetItemByName("burgershot_bread")
    local tomato = Player.Functions.GetItemByName("burgershot_tomato")
    local sauce = Player.Functions.GetItemByName("burgershot_sauce")
    local grilledMeat = Player.Functions.GetItemByName("burgershot_grilledmeat")
    local cheddar = Player.Functions.GetItemByName("burgershot_cheddar")
    local curly = Player.Functions.GetItemByName("burgershot_curly")

    if not bread then table.insert(missingItems, "Bread") end
    if not tomato then table.insert(missingItems, "Tomato") end
    if not sauce then table.insert(missingItems, "Sauce") end
    if not grilledMeat then table.insert(missingItems, "Grilled Meat") end
    if not cheddar then table.insert(missingItems, "Cheddar") end
    if not curly then table.insert(missingItems, "Curly") end

    if #missingItems == 0 then
        Player.Functions.RemoveItem("burgershot_bread", 1)
        Player.Functions.RemoveItem("burgershot_tomato", 1)
        Player.Functions.RemoveItem("burgershot_sauce", 1)
        Player.Functions.RemoveItem("burgershot_grilledmeat", 1)
        Player.Functions.RemoveItem("burgershot_cheddar", 1)
        Player.Functions.RemoveItem("burgershot_curly", 1)
        Player.Functions.AddItem("bzzz_food_grill_burger_grill_d", 1)
        TriggerClientEvent('QBCore:Notify', src, "You have made a Smoky BBQ Burger!", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "You are missing: " .. table.concat(missingItems, ", "), "error")
    end
end)

RegisterNetEvent('qb-burgershot:server:cheeseburger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    local missingItems = {}
    
    local bread = Player.Functions.GetItemByName("burgershot_bread")
    local tomato = Player.Functions.GetItemByName("burgershot_tomato")
    local sauce = Player.Functions.GetItemByName("burgershot_sauce")
    local meat = Player.Functions.GetItemByName("burgershot_meat")
    local americanCheese = Player.Functions.GetItemByName("burgershot_americancheese")
    local curly = Player.Functions.GetItemByName("burgershot_curly")

    if not bread then table.insert(missingItems, "Bread") end
    if not tomato then table.insert(missingItems, "Tomato") end
    if not sauce then table.insert(missingItems, "Sauce") end
    if not meat then table.insert(missingItems, "Meat") end
    if not americanCheese then table.insert(missingItems, "American Cheese") end
    if not curly then table.insert(missingItems, "Curly") end

    if #missingItems == 0 then
        Player.Functions.RemoveItem("burgershot_bread", 1)
        Player.Functions.RemoveItem("burgershot_tomato", 1)
        Player.Functions.RemoveItem("burgershot_sauce", 1)
        Player.Functions.RemoveItem("burgershot_meat", 1)
        Player.Functions.RemoveItem("burgershot_americancheese", 1)
        Player.Functions.RemoveItem("burgershot_curly", 1)
        Player.Functions.AddItem("bzzz_prop_fastfood_cheeseburger_a", 1)
        TriggerClientEvent('QBCore:Notify', src, "You have made a Double Cheese Burger!", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "You are missing: " .. table.concat(missingItems, ", "), "error")
    end
end)




































RegisterNetEvent('qb-burgershot:server:bigburger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    local missingItems = {}
    
    local bread = Player.Functions.GetItemByName("burgershot_bread")
    local tomato = Player.Functions.GetItemByName("burgershot_tomato")
    local sauce = Player.Functions.GetItemByName("burgershot_sauce")
    local grilledMeat = Player.Functions.GetItemByName("burgershot_grilledmeat")
    local cheddar = Player.Functions.GetItemByName("burgershot_cheddar")
    local curly = Player.Functions.GetItemByName("burgershot_curly")

    if not bread then table.insert(missingItems, "Bread") end
    if not tomato then table.insert(missingItems, "Tomato") end
    if not sauce then table.insert(missingItems, "Sauce") end
    if not grilledMeat then table.insert(missingItems, "Grilled Meat") end
    if not cheddar then table.insert(missingItems, "Cheddar") end
    if not curly then table.insert(missingItems, "Curly") end

    if #missingItems == 0 then
        Player.Functions.RemoveItem("burgershot_bread", 1)
        Player.Functions.RemoveItem("burgershot_tomato", 1)
        Player.Functions.RemoveItem("burgershot_sauce", 1)
        Player.Functions.RemoveItem("burgershot_grilledmeat", 1)
        Player.Functions.RemoveItem("burgershot_cheddar", 1)
        Player.Functions.RemoveItem("burgershot_curly", 1)
        Player.Functions.AddItem("bzzz_prop_fastfood_bigburger_a", 1)
        TriggerClientEvent('QBCore:Notify', src, "You have made a Big Burger!", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "You are missing: " .. table.concat(missingItems, ", "), "error")
    end
end)



RegisterNetEvent('qb-burgershot:server:onionrings', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    local missingItems = {}
    
    local flour = Player.Functions.GetItemByName("burgershot_flour")
    local water = Player.Functions.GetItemByName("burgershot_water")
    local egg = Player.Functions.GetItemByName("burgershot_egg")
    local onion = Player.Functions.GetItemByName("burgershot_onion")

    if not flour then table.insert(missingItems, "Flour") end
    if not water then table.insert(missingItems, "Water") end
    if not egg then table.insert(missingItems, "Egg") end
    if not onion then table.insert(missingItems, "Onion") end

    if #missingItems == 0 then
        Player.Functions.RemoveItem("burgershot_flour", 1)
        Player.Functions.RemoveItem("burgershot_water", 1)
        Player.Functions.RemoveItem("burgershot_egg", 1)
        Player.Functions.RemoveItem("burgershot_onion", 1)
        Player.Functions.AddItem("bzzz_prop_fastfood_onion_b", 1)
        TriggerClientEvent('QBCore:Notify', src, "You have made Onion Rings!", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "You are missing: " .. table.concat(missingItems, ", "), "error")
    end
end)



RegisterNetEvent('qb-burgershot:server:nuggets', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    local missingItems = {}
    
    local flour = Player.Functions.GetItemByName("burgershot_flour")
    local garlicSalt = Player.Functions.GetItemByName("burgershot_garlicsalt")
    local egg = Player.Functions.GetItemByName("burgershot_egg")
    local bonelessChicken = Player.Functions.GetItemByName("burgershot_bonelesschicken")

    if not flour then table.insert(missingItems, "Flour") end
    if not garlicSalt then table.insert(missingItems, "Garlic Salt") end
    if not egg then table.insert(missingItems, "Egg") end
    if not bonelessChicken then table.insert(missingItems, "Boneless Chicken") end

    if #missingItems == 0 then
        Player.Functions.RemoveItem("burgershot_flour", 1)
        Player.Functions.RemoveItem("burgershot_garlicsalt", 1)
        Player.Functions.RemoveItem("burgershot_egg", 1)
        Player.Functions.RemoveItem("burgershot_bonelesschicken", 1)
        Player.Functions.AddItem("bzzz_prop_fastfood_nugget_b", 1)
        TriggerClientEvent('QBCore:Notify', src, "You have made Chicken Nuggets!", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "You are missing: " .. table.concat(missingItems, ", "), "error")
    end
end)



RegisterNetEvent('qb-burgershot:server:chickenlegs', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    local missingItems = {}
    
    local flour = Player.Functions.GetItemByName("burgershot_flour")
    local garlicSalt = Player.Functions.GetItemByName("burgershot_garlicsalt")
    local sauce = Player.Functions.GetItemByName("burgershot_sauce")
    local egg = Player.Functions.GetItemByName("burgershot_egg")
    local chickenLegs = Player.Functions.GetItemByName("burgershot_chickenlegs")

    if not flour then table.insert(missingItems, "Flour") end
    if not garlicSalt then table.insert(missingItems, "Garlic Salt") end
    if not sauce then table.insert(missingItems, "Sauce") end
    if not egg then table.insert(missingItems, "Egg") end
    if not chickenLegs then table.insert(missingItems, "Chicken Legs") end

    if #missingItems == 0 then
        Player.Functions.RemoveItem("burgershot_flour", 1)
        Player.Functions.RemoveItem("burgershot_garlicsalt", 1)
        Player.Functions.RemoveItem("burgershot_sauce", 1)
        Player.Functions.RemoveItem("burgershot_egg", 1)
        Player.Functions.RemoveItem("burgershot_chickenlegs", 1)
        Player.Functions.AddItem("bzzz_prop_fastfood_chicken_a", 1)
        TriggerClientEvent('QBCore:Notify', src, "You have made Chicken Legs!", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "You are missing: " .. table.concat(missingItems, ", "), "error")
    end
end)









RegisterNetEvent('qb-burgershot:server:mojitoslushy', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    
    local missingItems = {}
    
    local bigEmptyGlass = Player.Functions.GetItemByName("burgershot_bigemptyglass")
    local sugar = Player.Functions.GetItemByName("burgershot_sugar")
    local water = Player.Functions.GetItemByName("burgershot_water")
    local freshMint = Player.Functions.GetItemByName("burgershot_freshmint")
    local lemon = Player.Functions.GetItemByName("burgershot_lemon")

    if not bigEmptyGlass then table.insert(missingItems, "Big Empty Glass") end
    if not sugar then table.insert(missingItems, "Sugar") end
    if not water then table.insert(missingItems, "Water") end
    if not freshMint then table.insert(missingItems, "Fresh Mint") end
    if not lemon then table.insert(missingItems, "Lemon") end

    if #missingItems == 0 then
        Player.Functions.RemoveItem("burgershot_bigemptyglass", 1)
        Player.Functions.RemoveItem("burgershot_sugar", 1)
        Player.Functions.RemoveItem("burgershot_water", 1)
        Player.Functions.RemoveItem("burgershot_freshmint", 1)
        Player.Functions.RemoveItem("burgershot_lemon", 1)
        Player.Functions.AddItem("mojitoslushy", 1)
        TriggerClientEvent('QBCore:Notify', src, "You have made a Mojito Slushy!", "success")
    else
        TriggerClientEvent('QBCore:Notify', src, "You are missing: " .. table.concat(missingItems, ", "), "error")
    end
end)


RegisterNetEvent('qb-burgershot:server:fanta', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("burgershot_bigemptyglass", 1)
    Player.Functions.AddItem("fanta", 1)
end)


RegisterNetEvent('qb-burgershot:server:sprite', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem("burgershot_bigemptyglass", 1)
    Player.Functions.AddItem("sprite", 1)
end)

RegisterNetEvent('qb-burgershot:server:bigcola', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.BigEmptyGlass, 1)
    Player.Functions.AddItem(Config.BigColaItem, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.BigColaItem], "add")
end)

RegisterNetEvent('qb-burgershot:server:smallcola', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.SmallEmptyGlass, 1)
    Player.Functions.AddItem(Config.SmallColaItem, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.SmallColaItem], "add")
end)

RegisterNetEvent('qb-burgershot:server:coffee', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.CoffeeEmptyGlass, 1)
    Player.Functions.AddItem(Config.CoffeeItem, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.CoffeeItem], "add")
end)

RegisterNetEvent('qb-burgershot:server:bigpotato', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.BigFrozenPotato, 1)
    Player.Functions.RemoveItem(Config.BigEmptyCardboard, 1)
    Player.Functions.AddItem(Config.BigPotato, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.BigPotato], "add")
end)

RegisterNetEvent('qb-burgershot:server:smallpotato', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.SmallFrozenPotato, 1)
    Player.Functions.RemoveItem(Config.SmallEmptyCardboard, 1)
    Player.Functions.AddItem(Config.SmallPotato, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.SmallPotato], "add")
end)

RegisterNetEvent('qb-burgershot:server:rings', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.FrozenRings, 1)
    Player.Functions.RemoveItem(Config.SmallEmptyCardboard, 1)
    Player.Functions.AddItem(Config.Rings, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Rings], "add")
end)


RegisterNetEvent('qb-burgershot:server:meat', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.FrozenMeat, 1)
    Player.Functions.AddItem(Config.Meat, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Meat], "add")
end)

RegisterNetEvent('qb-burgershot:server:bleederburger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Bread, 1)
    Player.Functions.RemoveItem(Config.Meat, 1)
    Player.Functions.RemoveItem(Config.Sauce, 1)
    Player.Functions.RemoveItem(Config.VegetableCurly, 1)
    Player.Functions.AddItem(Config.BleederBurger, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.BleederBurger], "add")
end)

RegisterNetEvent('qb-burgershot:server:bigkingburger', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Bread, 1)
    Player.Functions.RemoveItem(Config.Meat, 1)
    Player.Functions.RemoveItem(Config.Sauce, 1)
    Player.Functions.RemoveItem(Config.VegetableCurly, 1)
    Player.Functions.RemoveItem(Config.Cheddar, 1)
    Player.Functions.RemoveItem(Config.Tomato, 1)
    Player.Functions.AddItem(Config.BigKingBurger, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.BigKingBurger], "add")
end)

RegisterNetEvent('qb-burgershot:server:wrap', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Lavash, 1)
    Player.Functions.RemoveItem(Config.Meat, 1)
    Player.Functions.RemoveItem(Config.Sauce, 1)
    Player.Functions.RemoveItem(Config.VegetableCurly, 1)
    Player.Functions.RemoveItem(Config.Cheddar, 1)
    Player.Functions.RemoveItem(Config.Tomato, 1)
    Player.Functions.AddItem(Config.Wrap, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Wrap], "add")
end)
---
RegisterNetEvent('qb-burgershot:server:chocolateicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.ChocolateIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.ChocolateIceCream], "add")
end)

RegisterNetEvent('qb-burgershot:server:vanillaicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.VanillaIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.VanillaIceCream], "add")
end)

RegisterNetEvent('qb-burgershot:server:thesmurfsicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.ThesmurfsIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.ThesmurfsIceCream], "add")
end)

RegisterNetEvent('qb-burgershot:server:strawberryicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.StrawberryIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.StrawberryIceCream], "add")
end)

RegisterNetEvent('qb-burgershot:server:matchaicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.MatchaIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.MatchaIceCream], "add")
end)

RegisterNetEvent('qb-burgershot:server:ubeicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.UbeIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.UbeIceCream], "add")
end)

RegisterNetEvent('qb-burgershot:server:smurfetteicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.SmurfetteIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.SmurfetteIceCream], "add")
end)

RegisterNetEvent('qb-burgershot:server:unicornicecream', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(Config.Cone, 1)
    Player.Functions.AddItem(Config.UnicornIceCream, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.UnicornIceCream], "add")
end)

RegisterServerEvent('qb-burgershot:server:smallpacketsell')
AddEventHandler('qb-burgershot:server:smallpacketsell', function()
    local xPlayer = QBCore.Functions.GetPlayer(source)

    local smallbag = xPlayer.Functions.GetItemByName(Config.SmallBagItem)

    if smallbag ~= nil then
        xPlayer.Functions.RemoveItem(Config.SmallBagItem, 1)
        xPlayer.Functions.AddMoney('cash', Config.SmallBagSellPrice)
		TriggerClientEvent('QBCore:Notify', source, Lang:t("notify.deliverynotify") ..Config.SmallBagSellPrice, "primary", 5000)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.SmallBagItem], "remove", 1)
	end
end)

RegisterServerEvent('qb-burgershot:server:bigpacketsell')
AddEventHandler('qb-burgershot:server:bigpacketsell', function()
    local xPlayer = QBCore.Functions.GetPlayer(source)

    local bigbag = xPlayer.Functions.GetItemByName(Config.BigBagItem)

    if bigbag ~= nil then
        xPlayer.Functions.RemoveItem(Config.BigBagItem, 1)
        xPlayer.Functions.AddMoney('cash', Config.BigBagSellPrice)
		TriggerClientEvent('QBCore:Notify', source, Lang:t("notify.deliverynotify") ..Config.BigBagSellPrice, "primary", 5000)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Config.BigBagItem], "remove", 1)
	end
end)

RegisterNetEvent('qb-burgershot:server:macaroon', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(Config.Macaroon, 1)
    TriggerClientEvent("inventory:client:ItemBox", QBCore.Shared.Items[Config.Macaroon], "add")
end)



----------


QBCore.Functions.CreateCallback('rz:eat:server:get:bigpotato', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.BigFrozenPotato)
    local item2 = Ply.Functions.GetItemByName(Config.BigEmptyCardboard)
    if item1 ~= nil and item2 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:smallpotato', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.SmallFrozenPotato)
    local item2 = Ply.Functions.GetItemByName(Config.SmallEmptyCardboard)
    if item1 ~= nil and item2 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:rings', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.FrozenRings)
    local item2 = Ply.Functions.GetItemByName(Config.SmallEmptyCardboard)
    if item1 ~= nil and item2 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:nuggets', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.FrozenNuggets)
    local item2 = Ply.Functions.GetItemByName(Config.BigEmptyCardboard)
    if item1 ~= nil and item2 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:bleederburger', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.Bread)
    local item2 = Ply.Functions.GetItemByName(Config.Meat)
    local item3 = Ply.Functions.GetItemByName(Config.Sauce)
    local item4 = Ply.Functions.GetItemByName(Config.VegetableCurly)
    if item1 ~= nil and item2 ~= nil and item3 ~= nil and item4 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:bigkingburger', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.Bread)
    local item2 = Ply.Functions.GetItemByName(Config.Meat)
    local item3 = Ply.Functions.GetItemByName(Config.Sauce)
    local item4 = Ply.Functions.GetItemByName(Config.Cheddar)
    local item5 = Ply.Functions.GetItemByName(Config.Tomato)
    local item6 = Ply.Functions.GetItemByName(Config.VegetableCurly)
    if item1 ~= nil and item2 ~= nil and item3 ~= nil and item4 ~= nil and item5 ~= nil and item6 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('rz:eat:server:get:wrap', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local item1 = Ply.Functions.GetItemByName(Config.Lavash)
    local item2 = Ply.Functions.GetItemByName(Config.Meat)
    local item3 = Ply.Functions.GetItemByName(Config.Sauce)
    local item4 = Ply.Functions.GetItemByName(Config.Cheddar)
    local item5 = Ply.Functions.GetItemByName(Config.Tomato)
    local item6 = Ply.Functions.GetItemByName(Config.VegetableCurly)
    if item1 ~= nil and item2 ~= nil and item3 ~= nil and item4 ~= nil and item5 ~= nil and item6 ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

Citizen.CreateThread(function()
    local resourceName = "^2 qb-burgershot Started ("..GetCurrentResourceName()..")"
    print("\n^1----------------------------------------------------------------------------------^7")
    print(resourceName)
    print("^1----------------------------------------------------------------------------------^7")
end)
