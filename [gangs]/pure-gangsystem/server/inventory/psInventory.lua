if Config.inventory ~= 'ps-inventory' then return end
local QBCore = exports['qb-core']:GetCoreObject()

function removeItem(source, item, amount)
    return exports['ps-inventory']:RemoveItem(source, item, amount)
end

function checkItem(source, item, amount)
    return exports['ps-inventory']:HasItem(source, item, amount)
end

function giveItem(source, item, amount)
    exports['ps-inventory']:AddItem(source, item, amount)
end

function createItem(name, trigger)
    QBCore.Functions.CreateUseableItem(name, function(source, item)
        TriggerClientEvent(trigger, source)
    end)
end

-- Add these to your qb-core/shared/items.lua
-- pure_tablet                  = {name = 'pure_tablet', label = 'Gang Tablet', weight = 100, type = 'item', image = 'pure_laptop.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A laptop hmmm'},
-- spraycan                     = {name = 'spraycan', label = 'Spraycan', weight = 100, type = 'item', image = 'pure_spraycan.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A spraycan'},
-- bp_bench                     = {name = 'bp_bench', label = 'BP Bench', weight = 100, type = 'item', image = 'pure_bench.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'A Blueprint Bench'},
-- paintstriper                 = {name = 'paintstriper', label = 'Paint Striper', weight = 100, type = 'item', image = 'pure_paintscraper.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Paint striper'},
-- boogieboard                  = {name = 'boogieboard', label = 'Boogieboard', weight = 100, type = 'item', image = 'pure_boogie.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'Boogieboard'},
-- brandybottle                 = {name = 'brandybottle', label = 'Brandy Bottle', weight = 100, type = 'item', image = 'pure_brandy.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'Brandy Bottle'},
-- dufflebag                    = {name = 'dufflebag', label = 'Dufflebag', weight = 100, type = 'item', image = 'pure_duffle.png', unique = false, useable = true, shouldClose = true, combinable = nil, description = 'Dufflebag'},
-- golfclub                     = {name = 'golfclub', label = 'Golfclub', weight = 100, type = 'item', image = 'pure_golfclub.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'Golfclub'},
-- wateringcan                  = {name = 'wateringcan', label = 'Wateringcan', weight = 100, type = 'item', image = 'pure_wateringcan.png', unique = false, useable = false, shouldClose = true, combinable = nil, description = 'Wateringcan'},