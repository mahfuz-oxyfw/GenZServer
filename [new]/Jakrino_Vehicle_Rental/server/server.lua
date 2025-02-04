local Core, CoreName = nil, nil

if GetResourceState('qb-core') == 'started' then
    Core = exports['qb-core']:GetCoreObject()
    while Core == nil do
        TriggerEvent('QBCore:GetObject', function(obj) Core = obj end)
        Wait(30)
    end
    CoreName = 'qb-core'
elseif GetResourceState('es_extended') == 'started' then
    Core = exports["es_extended"]:getSharedObject()
    while Core == nil do
        TriggerEvent('esx:getSharedObject', function(obj) Core = obj end)
        Wait(30)
    end
    CoreName = 'es_extended'
else
    Core = 'not_found'
    CoreName = 'standlone'
end

-- Function's
local function ExecuteSql(query, parameters, cb)
    local promise = promise:new()
    local isBusy = true
    if Config.SQLScript == "oxmysql" then
        exports.oxmysql:execute(query, parameters, function(data)
            promise:resolve(data)
            isBusy = false

            if cb then
                cb(data)
            end
        end)
    elseif Config.SQLScript == "ghmattimysql" then
        exports.ghmattimysql:execute(query, parameters, function(data)
            promise:resolve(data)
            isBusy = false

            if cb then
                cb(data)
            end
        end)
    elseif Config.SQLScript == "mysql-async" then
        MySQL.Async.fetchAll(query, parameters, function(data)
            promise:resolve(data)
            isBusy = false
            if cb then
                cb(data)
            end
        end)
    end
    while isBusy do
        Wait(0)
    end
    return Citizen.Await(promise)
end

-- Event's
RegisterNetEvent("Jakrino:Server:BuyRentalVehicle")
AddEventHandler("Jakrino:Server:BuyRentalVehicle", function(model, price, category, index, days)
    local Player = nil
    local identifier = nil
    
    if CoreName == 'qb-core' then
        Player = Core.Functions.GetPlayer(source)
        identifier = Player.PlayerData.citizenid
    elseif CoreName == 'es_extended' then
        Player = Core.GetPlayerFromId(source)
        identifier = Player.identifier
    end
    
    local data = {
        model = model,
        price = price,
        category = category,
        index = index,
        days = days,
        buyedTime = os.time()
    }
    
    local existingData = ExecuteSql("SELECT * FROM jakrino_vehicle_rental WHERE citizenid = ?", {identifier})
    
    if existingData and existingData[1] then
        local vehicles = json.decode(existingData[1].vehicles) or {}
        table.insert(vehicles, data)
        ExecuteSql("UPDATE jakrino_vehicle_rental SET vehicles = ? WHERE citizenid = ?", {json.encode(vehicles), identifier})
    else
        ExecuteSql("INSERT INTO jakrino_vehicle_rental (citizenid, vehicles) VALUES (?, ?)", {identifier, json.encode({data})})
    end
end)

RegisterNetEvent("Jakrino:Server:ExpandRentalVehicle")
AddEventHandler("Jakrino:Server:ExpandRentalVehicle", function(model, price, category, index, days)
    local Player = nil
    local identifier = nil
    
    if CoreName == 'qb-core' then
        Player = Core.Functions.GetPlayer(source)
        identifier = Player.PlayerData.citizenid
    elseif CoreName == 'es_extended' then
        Player = Core.GetPlayerFromId(source)
        identifier = Player.identifier
    end
    
    local existingData = ExecuteSql("SELECT * FROM jakrino_vehicle_rental WHERE citizenid = ?", {identifier})
    
    if existingData and existingData[1] then
        local vehicles = json.decode(existingData[1].vehicles)
        
        for _, vehicle in ipairs(vehicles) do
            if vehicle.index == index then
                if vehicle.model == model then
                    vehicle.days = vehicle.days + days
                    vehicle.price = vehicle.price + price
                    break
                end
            end
        end
        
        ExecuteSql("UPDATE jakrino_vehicle_rental SET vehicles = ? WHERE citizenid = ?", {json.encode(vehicles), identifier})
    end
end)

RegisterNetEvent("Jakrino:Server:RentalAddFavorite")
AddEventHandler("Jakrino:Server:RentalAddFavorite", function(model, isFavorite)
    local Player = nil
    local identifier = nil

    if CoreName == 'qb-core' then
        Player = Core.Functions.GetPlayer(source)
        identifier = Player.PlayerData.citizenid
    elseif CoreName == 'es_extended' then
        Player = Core.GetPlayerFromId(source)
        identifier = Player.identifier
    end
    
    local existingData = ExecuteSql("SELECT * FROM jakrino_vehicle_rental WHERE citizenid = ?", {identifier})
    
    if existingData and existingData[1] then
        local favorites = json.decode(existingData[1].favorites) or {}
        if not isFavorite then
            isFavorite = nil
        end
        favorites[model] = isFavorite
        ExecuteSql("UPDATE jakrino_vehicle_rental SET favorites = ? WHERE citizenid = ?", {json.encode(favorites), identifier})
    else
        local favorites = {}
        if not isFavorite then
            isFavorite = nil
        end
        favorites[model] = isFavorite
        ExecuteSql("INSERT INTO jakrino_vehicle_rental (favorites, citizenid) VALUES (?, ?)", {json.encode(favorites), identifier})
    end
end)

-- Callback's
if CoreName == 'qb-core' then
    Core.Functions.CreateCallback('Jakrino:Callback:RemoveMoneyRental', function(source, cb, price, buytype, model, index)
        local Player = Core.Functions.GetPlayer(source)
        local identifier = Player.PlayerData.citizenid
        local existingData = ExecuteSql("SELECT * FROM jakrino_vehicle_rental WHERE citizenid = ?", {identifier})
        local playerVehicles = nil
        if existingData and existingData[1] and existingData[1].vehicles then
            playerVehicles = json.decode(existingData[1].vehicles) or nil
        end
        local hasModel = false
        if playerVehicles then
            for _, vehicle in ipairs(playerVehicles) do
                if vehicle.model == model then
                    if vehicle.index == index then
                        hasModel = true
                        break
                    end
                end
            end
        end
        
        if hasModel then
            Config.Notification(Locales[Config.Locales]["You-Already-Have"], true, source)
        else
            if Player.Functions.RemoveMoney(buytype, price) then
                cb(true)
            else
                cb(false)
            end
        end        
    end)
    Core.Functions.CreateCallback('Jakrino:Callback:RemoveMoneyExpand', function(source, cb, price, buytype)
        local Player = Core.Functions.GetPlayer(source)
        if Player.Functions.RemoveMoney(buytype, price) then
            cb(true)
        else
            cb(false)
        end     
    end)
    Core.Functions.CreateCallback('Jakrino:Callback:GetRentalData', function(source, cb)
        local Player = Core.Functions.GetPlayer(source)
        local identifier = Player.PlayerData.citizenid
        local existingData = ExecuteSql("SELECT * FROM jakrino_vehicle_rental WHERE citizenid = ?", {identifier})
    
        if existingData and existingData[1] and existingData[1].vehicles then
            cb({ vehicles = json.decode(existingData[1].vehicles), favorites = json.decode(existingData[1].favorites) })
        else
            cb(false)
        end
    end)
    Core.Functions.CreateCallback('Jakrino:Callback:RemoveMoneyDepositeRental', function(source, cb)
        local Player = Core.Functions.GetPlayer(source)
        if Player.Functions.RemoveMoney("bank", Config.OneMore) then
            cb(true)
        else
            cb(false)
        end     
    end)
elseif CoreName == 'es_extended' then
    Core.RegisterServerCallback('Jakrino:Callback:RemoveMoneyDepositeRental', function(source, cb)
        local Player = Core.GetPlayerFromId(source)
        local bank = Player.getAccount("bank").money
        if bank >= Config.OneMore then
            Player.removeAccountMoney("bank", Config.OneMore)
            cb(true)
        else
            cb(false)
        end
    end)
    Core.RegisterServerCallback('Jakrino:Callback:GetRentalData', function(source, cb)
        local Player = Core.GetPlayerFromId(source)
        local identifier = Player.identifier
        local existingData = ExecuteSql("SELECT * FROM jakrino_vehicle_rental WHERE citizenid = ?", {identifier})
    
        if existingData and existingData[1] and existingData[1].vehicles then
            cb({ vehicles = json.decode(existingData[1].vehicles), favorites = json.decode(existingData[1].favorites) })
        else
            cb(false)
        end
    end)
    Core.RegisterServerCallback('Jakrino:Callback:RemoveMoneyRental', function(source, cb, price, buytype, model, index)
        local Player = Core.GetPlayerFromId(source)
        local identifier = Player.identifier
        local existingData = ExecuteSql("SELECT * FROM jakrino_vehicle_rental WHERE citizenid = ?", {identifier})
        local playerVehicles = nil
        if existingData and existingData[1] and existingData[1].vehicles then
            playerVehicles = json.decode(existingData[1].vehicles) or nil
        end
        local hasModel = false
        if playerVehicles then
            for _, vehicle in ipairs(playerVehicles) do
                if vehicle.model == model then
                    if vehicle.index == index then
                        hasModel = true
                        break
                    end
                end
            end
        end
        
        if hasModel then
            Config.Notification(Locales[Config.Locales]["You-Already-Have"], true, source)
        else
            if buytype == "cash" then
                local cash = Player.getAccount("money").money
                if cash >= price then
                    Player.removeAccountMoney("money", price)
                    cb(true)
                else
                    cb(false)
                end
            elseif buytype == "bank" then
                local bank = Player.getAccount(buytype).money
                if bank >= price then
                    Player.removeAccountMoney(buytype, price)
                    cb(true)
                else
                    cb(false)
                end
            end
        end
    end)
    Core.RegisterServerCallback('Jakrino:Callback:RemoveMoneyExpand', function(source, cb, price, buytype)
        local Player = Core.GetPlayerFromId(source)
        if buytype == "cash" then
            local cash = Player.getAccount("money").money
            if cash >= price then
                Player.removeAccountMoney("money", price)
                cb(true)
            else
                cb(false)
            end
        elseif buytype == "bank" then
            local bank = Player.getAccount(buytype).money
            if bank >= price then
                Player.removeAccountMoney(buytype, price)
                cb(true)
            else
                cb(false)
            end
        end
    end)
end

-- Thread's
CreateThread(function()
    while true do
        Wait(900000)

        local data = ExecuteSql("SELECT citizenid, vehicles, favorites FROM jakrino_vehicle_rental")

        for _, row in ipairs(data) do
            local citizenId, vehiclesJson, favoritesJson = row.citizenid, row.vehicles, row.favorites
            local vehicles, favorites = json.decode(vehiclesJson), json.decode(favoritesJson)
            local updatedVehicles = nil
            if vehicles then
                for _, vehicle in ipairs(vehicles) do
                    local currentTime = os.time()
                    local buyedTime = vehicle.buyedTime
                    local lastChecked = vehicle.lastChecked or buyedTime
                    local daysPassed = math.floor(math.abs(currentTime - lastChecked) / (24 * 3600))

                    if daysPassed > 0 then
                        if daysPassed < vehicle.days then
                            updatedVehicles = {}
                            vehicle.days = vehicle.days - daysPassed
                            vehicle.lastChecked = currentTime
                            table.insert(updatedVehicles, vehicle)
                        end
                    else
                        updatedVehicles = {}
                        table.insert(updatedVehicles, vehicle)
                    end
                end
                if updatedVehicles then
                    local updateQuery = "REPLACE INTO jakrino_vehicle_rental (citizenid, vehicles, favorites) VALUES (?, ?, ?)"
                    ExecuteSql(updateQuery, { citizenId, json.encode(updatedVehicles), favoritesJson })
                else
                    local updateQuery = "REPLACE INTO jakrino_vehicle_rental (citizenid, vehicles, favorites) VALUES (?, ?, ?)"
                    ExecuteSql(updateQuery, { citizenId, nil, favoritesJson })
                end
            end
        end
    end
end)