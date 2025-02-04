if Config.inventory ~= 'esx' then return end

function removeItem(source, item, amount)
    local player = ESX.GetPlayerFromId(source)
    return player.removeInventoryItem(item, amount)
end

function checkItem(source, item, amount)
    local player = ESX.GetPlayerFromId(source)
    local esxAmount = player.getInventoryItem(item).count
    if esxAmount >= amount then return true end
    return false
end

function giveItem(source, item, amount)
    local player = ESX.GetPlayerFromId(source)
    return player.addInventoryItem(item, amount)
end

function createItem(name, trigger)
    ESX.RegisterUsableItem(name, function(source)
        TriggerClientEvent(trigger, source)
    end)
end

-- Run these to add to your db

--[[
INSERT INTO `items` (name, label, weight) VALUES
	('pure_tablet', 'pure_tablet', 2),
    ('bp_bench', 'Blueprint Bench', 2),
	('spraycan', 'Spraycan', 2),
    ('paintstriper', 'Paint Striper', 2)
    ('boogieboard', 'Boogieboard', 2),
	('brandybottle', 'Brandybottle', 2),
    ('dufflebag', 'Dufflebag', 2),
	('golfclub', 'Golfclub', 2),
	('wateringcan', 'Wateringcan', 2),
;
]]--