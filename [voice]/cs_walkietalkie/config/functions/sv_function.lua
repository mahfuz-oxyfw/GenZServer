if CodeStudio.ServerType == "QB" then
    QBCore = exports['qb-core']:GetCoreObject()
elseif CodeStudio.ServerType == "ESX" then 
    ESX = exports['es_extended']:getSharedObject()
end


function GetIdentifiers(source, idtype)
    local identifiers = GetPlayerIdentifiers(source)
    for _, identifier in pairs(identifiers) do
        if string.find(identifier, idtype) then
            return identifier
        end
    end
    return nil
end

function GetPlayer_Name(src)
    if CodeStudio.ServerType == 'QB' then
        local Player = QBCore.Functions.GetPlayer(src)
        local name = Player.PlayerData.charinfo.firstname .. " " .. Player.PlayerData.charinfo.lastname
        return name
    elseif CodeStudio.ServerType == 'ESX' then
        local Player = ESX.GetPlayerFromId(src)
        local name = Player.getName()
        return name
    else
        --Standlone [You can Edit this accoirdingly] --
        local name = GetPlayerName(src)
        return name
    end
end

function GetPlayer_Identifier(src)
    if CodeStudio.ServerType == 'QB' then
        local Player = QBCore.Functions.GetPlayer(src)
        local ident = Player.PlayerData.citizenid
        return ident
    elseif CodeStudio.ServerType == 'ESX' then
        local Player = ESX.GetPlayerFromId(src)
        local ident = Player.identifier
        return ident
    else
        --Standlone [You can Edit this accoirdingly] --
        local ident = GetIdentifiers(src, 'license')
        return ident
    end
end


function GetPlayer_Job(src)
    if CodeStudio.ServerType == 'QB' then
        local Player = QBCore.Functions.GetPlayer(src)
        local job = Player.PlayerData.job.name
        return job
    elseif CodeStudio.ServerType == 'ESX' then
        local Player = ESX.GetPlayerFromId(src)
        local job = Player.job.name
        return job
    else
        --Standlone [You can Edit this accoirdingly] --
        return false
    end
end

lib.callback.register('cs:advradio:hasRadio', function(source, itemName)
    return checkInventory(source, itemName)
end)

function checkInventory(src, itemName)
    local callbackResult = false

    if GetResourceState('ox_inventory') == 'started' then
        local invItem = exports.ox_inventory:GetItem(src, itemName, nil, false)
        if tonumber(invItem.count) >= 1 then
            callbackResult = true
        end
    elseif CodeStudio.ServerType == "QB" then
        local Player = QBCore.Functions.GetPlayer(src)
        local invItem = Player.Functions.GetItemByName(itemName)
        if invItem and tonumber(invItem.amount) >= 1 then
            callbackResult = true
        end
    elseif CodeStudio.ServerType == "ESX" then
        local Player = ESX.GetPlayerFromId(src)
        local invItem = Player.getInventoryItem(itemName).count
        if tonumber(invItem) >= 1 then
            callbackResult = true
        end
    else
        callbackResult = true
    end

    return callbackResult
end


if CodeStudio.Radio.Interaction.UseItem then
    if CodeStudio.ServerType == 'QB' then
        QBCore.Functions.CreateUseableItem('radio', function(source, item)
            TriggerClientEvent('cs:advradio:openRadio', source, 1)      --Radio Model 1
        end)
        QBCore.Functions.CreateUseableItem('radio2', function(source, item)
            TriggerClientEvent('cs:advradio:openRadio', source, 2)      --Radio Model 2
        end)
    elseif CodeStudio.ServerType == 'ESX' then
        ESX.RegisterUsableItem('radio', function(source)
            TriggerClientEvent('cs:advradio:openRadio', source, 1)      --Radio Model 1
        end)
        ESX.RegisterUsableItem('radio2', function(source)
            TriggerClientEvent('cs:advradio:openRadio', source, 2)      --Radio Model 2
        end)
    else
        --Standlone [You can Edit this accoirdingly] --
    end
end

if CodeStudio.Jammer.Interaction.UseItem then
    if CodeStudio.ServerType == 'QB' then
        QBCore.Functions.CreateUseableItem('radio_jammer', function(source, item)
            TriggerClientEvent('cs:advradio:useJammer', source)
        end)
    elseif CodeStudio.ServerType == 'ESX' then
        ESX.RegisterUsableItem('radio_jammer', function(source)
            TriggerClientEvent('cs:advradio:useJammer', source)
        end)
    else
        --Standlone [You can Edit this accoirdingly] --
    end
end

if CodeStudio.Radio_Scanner.Interaction.UseItem then
    if CodeStudio.ServerType == 'QB' then
        QBCore.Functions.CreateUseableItem('radio_scanner', function(source, item)
            TriggerClientEvent('cs:advradio:openScanner', source)
        end)
    elseif CodeStudio.ServerType == 'ESX' then
        ESX.RegisterUsableItem('radio_scanner', function(source)
            TriggerClientEvent('cs:advradio:openScanner', source)
        end)
    else
        --Standlone [You can Edit this accoirdingly] --
    end
end

if CodeStudio.JammerCar.Interaction.UseItem then
    if CodeStudio.ServerType == 'QB' then
        QBCore.Functions.CreateUseableItem('vehicle_jammer', function(source, item)
            TriggerClientEvent('cs:advradio:useCarJammer', source)
        end)
    elseif CodeStudio.ServerType == 'ESX' then
        ESX.RegisterUsableItem('vehicle_jammer', function(source)
            TriggerClientEvent('cs:advradio:useCarJammer', source)
        end)
    else
        --Standlone [You can Edit this accoirdingly] --
    end
end


RegisterNetEvent("cs:advradio:jammerPickup", function ()
    --This Function Triggers when player pickup jammer from ground
end)