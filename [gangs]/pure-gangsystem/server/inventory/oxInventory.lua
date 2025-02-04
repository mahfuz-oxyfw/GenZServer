if Config.inventory ~= 'ox_inventory' then return end

function removeItem(source, item, amount)
    return exports.ox_inventory:RemoveItem(source, item, amount)
end

function checkItem(source, item, amount)
    local oxAmount = exports.ox_inventory:Search(source, 'count', item)
    if not oxAmount then return end
    if oxAmount >= amount then return true end
    return
end

function giveItem(source, item, amount)
    local canCarry = exports.ox_inventory:CanCarryItem(source, item, amount)
    if not canCarry then return end
    local success, response = exports.ox_inventory:AddItem(source, item, amount)
    return success
end

function createItem(name, trigger)
    if Config.framework == 'esx' then
        ESX.RegisterUsableItem(name, function(source)
            TriggerClientEvent(trigger, source)
        end)
        return
    end
    local QBCore = exports['qb-core']:GetCoreObject()
    QBCore.Functions.CreateUseableItem(name, function(source, item)
        TriggerClientEvent(trigger, source)
    end)
end

-- Add these to your ox_inventory/data/items.lua
-- ['pure_tablet'] = {
--     label = 'pure_tablet',
--     weight = 100,
--     stack = false,
--     description = 'A Tablet hmmm'
-- },

-- ['bp_bench'] = {
--     label = 'Blueprint Bench',
--     weight = 100,
--     stack = false,
--     description = 'A Blueprint Bench that generates Blueprints'
-- },

-- ['spraycan'] = {
--     label = 'Spraycan',
--     weight = 100,
--     stack = true,
--     description = 'A Spraycan'
-- },

-- ['paintstriper'] = {
--     label = 'Paint striper',
--     weight = 100,
--     stack = true,
--     description = 'For stripping paint'
-- },

-- ['boogieboard'] = {
--     label = 'Boogieboard',
--     weight = 100,
--     stack = false,
--     description = 'A Boogieboard'
-- },

-- ['brandybottle'] = {
--     label = 'Brandy Bottle',
--     weight = 100,
--     stack = false,
--     description = 'A Bottle of Brandy'
-- },

-- ['dufflebag'] = {
--     label = 'Duffle Bag',
--     weight = 100,
--     stack = false,
--     description = 'A Duffle Bag'
-- },

-- ['golfclub'] = {
--     label = 'Golf Club',
--     weight = 100,
--     stack = true,
--     description = 'A Golf Club'
-- },

-- ['wateringcan'] = {
--     label = 'Watering Can',
--     weight = 100,
--     stack = true,
--     description = 'A Watering Can'
-- },