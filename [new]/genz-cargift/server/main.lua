QBCore = exports['qb-core']:GetCoreObject()

-- Functions --

local function isAllowedToGiveCar(player)
    if IsPlayerAceAllowed(player, Config.AceGroup) then
        return true
    else
        return false
    end
end

-- Function credit: https://github.com/qbcore-framework/qb-vehicleshop
local function GeneratePlate()
    local plate = QBCore.Shared.RandomInt(1) .. QBCore.Shared.RandomStr(2) .. QBCore.Shared.RandomInt(3) .. QBCore.Shared.RandomStr(2)
    local result = MySQL.scalar.await('SELECT plate FROM player_vehicles WHERE plate = ?', { plate })
    if result then
        return GeneratePlate()
    else
        return plate:upper()
    end
end

-- Events --

RegisterNetEvent('gzrp-cargift:server:RequestCommands', function()
    local src = source
    if isAllowedToGiveCar(src) then
        TriggerClientEvent('gzrp-cargift:client:RequestCommands', src, true)
    end
end)

-- Commands --

RegisterCommand(Config.GiveCarCommand, function(source, args)
    if Config.CommandEnabled then
        local src = source
        local model = tostring(args[2])
        local id = tonumber(args[1])
        local plate = GeneratePlate()

        if id and model and IsPlayerAceAllowed(src, Config.AceGroup) then
            local xAdmin = QBCore.Functions.GetPlayer(src)
            local aName = xAdmin.PlayerData.name
            local xTarget = QBCore.Functions.GetPlayer(id)
            local cid = xTarget.PlayerData.citizenid

            MySQL.insert('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, state, garage, giver_admin) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)', {
                xTarget.PlayerData.license,
                cid,
                model,
                GetHashKey(model),
                '{}',
                plate,
                1,
                Config.Garage,
                aName
            })
            if Config.TextEnabled then
                TriggerClientEvent('gzrp-cargift:client:sendText', src, Lang:t('text_message.sender'), Lang:t('text_message.sender_subject'), Lang:t('text_message.sender_message', { model = model, plate = plate, recipient = GetPlayerName(id) }))
                TriggerClientEvent('gzrp-cargift:client:sendText', id, Lang:t('text_message.sender'), Lang:t('text_message.recipient_subject'), Lang:t('text_message.recipient_message', { model = model, plate = plate, garage = Config.GarageName }))
            else
                TriggerClientEvent('QBCore:Notify', src, Lang:t('success.car_sent', { model = model, plate = plate, recipient = GetPlayerName(id) }))
                TriggerClientEvent('QBCore:Notify', id, Lang:t('info.car_received', { model = model, plate = plate }))
                Wait(5500)
                TriggerClientEvent('QBCore:Notify', id, Lang:t('info.retrieve_car', { garage = Config.GarageName }))
            end
        end
    end
end)