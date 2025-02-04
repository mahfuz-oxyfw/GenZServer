
local QBCore = exports['qb-core']:GetCoreObject()
gsrData = {}

-- Server-side helper function

function GetNearestPlayer(source)
    local players = QBCore.Functions.GetPlayers()
    local srcPed = GetPlayerPed(source)
    local srcCoords = GetEntityCoords(srcPed)
    local nearestDistance = -1
    local nearestPlayer = nil
    local maxDistance = 3.0 -- Maximum distance to consider

    for _, playerId in ipairs(players) do
        if playerId ~= source then
            local targetPed = GetPlayerPed(playerId)
            if targetPed then
                local targetCoords = GetEntityCoords(targetPed)
                local distance = #(srcCoords - targetCoords)

                if nearestDistance == -1 or distance < nearestDistance then
                    nearestDistance = distance
                    nearestPlayer = playerId
                end
            end
        end
    end

    if nearestDistance ~= -1 and nearestDistance <= maxDistance then
        return nearestPlayer
    else
        return nil
    end
end


RegisterNetEvent('gsr:performTest', function()
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

    -- Check if the player has the 'leo' job type
    if xPlayer and xPlayer.PlayerData.job and xPlayer.PlayerData.job.type == 'leo' then
        local nearestPlayerId = GetNearestPlayer(src)

        if nearestPlayerId then
            local identifier = GetPlayerIdentifiers(nearestPlayerId)[1]
            if identifier then
                -- Perform the GSR check
                gsrcheck(src, identifier)
            else
                TriggerClientEvent("QBCore:Notify", src, 'Failed to retrieve target player identifier.', "error", 5000)
            end
        else
            TriggerClientEvent("QBCore:Notify", src, 'No nearby players to perform the GSR test.', "error", 5000)
        end
    else
        TriggerClientEvent("QBCore:Notify", src, 'You must be a cop to use the Gun Powder test.', "error", 5000)
    end
end)





lib.addCommand('gsr', {
    help = 'Do GSR Test',
    params = {
        {
            name = 'id',
            type = 'playerId',
            help = 'Player ID'
        }
    },
    restricted = false
 }, function(source, args)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local number = tonumber(args.id)
 
    if args.id ~= nil then
        if xPlayer.PlayerData.job.type == 'leo' and type(number) == "number" then
            CancelEvent()
            local identifier = GetPlayerIdentifiers(number)[1]
            if identifier ~= nil then
                gsrcheck(source, identifier)
            end
        else
            TriggerClientEvent("QBCore:Notify", src, 'You must be a cop to use the Gun Powder test', "error", 5000)
        end
    else
        TriggerClientEvent("QBCore:Notify", src, 'Correct Usage Is: /gsr (player id)', "error", 5000)
    end
end)

AddEventHandler('playerDropped', function()
    local src = source
    local identifier = GetPlayerIdentifiers(src)[1]
    if gsrData[identifier] ~= nil then
        gsrData[identifier] = nil
    end
end)

RegisterNetEvent("GSR:Remove")
AddEventHandler("GSR:Remove", function()
    local src = source
    local identifier = GetPlayerIdentifiers(src)[1]
    if gsrData[identifier] ~= nil then
        gsrData[identifier] = nil
    end
end)

RegisterServerEvent('GSR:SetGSR')
AddEventHandler('GSR:SetGSR', function()
    local src = source
    local identifier = GetPlayerIdentifiers(src)[1]
    gsrData[identifier] = os.time(os.date("!*t")) + Config.gsrTime
end)



function gsrcheck(source, identifier)
    local src = source
    local identifier = identifier
    local Player = QBCore.Functions.GetPlayer(identifier)
    if Player then
        local nameData = Player.PlayerData.charinfo
	    Wait(100)
        local fullName = string.format("%s %s", nameData.firstname, nameData.lastname)
        if gsrData[identifier] ~= nil then
            TriggerClientEvent("QBCore:Notify", src, 'Test for '..fullName..' comes back POSITIVE (Has Shot)', "success", 8000)
        else
            TriggerClientEvent("QBCore:Notify", src, 'Test for '..fullName..' comes back NEGATIVE (Has Not Shot)', "error", 8000)
        end
    end
end



QBCore.Functions.CreateCallback('GSR:Status', function(source, cb)
    local src = source
    local identifier = GetPlayerIdentifiers(src)[1]
    if gsrData[identifier] ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

function removeGSR()
    for k, v in pairs(gsrData) do
        if v <= os.time(os.date("!*t")) then
            gsrData[k] = nil
        end
    end
end

function gsrTimer()
    removeGSR()
    SetTimeout(Config.gsrAutoRemove, gsrTimer)
end

gsrTimer()

RegisterNetEvent('server:checkGSR')
AddEventHandler('server:checkGSR', function(targetPlayerId)
    local src = source

    local officer = QBCore.Functions.GetPlayer(src)
    local targetPlayer = QBCore.Functions.GetPlayer(targetPlayerId)

    if officer.PlayerData.job.type == 'leo' then
        if targetPlayer then
            local targetIdentifier = GetPlayerIdentifiers(targetPlayerId)[1]
            local hasGSR = gsrcheck(targetPlayerId, targetIdentifier)
            if hasGSR then
                TriggerClientEvent("QBCore:Notify", src, "GSR test positive for player ID: " .. targetPlayerId, "success")
            else
                TriggerClientEvent("QBCore:Notify", src, "GSR test negative for player ID: " .. targetPlayerId, "info")
            end
        else
            TriggerClientEvent("QBCore:Notify", src, "Player not found", "error")
        end
    else
        TriggerClientEvent("QBCore:Notify", src, 'You must be a cop to use the GSR test', "error")
    end
end)
