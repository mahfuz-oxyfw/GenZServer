QBCore = exports['qb-core']:GetCoreObject()
local time_out = {}

RegisterServerEvent("qb-cartracker", function(plate) 

    local xPlayers = QBCore.Functions.GetPlayers()

    for i=1, #xPlayers, 1 do
        local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])


        if xPlayer.PlayerData.job.name == 'police' then
            TriggerClientEvent("qb-cartracker:plate", xPlayers[i], plate)

        end

    end
end)

RegisterServerEvent("qb-cartracker:setActivePlates", function(plate)
    time_out[plate] = false
end)

RegisterServerEvent("qb-cartracker:removeActivePlate", function(plate)
    time_out[plate] = time_out[nil]
    local xPlayers = QBCore.Functions.GetPlayers()

    for i=1, #xPlayers, 1 do
        local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])


        if xPlayer.PlayerData.job.name == 'police' then
            TriggerClientEvent("qb-cartracker:updateActivePlate", xPlayers[i], plate)
        end

    end

end)

RegisterServerEvent("qb-cartracker:getActivePlates", function()
    TriggerClientEvent("qb-cartracker:getActivePlates", source, time_out)
end)


RegisterServerEvent("qb-cartracker:triggerTimer", function(plate)
    local xPlayers = QBCore.Functions.GetPlayers()
    local startTimer = os.time() + Config.removeTimer
    CreateThread(function()
        while os.time() < startTimer and time_out[plate] ~= nil do 
            Wait(5)
        end

        for i=1, #xPlayers, 1 do
            local xPlayer = QBCore.Functions.GetPlayer(xPlayers[i])
    
    
            if xPlayer.PlayerData.job.name == 'police' then
                TriggerClientEvent("qb-cartracker:updateTimer", xPlayers[i], plate)
            end
    
        end
    
    end)
end)

