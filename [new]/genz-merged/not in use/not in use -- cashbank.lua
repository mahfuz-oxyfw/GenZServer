-- Register the /cash command
QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand('cash', function(source, args, rawCommand)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    -- Get player's cash balance
    local cash = Player.PlayerData.money['cash']

    -- Send notification to player
    TriggerClientEvent('QBCore:Notify', src, "You have $" .. cash .. " in cash.", 'success')
end, false)

-- Register the /bank command
RegisterCommand('bank', function(source, args, rawCommand)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    -- Get player's bank balance
    local bank = Player.PlayerData.money['bank']

    -- Send notification to player
    TriggerClientEvent('QBCore:Notify', src, "You have $" .. bank .. " in your bank account.", 'success')
end, false)

-- Optional: Add suggestions for the commands in the chat
TriggerEvent('chat:addSuggestion', '/cash', 'Check your cash balance')
TriggerEvent('chat:addSuggestion', '/bank', 'Check your bank balance')
