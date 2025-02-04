CreateThread(function()
    if Config.framework ~= 'ESX' then return end
    ESX = exports['es_extended']:getSharedObject()

-- GetPlayer

function GetPlayer(source)
    local player = ESX.GetPlayerFromId(source)
    return player
end

-- Récupère l'état de service du joueur
function IsPlayerOnDuty(player)
    local xPlayer = ESX.GetPlayerFromId(player)
    if xPlayer then
        local job = xPlayer.getJob()
        if job and job.onduty then
            return true
        end
    end
    return false
end

-- Récupère le métier du joueur
function GetPlayerJob(player)
    local xPlayer = ESX.GetPlayerFromId(player)
    if xPlayer then
        local job = xPlayer.getJob()
        return job
    end
    return nil
end

-- Récupère le nom du métier du joueur
function GetPlayerJobName(player)
    local xPlayer = ESX.GetPlayerFromId(player)
    if xPlayer then
        local job = xPlayer.getJob()
        if job and job.name then
            return job.name
        end
    end
    return nil
end

function GetPlayerId(player)
    return player
end

-- CitizenID

function GetCitizenID(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local Identifier = xPlayer.getIdentifier(source)
    if Identifier then
        return Identifier
    else
        return nil
    end
end

-- FirstName and Lastname 

function GetName(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local Name = xPlayer.getName()
    if Name then
        return Name
    else
        return nil
    end
end

-- GetIdentifier
function GetIdentifier(source, identifierType)
    local identifiers = GetPlayerIdentifiers(source)

    for _, identifier in ipairs(identifiers) do
        if identifierType == 'discord' and string.sub(identifier, 1, string.len("discord:")) == "discord:" then
            return string.sub(identifier, string.len("discord:") + 1)
        elseif identifierType == 'license' and string.sub(identifier, 1, string.len("license:")) == "license:" then
            return string.sub(identifier, string.len("license:") + 1)
        elseif identifierType == 'steam' and string.sub(identifier, 1, string.len("steam:")) == "steam:" then
            return string.sub(identifier, string.len("steam:") + 1)
        end
    end

    return nil
end


function GetDutyLogsByJob(jobName, callback)
    local allPlayers = {}
    MySQL.Async.fetchAll("SELECT identifier, firstname, lastname, job, job_grade, Duty FROM users WHERE job = @job", {
        ['@job'] = jobName
    }, function(players)

        local remainingPlayers = #players

        for _, player in pairs(players) do
            local identifier = player.identifier
            local firstname = player.firstname
            local lastname = player.lastname
            local playerName = firstname .. ' ' .. lastname
            local onduty = player.Duty
			
            GetDutyLogInformation(identifier, jobName, function(timestamps)
                allPlayers[identifier] = {
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

        if #players == 0 then
            callback(allPlayers)
        end
    end)
end

RegisterServerEvent('peace-dutylog:server:SetDuty')
AddEventHandler('peace-dutylog:server:SetDuty', function(onDuty)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local identifier = GetIdentifier(src, 'steam')
	
    MySQL.Async.execute("UPDATE users SET Duty = @onDuty WHERE identifier = @identifier", {
        ['@onDuty'] = onDuty,
        ['@identifier'] = identifier
    }, function(rowsChanged)
	
        if rowsChanged > 0 then
			TriggerClientEvent("peace-dutylog:client:SetDuty", src, onDuty)
			
            print(('Duty mis à jour pour %s: %s'):format(identifier, onDuty))
        else
            print(('Échec de la mise à jour de Duty pour %s'):format(identifier))
        end
    end)
end)

ESX.RegisterServerCallback('peace-dutylog:server:GetDuty', function(src, cb)
    local identifier = GetIdentifier(src, 'steam')
	
    MySQL.Async.fetchScalar('SELECT Duty FROM users WHERE identifier = @identifier', {
        ['@identifier'] = identifier
    }, function(duty)
        cb(duty)
    end)

end)

RegisterNetEvent('wasabi_police:svToggleDuty', function(job, grade)
    if Config.WasabiScripts then
        local src = source
	    TriggerClientEvent("peace-dutylog:client:SendDuty", src)
	end
end)

RegisterNetEvent('wasabi_ambulance:svToggleDuty', function(job, grade)
    if Config.WasabiScripts then
        local src = source
	    TriggerClientEvent("peace-dutylog:client:SendDuty", src)
	end
end)


end)