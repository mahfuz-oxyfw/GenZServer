local calls = {}
local callCount = 0
local QBCore = exports['qb-core']:GetCoreObject()
-- Functions
exports('GetDispatchCalls', function()
    return calls
end)

RegisterServerEvent('ps-dispatch:server:clearCalls', function()
    calls = {}
    callCount = 0
end)
-- Events
RegisterServerEvent('ps-dispatch:server:notify', function(data)
    callCount = callCount + 1
    data.id = callCount
    data.time = os.time() * 1000
    data.units = {}
    data.responses = {}

    if #calls > 0 then
        if calls[#calls] == data then
            return
        end
    end
        
    if #calls >= Config.MaxCallList then
        table.remove(calls, 1)
    end

    calls[#calls + 1] = data

    TriggerClientEvent('ps-dispatch:client:notify', -1, data)
end)

RegisterServerEvent('ps-dispatch:server:attach', function(id, player)
    for i=1, #calls do
        if calls[i]['id'] == id then
            for j = 1, #calls[i]['units'] do
                if calls[i]['units'][j]['citizenid'] == player.citizenid then
                    return
                end
            end
            calls[i]['units'][#calls[i]['units'] + 1] = player
            return
        end
    end
end)

RegisterServerEvent('ps-dispatch:server:detach', function(id, player)
    for i = #calls, 1, -1 do
        if calls[i]['id'] == id then
            if calls[i]['units'] and (#calls[i]['units'] or 0) > 0 then
                for j = #calls[i]['units'], 1, -1 do
                    if calls[i]['units'][j]['citizenid'] == player.citizenid then
                        table.remove(calls[i]['units'], j)
                    end
                end
            end
            return
        end
    end
end)

-- Callbacks
lib.callback.register('ps-dispatch:callback:getLatestDispatch', function(source)
    return calls[#calls]
end)

lib.callback.register('ps-dispatch:callback:getCalls', function(source)
    return calls
end)

-- Commands
lib.addCommand('dispatch', {
    help = locale('open_dispatch')
}, function(source, raw)
    TriggerClientEvent("ps-dispatch:client:openMenu", source, calls)
end)

lib.addCommand('911', {
    help = 'Send a message to Police',
    params = { { name = 'message', type = 'string', help = '911 Message' }},
}, function(source, args, raw)
    local fullMessage = raw:sub(5)
    TriggerClientEvent('ps-dispatch:client:sendEmergencyMsg', source, fullMessage, "911", false)
end)
lib.addCommand('911a', {
    help = 'Send an anonymous message to police',
    params = { { name = 'message', type = 'string', help = '911 Message' }},
}, function(source, args, raw)
    local fullMessage = raw:sub(5)
    TriggerClientEvent('ps-dispatch:client:sendEmergencyMsg', source, fullMessage, "911", true)
end)

lib.addCommand('999', {
    help = 'Send a message to EMS',
    params = { { name = 'message', type = 'string', help = '999 Message' }},
}, function(source, args, raw)
    local fullMessage = raw:sub(5)
    TriggerClientEvent('ps-dispatch:client:sendEmergencyMsg', source, fullMessage, "311", false)
end)

lib.addCommand('999a', {
    help = 'Send an anonymous message to EMS',
    params = { { name = 'message', type = 'string', help = '999 Message' }},
}, function(source, args, raw)
    local fullMessage = raw:sub(5)
    TriggerClientEvent('ps-dispatch:client:sendEmergencyMsg', source, fullMessage, "311", true)
end)


lib.addCommand('311', {
    help = 'Send a message to Mechanic',
    params = {
        { name = 'message', type = 'string', help = '311 Message' }
    },
}, function(source, args, raw)
    local fullMessage = raw:sub(5)
    local Player = QBCore.Functions.GetPlayer(source)
    local firstName = Player.PlayerData.charinfo.firstname
    local lastName = Player.PlayerData.charinfo.lastname
    local number = exports.yseries:GetPhoneNumberBySourceId(source)
    local playerPed = GetPlayerPed(source)
    local coords = GetEntityCoords(playerPed)
    local notifyMessage = string.format("[ID: %d] %s %s: %s \n\n Mobile: %s", source, firstName, lastName, fullMessage, number)
    for _, playerId in pairs(QBCore.Functions.GetPlayers()) do
        local xPlayer = QBCore.Functions.GetPlayer(playerId)
        if xPlayer and xPlayer.PlayerData.job then
            local jobName = xPlayer.PlayerData.job.name
            local onDuty = xPlayer.PlayerData.job.onduty
            if jobName == "mechanic" and onDuty then
                TriggerClientEvent('ps-dispatch:client:sendMechanic', playerId, coords)
                TriggerClientEvent('QBCore:Notify', playerId, notifyMessage, 'success', 45000)
            end
        end
    end
end)




QBCore.Commands.Add("911r", "Respond to a 911 call (LEO only)", {{name="id", help="Player ID"}, {name="message", help="Message to send"}}, false, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player and Player.PlayerData.job and Player.PlayerData.job.type == "leo" then
        local targetId = tonumber(args[1])
        local message = table.concat(args, " ", 2)
        if targetId and GetPlayerPing(targetId) > 0 then
            TriggerClientEvent('chat:addMessage', targetId, {
                color = { 255, 0, 0},
                multiline = true,
                args = {"911 REPLY", message}
            })
            TriggerClientEvent('QBCore:Notify', targetId, "911 Reply: " .. message, 'success')
            TriggerClientEvent('chat:addMessage', source, {
                color = { 255, 0, 0},
                multiline = true,
                args = {"911 REPLY", "You replied to 911 call"}
            })
            TriggerClientEvent('QBCore:Notify', source, "You replied to a 911 call", 'success')
        else
            TriggerClientEvent('chat:addMessage', source, {
                color = { 255, 0, 0},
                multiline = true,
                args = {"911 REPLY", "Invalid Player ID"}
            })
            TriggerClientEvent('QBCore:Notify', source, "Invalid Player ID", 'error')
        end
    end
end)

QBCore.Commands.Add("999r", "Respond to a 999 call (EMS only)", {{name="id", help="Player ID"}, {name="message", help="Message to send"}}, false, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player and Player.PlayerData.job and Player.PlayerData.job.name == "ambulance" then
        local targetId = tonumber(args[1])
        local message = table.concat(args, " ", 2)
        if targetId and GetPlayerPing(targetId) > 0 then
            TriggerClientEvent('chat:addMessage', targetId, {
                color = { 255, 0, 0},
                multiline = true,
                args = {"999 REPLY", message}
            })
            TriggerClientEvent('QBCore:Notify', targetId, "999 Reply: " .. message, 'success')
            TriggerClientEvent('chat:addMessage', source, {
                color = { 255, 0, 0},
                multiline = true,
                args = {"999 REPLY", "You replied to 999 call"}
            })
            TriggerClientEvent('QBCore:Notify', source, "You replied to a 999 call", 'success')
        else
            TriggerClientEvent('chat:addMessage', source, {
                color = { 255, 0, 0},
                multiline = true,
                args = {"999 REPLY", "Invalid Player ID"}
            })
            TriggerClientEvent('QBCore:Notify', source, "Invalid Player ID", 'error')
        end
    end
end)


QBCore.Commands.Add("311r", "Respond to a 999 call (Mechanic only)", {{name="id", help="Player ID"}, {name="message", help="Message to send"}}, false, function(source, args)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player and Player.PlayerData.job and Player.PlayerData.job.name == "mechanic" then
        local targetId = tonumber(args[1])
        local message = table.concat(args, " ", 2)
        if targetId and GetPlayerPing(targetId) > 0 then
            TriggerClientEvent('chat:addMessage', targetId, {
                color = { 255, 0, 0},
                multiline = true,
                args = {"311 REPLY", message}
            })
            TriggerClientEvent('QBCore:Notify', targetId, "311 Reply: " .. message, 'success')
            TriggerClientEvent('chat:addMessage', source, {
                color = { 255, 0, 0},
                multiline = true,
                args = {"311 REPLY", "You replied to 311 call"}
            })
            TriggerClientEvent('QBCore:Notify', source, "You replied to a 311 call", 'success')
        else
            TriggerClientEvent('chat:addMessage', source, {
                color = { 255, 0, 0},
                multiline = true,
                args = {"311 REPLY", "Invalid Player ID"}
            })
            TriggerClientEvent('QBCore:Notify', source, "Invalid Player ID", 'error')
        end
    end
end)
