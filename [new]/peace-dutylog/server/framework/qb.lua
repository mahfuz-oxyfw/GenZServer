CreateThread(function()
    if Config.framework ~= 'QB' then return end
	
    QBCore = exports['qb-core']:GetCoreObject()

-- GetPlayer

function GetPlayer(source)
    local player = QBCore.Functions.GetPlayer(source)
    return player
end

-- Récupère l'état de service du joueur
function IsPlayerOnDuty(player)
    local playerData = QBCore.Functions.GetPlayer(player).PlayerData
    if playerData.job and playerData.job.onduty then
        return true
    else
        return false
    end
end

-- Récupère le métier du joueur
function GetPlayerJob(player)
    local playerData = QBCore.Functions.GetPlayer(player).PlayerData
    if playerData.job then
        return playerData.job
    else
        return nil
    end
end

-- Récupère le nom du métier du joueur
function GetPlayerJobName(player)
    local playerData = QBCore.Functions.GetPlayer(player).PlayerData
	print(json.encode())
    if playerData.job and playerData.job.name then
        return playerData.job.name
    else
        return nil
    end
end

-- CitizenID

function GetCitizenID(source)
    print(source)
    local playerData = QBCore.Functions.GetPlayer(source).PlayerData
    if playerData.citizenid then
        return playerData.citizenid
    else
        return nil
    end
end

-- FirstName and Lastname 

function GetName(source)
    local playerData = QBCore.Functions.GetPlayer(source).PlayerData
    if playerData.charinfo then
        return playerData.charinfo.firstname .. ' ' .. playerData.charinfo.lastname .. ''
    else
        return nil
    end
end

-- GetIdentifier
function GetIdentifier(source, identifierType)
    local identifiers = GetPlayerIdentifiers(source)
    
    for _, identifier in ipairs(identifiers) do
        if identifierType == 'discord' and string.sub(identifier, 1, string.len("discord:")) == "discord:" then
            return identifier
        elseif identifierType == 'license' and string.sub(identifier, 1, string.len("license:")) == "license:" then
            return identifier
        end
    end

    return nil
end

function GetPlayerId(player)
    local playerData = QBCore.Functions.GetPlayer(player).PlayerData
    if playerData.source then
        return playerData.source
    else
        return nil
    end
end

function GetDutyLogsByJob(jobName, callback)
    local allPlayers = {}
    MySQL.Async.fetchAll("SELECT citizenid, charinfo, JSON_EXTRACT(job, '$.onduty') as onduty FROM players WHERE JSON_EXTRACT(job, '$.name') = @job", {
        ['@job'] = jobName
    }, function(players)

        local remainingPlayers = #players

        for _, player in pairs(players) do
            local citizenId = player.citizenid
            local charinfo = json.decode(player.charinfo)

            if charinfo and charinfo.firstname and charinfo.lastname then
                local playerName = charinfo.firstname .. ' ' .. charinfo.lastname
                local onduty = json.decode(player.onduty)

                GetDutyLogInformation(citizenId, jobName, function(timestamps)
                    allPlayers[citizenId] = {
                        name = playerName,
                        timestamps = timestamps,
                        onduty = onduty,

                    }

                    remainingPlayers = remainingPlayers - 1

                    if remainingPlayers == 0 then
                        callback(allPlayers)
                    end
                end)
            end
        end

        if #players == 0 then
            callback(allPlayers)
        end
    end)
end

RegisterNetEvent('wasabi_police:svToggleDuty', function(job, grade)
    if Config.WasabiScripts then
        local src = source
        local onDuty = QBCore.Functions.GetPlayer(src).PlayerData.job.onduty

        if onDuty then
        TriggerClientEvent("QBCore:Client:SetDuty", src, false)
        else
	    TriggerClientEvent("QBCore:Client:SetDuty", src, true)
        end
	end
end)

RegisterNetEvent('wasabi_ambulance:svToggleDuty', function(job, grade)
    if Config.WasabiScripts then
        local src = source
        local onDuty = QBCore.Functions.GetPlayer(src).PlayerData.job.onduty

        if onDuty then
        TriggerClientEvent("QBCore:Client:SetDuty", src, false)
        else
	    TriggerClientEvent("QBCore:Client:SetDuty", src, true)
        end
	end
end)

end)