local vaultCode = math.random(1000, 9999)
local flags = 0

AddEventHandler('qb-powerplant:server:PowerPlantHit', function(plant)
    if plant == 'city' then
        Config.Banks['Vault'].powerplantHit = true
        TriggerClientEvent('qb-bankrobbery:client:SetPowerPlant', -1, true)
        if debug then
            print('^3[qb-bankrobbery] ^5Power Station Hit '..tostring(true)..'^7')
        end
    end
end)

AddEventHandler('qb-powerplant:server:PowerPlantRestored', function(plant)
    if plant == 'city' then
        Config.Banks['Vault'].powerplantHit = false
        TriggerClientEvent('qb-bankrobbery:client:SetPowerPlant', -1, false)
        if debug then
            print('^3[qb-bankrobbery] ^5Power Station Hit '..tostring(false)..'^7')
        end
    end
end)

RegisterNetEvent('qb-bankrobbery:server:SetLasers', function(state)
    Config.Banks['Vault'].lasersActive = state
    TriggerClientEvent('qb-bankrobbery:client:SetLasers',  -1, state)
    if debug then
        print('^3[qb-bankrobbery] ^5Set Laser: '..tostring(state)..'^7')
    end
end)

RegisterNetEvent('qb-bankrobbery:server:HitByLaser', function()
    local src = source
    Config.Banks['Vault'].lockdown = true
    if debug then
        print('^3[qb-bankrobbery] ^5'..GetPlayerName(src)..' triggered Vault lockdown^7')
    end
    TriggerClientEvent('qb-bankrobbery:client:VaultLockDown', -1)
end)

RegisterNetEvent('qb-bankrobbery:server:SetGoldHacked', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    -- Start Lasers
    if not Config.Banks['Vault'].powerplantHit then
        TriggerEvent('qb-bankrobbery:server:SetLasers', true)
    end
    Config.Banks['Vault'].goldhacked = true
    if Config.DoorLock == 'qb' then
        TriggerEvent('qb-doorlock:server:updateState', Config.Banks['Vault'].laptopDoor, false, false, false, true, false, false, src)
    elseif Config.DoorLock == 'nui' then
        TriggerEvent('nui_doorlock:server:updateState', Config.Banks['Vault'].laptopDoor, false, false, false, true, false, src)
    end
    TriggerClientEvent('qb-bankrobbery:client:SetGoldHacked',  -1)
    if debug then
        print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..' (id: '..src..') Hacked Gold Laptop Vault^7') 
    end
end)

RegisterNetEvent('qb-bankrobbery:server:SetStackTaken', function(index, state)
    Config.Banks['Vault'].stacks[index].taken = state
    TriggerClientEvent('qb-bankrobbery:client:SetStackTaken', -1, index, state)
end)

RegisterNetEvent('qb-bankrobbery:server:StackReward', function(type, index)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    local coords = GetEntityCoords(GetPlayerPed(src))
    if #(coords - Config.Banks['Vault'].stacks[index].coords.xyz) > 5 then
        exports['qb-core']:ExploitBan(src, "Bankrobbery-Stack-Reward")
        return 
    end

    if type == 'money' then
        local info = {worth = math.random(5000, 10000)} -- money bag worth
        local receiveAmount = math.random(4, 5)
        Player.Functions.AddItem('markedbills', receiveAmount, false, info)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['markedbills'], 'add')
        TriggerClientEvent('QBCore:Notify', src, 'You got ' .. receiveAmount .. ' bags of inked money...')
        TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: Vault', 'black', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..receiveAmount..'x moneybags: $'..(receiveAmount*info.worth)..'**')
        if debug then
            print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..' (citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received: '..receiveAmount..' moneybags :'..(receiveAmount*info.worth)..'^7')
        end
    elseif type == 'gold' then
        local itemAmount = 10
        Player.Functions.AddItem('goldbar', itemAmount, false)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['goldbar'], 'add')
        TriggerEvent('qb-log:server:CreateLog', 'bankrobbery', 'Bankrobbery log: Vault', 'black', '**'.. Player.PlayerData.name .. '** (citizenid: *'..Player.PlayerData.citizenid..'* | id: *'..src..'*) received: **'..itemAmount.. 'x goldbar**')
        if debug then
            print('^3[qb-bankrobbery] ^5'..Player.PlayerData.name..' (citizenid: '..Player.PlayerData.citizenid..' | id: '..src..') received: '..itemAmount.. 'x goldbar^7') 
        end
    end
end)

RegisterNetEvent('qb-bankrobbery:server:PrintCodes', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    info = {codes = vaultCode}
    Player.Functions.AddItem("lowervaultcodes", 1, false, info)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items["lowervaultcodes"], "add")
    TriggerEvent("qb-log:server:CreateLog", "bankrobbery", "Lower Vault Codes", "black", "**".. Player.PlayerData.name .. "** (citizenid: *"..Player.PlayerData.citizenid.."* | id: *"..src.."*) printed lower vault code..")
end)

RegisterNetEvent('qb-bankrobbery:server:AttemptCode', function(input)
    local src = source
    if input == vaultCode then
        Config.Banks['Vault'].code = true
        TriggerClientEvent('qb-bankrobbery:client:CorrectCode', -1)
    else
        flags = flags + 1
        if flags >= 3 then -- 3 amount of times you can fail the code
            Config.Banks['Vault'].lockdown = true
            TriggerClientEvent('qb-bankrobbery:client:VaultLockDown', -1)
        end
        TriggerClientEvent('QBCore:Notify', src, "Incorrect! ("..flags.."/3)", "error", 2500)
    end
end)

RegisterNetEvent('qb-bankrobbery:server:RemoveExplosive', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if not Player then return end

    Player.Functions.RemoveItem('explosive', 1, false)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['explosive'], "remove", 1)
end)

QBCore.Functions.CreateUseableItem("explosive", function(source, item)
    local src = source
    TriggerClientEvent("explosive:UseExplosive", src)
end)

CreateThread(function()
    print("^3[qb-bankrobbery] ^5Lower Vault Access Code: "..vaultCode.."^7")
end)
