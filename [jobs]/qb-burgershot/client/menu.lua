local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('rz:eat:craftmenu', function()
    exports['qb-menu']:openMenu({
        {
            header = "Craft Menu",
            isMenuHeader = true,
        },
        {
            id = 1,
            header = "Small Craft",
            txt = "Make small food items",
            params = {
                event = "qb-burgershot:smallpacket",
            }
        },
        {
            id = 2,
            header = "Big Craft",
            txt = "Make big food items",
            params = {
                event = "qb-burgershot:bigpacket",
            }
        },
        {
            id = 3,
            header = "Goat Craft",
            txt = "Make goat-related items",
            params = {
                event = "qb-burgershot:goatpacket",
            }
        },
        {
            id = 4,
            header = "Coffee Craft",
            txt = "Make a cup of coffee",
            params = {
                event = "qb-burgershot:coffeepacket",
            }
        },
        {
            header = "Close Menu",
            params = { 
                event = "qb-menu:client:closeMenu"
            }
        },
    })
end)

RegisterNetEvent('qb-burgershot:ordermenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Fridge",
            isMenuHeader = true
        },
        {
            header = "Order Items",
            txt = "Browse available items",
            params = {
                event = "rz:burgershot:shop"
            }
        },
        {
            header = "Fridge Items",
            txt = "Fridge inventory",
            params = {
                event = "qb-burgershot:storge2"
            }
        },
        { 
            header = "Macaroon",
            txt = "Make a macaroon",
            params = {
                event = "qb-burgershot:client:macaroon",
            }
        },
        { 
            header = "Ice Cream Station",
            txt = "Make some ice cream",
            params = {
                event = "qb-burgershot:icecream",
            }
        },
        {
            header = "Close Menu", 
            params = { 
                event = "qb-menu:client:closeMenu"
            }
        },
    })
end)

RegisterNetEvent('qb-burgershot:dutymenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Duty Menu",
            isMenuHeader = true
        },
        { 
            header = "Turn On/Off Duty",
            params = {
                event = "qb-burgershot:duty",
            }
        },
        {
            header = "Close Menu",
            params = { 
                event = "qb-menu:client:closeMenu"
            }
        },
    })
end)

RegisterNetEvent('qb-burgershot:friesmenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Fries Menu",
            isMenuHeader = true
        },
        { 
            header = "Fries List",
            txt = "Choose your fries",
            params = {
                event = "qb-burgershot:friestlist",
            }
        },
        {
            header = "Close Menu",
            params = { 
                event = "qb-menu:client:closeMenu"
            }
        },
    })
end)

RegisterNetEvent('qb-burgershot:friestlist', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Fries List Menu",
            isMenuHeader = true
        },
        { 
            header = "Big Potato",
            txt = "Big Potato Fries",
            params = {
                event = "qb-burgershot:client:bigpotato",
            }
        },
        { 
            header = "Small Potato",
            txt = "Small Potato Fries",
            params = {
                event = "qb-burgershot:client:smallpotato",
            }
        },
        { 
            header = "Onion Rings",
            txt = "Crispy Onion Rings",
            params = {
                event = "qb-burgershot:client:onionrings",
            }
        },
        { 
            header = "Chicken Nuggets",
            txt = "Golden Chicken Nuggets",
            params = {
                event = "qb-burgershot:client:nuggets",
            }
        },
        {
            header = "Chicken Legs",
            txt = "Golden Chicken Legs",
            params = {
                event = "qb-burgershot:client:chickenlegs",
            }
        },
        
        { 
            header = "Back to Menu",
            params = {
                event = "qb-burgershot:friesmenu",
            }
        },
    })
end)

RegisterNetEvent('qb-burgershot:meatmenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Meat Menu",
            isMenuHeader = true
        },
        { 
            header = "Meat Options",
            txt = "Choose your meat",
            params = {
                event = "qb-burgershot:client:meat",
            }
        },
    })
end)

RegisterNetEvent('qb-burgershot:drinkmenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Drink List Menu",
            isMenuHeader = true
        },
        { 
            header = "Mojito Slushy",
            txt = "Glass of Mojito Slushy",
            params = {
                event = "qb-burgershot:client:mojitoslushy",
            }
        },
        { 
            header = "Fanta",
            txt = "Glass of Fanta",
            params = {
                event = "qb-burgershot:client:fanta",
            }
        },
        { 
            header = "Sprite",
            txt = "Glass of Sprite",
            params = {
                event = "qb-burgershot:client:sprite",
            }
        },
        { 
            header = "Big Size Cola",
            txt = "Big Cola Drink",
            params = {
                event = "qb-burgershot:client:bigcola",
            }
        },
        { 
            header = "Small Size Cola",
            txt = "Small Cola Drink",
            params = {
                event = "qb-burgershot:client:smallcola",
            }
        },
        { 
            header = "Coffee",
            txt = "A cup of coffee",
            params = {
                event = "qb-burgershot:client:coffee",
            }
        },
    })
end)

RegisterNetEvent('qb-burgershot:burgermenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Burger Menu",
            isMenuHeader = true
        },
        { 
            header = "Bleeder Burger",
            txt = "Juicy Bleeder Burger",
            params = {
                event = "qb-burgershot:client:bleederburger",
            }
        },
        { 
            header = "Big King Burger",
            txt = "Eat like a king",
            params = {
                event = "qb-burgershot:client:bigkingburger",
            }
        },
        { 
            header = "Wrap",
            txt = "Tasty Wrap",
            params = {
                event = "qb-burgershot:client:wrap",
            }
        },
        { 
            header = "Smoky BBQ Burger",
            txt = "Smoky BBQ Burger",
            params = {
                event = "qb-burgershot:client:smokyburger",
            }
        },
        { 
            header = "Double Cheese Burger",
            txt = "More cheese, more love",
            params = {
                event = "qb-burgershot:client:cheeseburger",
            }
        },
    })
end)


RegisterNetEvent('qb-burgershot:icecream', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Ice Cream Menu",
            isMenuHeader = true
        },
        { 
            header = "Chocolate Ice Cream",
            params = {
                event = "qb-burgershot:client:chocolateicecream",
            }
        },
        { 
            header = "Vanilla Ice Cream",
            params = {
                event = "qb-burgershot:client:vanillaicecream",
            }
        },
        { 
            header = "Smurfs Ice Cream",
            params = {
                event = "qb-burgershot:client:thesmurfsicecream",
            }
        },
        { 
            header = "Strawberry Ice Cream",
            params = {
                event = "qb-burgershot:client:strawberryicecream",
            }
        },
        { 
            header = "Matcha Ice Cream",
            params = {
                event = "qb-burgershot:client:matchaicecream",
            }
        },
        { 
            header = "Ube Ice Cream",
            params = {
                event = "qb-burgershot:client:ubeicecream",
            }
        },
        { 
            header = "Smurfette Ice Cream",
            params = {
                event = "qb-burgershot:client:smurfetteicecream",
            }
        },
        { 
            header = "Unicorn Ice Cream",
            params = {
                event = "qb-burgershot:client:unicornicecream",
            }
        },
        { 
            header = "Back to Menu",
            params = {
                event = "qb-burgershot:ordermenu",
            }
        },
    })
end)

RegisterNetEvent('qb-burgershot:sellpacket', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "Packet Menu",
            isMenuHeader = true
        },
        { 
            header = "Small Packet",
            params = {
                event = "qb-burgershot:client:startdeliverysmall",
            }
        },
        { 
            header = "Big Packet",
            params = {
                event = "qb-burgershot:client:startdeliverybig",
            }
        },
    })
end)


exports['qb-target']:AddCircleZone('duty', vector3(Config.Duty.x, Config.Duty.y, Config.Duty.z), 1.0,{
    name = 'duty', debugPoly = false, useZ=true}, {
    options = {{label = Lang:t("label.duty") ,icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('qb-burgershot:dutymenu') end}},
    distance = 1.0
})

exports['qb-target']:AddCircleZone('tray', vector3(Config.Tray.x, Config.Tray.y, Config.Tray.z), 1.0,{
    name = 'tray', debugPoly = false, useZ=true}, {
    options = {{label = Lang:t("label.tray") ,icon = 'fa-solid fa-hand-holding', action = function() TriggerEvent('qb-burgershot:tray') end}},
    distance = 2.0
})

exports['qb-target']:AddCircleZone('tray2', vector3(Config.Tray2.x, Config.Tray2.y, Config.Tray2.z), 1.0,{
    name = 'tray2', debugPoly = false, useZ=true}, {
    options = {{label = Lang:t("label.tray") ,icon = 'fa-solid fa-hand-holding',  action = function() TriggerEvent('qb-burgershot:tray2') end}},
    distance = 2.0
})

exports['qb-target']:AddCircleZone('Storge', vector3(Config.Storge.x, Config.Storge.y, Config.Storge.z), 1.0,{
    name = 'Storge', debugPoly = false, useZ=true}, {
    options = {{label = Lang:t("label.storge") ,icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('qb-burgershot:storge') end}},
    distance = 1.0
})

exports['qb-target']:AddCircleZone('Fridge', vector3(Config.Fridge.x, Config.Fridge.y, Config.Fridge.z), 1.0,{
    name = 'Fridge', debugPoly = false, useZ=true}, {
    options = {{label = Lang:t("label.Fridge") ,icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('qb-burgershot:ordermenu') end}},
    distance = 1.0
})

exports['qb-target']:AddCircleZone('Fries', vector3(Config.Fries.x, Config.Fries.y, Config.Fries.z), 1.0,{
    name = 'Fries', debugPoly = false, useZ=true}, {
    options = {{label = Lang:t("label.Fries") ,icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('qb-burgershot:friesmenu') end}},
    distance = 1.0
})

exports['qb-target']:AddCircleZone('Drink', vector3(Config.Drink.x, Config.Drink.y, Config.Drink.z), 1.0,{
    name = 'Drink', debugPoly = false, useZ=true}, {
    options = {{label = Lang:t("label.Drink") ,icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('qb-burgershot:drinkmenu') end}},
    distance = 1.0
})

exports['qb-target']:AddCircleZone('Meat', vector3(Config.MeatStation.x, Config.MeatStation.y, Config.MeatStation.z), 1.0,{
    name = 'Meat', debugPoly = false, useZ=true}, {
    options = {{label = Lang:t("label.Meat") ,icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('qb-burgershot:meatmenu') end}},
    distance = 1.0
})

exports['qb-target']:AddCircleZone('BurgerStation', vector3(Config.BurgerStation.x, Config.BurgerStation.y, Config.BurgerStation.z), 1.0,{
    name = 'BurgerStation', debugPoly = false, useZ=true}, {
    options = {{label = Lang:t("label.BurgerStation") ,icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('qb-burgershot:burgermenu') end}},
    distance = 1.0
})

exports['qb-target']:AddCircleZone('PackageStation', vector3(Config.PackageStation.x, Config.PackageStation.y, Config.PackageStation.z), 1.0,{
    name = 'PackageStation', debugPoly = false, useZ=true}, {
    options = {{label = Lang:t("label.PackageStation") ,icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('rz:eat:craftmenu') end}},
    distance = 1.0
})


exports['qb-target']:AddCircleZone('Clean', vector3(Config.Clean.x, Config.Clean.y, Config.Clean.z), 1.0,{
    name = 'Clean', debugPoly = false, useZ=true}, {
    options = {{label = Lang:t("label.Clean") ,icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('qb-burgershot:client:clean') end}},
    distance = 1.0
})

exports['qb-target']:AddCircleZone('SellItem', vector3(Config.SellItem.x, Config.SellItem.y, Config.SellItem.z), 1.0,{
    name = 'SellItem', debugPoly = false, useZ=true}, {
    options = {{label = Lang:t("label.SellItem") ,icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('qb-burgershot:sellpacket') end}},
    distance = 1.0
})

exports['qb-target']:AddCircleZone('Finish', vector3(Config.Finish.x, Config.Finish.y, Config.Finish.z), 2.0,{
    name = 'Finish', debugPoly = false, useZ=true}, {
    options = {{label = "Finish" ,icon = 'fa-solid fa-hand-holding', job = Config.Job, action = function() TriggerEvent('qb-burgershot:client:sellingfinish') end}},
    distance = 2.0
})





