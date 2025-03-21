local QBCore = exports['qb-core']:GetCoreObject()
local OutsideVehicles = {}
local VehicleSpawnerVehicles = {}




PermissionOrder = {
    'god',
    'admin',
    'mod'
}

function HasPermission(playerId, requiredPermission)
    return QBCore.Functions.HasPermission(playerId, requiredPermission)
end
QBCore.Commands.Add('announce', "Make Announcement", {}, false, function(source, args)
    print(HasPermission(source, 'god'))
    if not HasPermission(source, 'admin') then return end

    local msg = table.concat(args, ' ')
    if msg == '' then return end
    TriggerClientEvent('chat:addMessage', -1, {
        color = { 255, 0, 0},
        multiline = true,
        args = {"Announcement", msg}
    })
end)



QBCore.Commands.Add('palert', "Make Server Announcement", {}, false, function(source, args)
    local msg = table.concat(args, ' ')
    if msg == '' then return end
	local ped = QBCore.Functions.GetPlayer(source)
    --print(ped.PlayerData.job.name)
	if ped.PlayerData.job.type ~= 'leo' then return end
    TriggerClientEvent('chat:addMessage', -1, {
        color = { 255, 0, 0},
        multiline = true,
        args = {"POLICE ALERT", msg}
    })
end)

QBCore.Commands.Add('ealert', "Make Server Announcement", {}, false, function(source, args)
    local msg = table.concat(args, ' ')
    if msg == '' then return end
    local ped = QBCore.Functions.GetPlayer(source)
    if ped.PlayerData.job.name ~= 'ambulance' then 
        TriggerClientEvent('QBCore:Notify', source, "You do not have permission to use this command!", "error")
        return 
    end
    TriggerClientEvent('chat:addMessage', -1, {
        color = { 255, 0, 0 },
        multiline = true,
        args = { "EMS ALERT", msg }
    })
end)


QBCore.Commands.Add('malert', "Make Server Announcement", {}, false, function(source, args)
    local msg = table.concat(args, ' ')
    if msg == '' then return end
    local ped = QBCore.Functions.GetPlayer(source)
    if ped.PlayerData.job.name ~= 'mechanic' then 
        TriggerClientEvent('QBCore:Notify', source, "You do not have permission to use this command!", "error")
        return 
    end
    TriggerClientEvent('chat:addMessage', -1, {
        color = { 255, 0, 0 },
        multiline = true,
        args = { "Mechanic ALERT", msg }
    })
end)







local function TableContains (tab, val)
    if type(val) == "table" then
        for _, value in ipairs(tab) do
            if TableContains(val, value) then
                return true
            end
        end
        return false
    else
        for _, value in ipairs(tab) do
            if value == val then
                return true
            end
        end
    end
    return false
end

QBCore.Functions.CreateCallback("qb-garage:server:GetOutsideVehicle", function(source, cb, plate)
    local src = source
    local pData = QBCore.Functions.GetPlayer(src)
    if not OutsideVehicles[plate] then cb(nil) return end
     MySQL.query('SELECT * FROM player_vehicles WHERE citizenid = ? and plate = ?', {pData.PlayerData.citizenid, plate}, function(result)
        if result[1] then
            cb(result[1])
        else
            cb(nil)
        end
    end)
end)

QBCore.Functions.CreateCallback("qb-garage:server:CheckSpawnedVehicle", function(source, cb, plate)
    cb(VehicleSpawnerVehicles[plate] ~= nil and VehicleSpawnerVehicles[plate])
end)

RegisterNetEvent("qb-garage:server:UpdateSpawnedVehicle", function(plate, value)
    VehicleSpawnerVehicles[plate] = value
end)

QBCore.Functions.CreateCallback('qb-garage:server:spawnvehicle', function (source, cb, vehInfo, coords, warp)
    local veh = QBCore.Functions.SpawnVehicle(source, vehInfo.vehicle, coords, warp)
    
    if not veh or not NetworkGetNetworkIdFromEntity(veh) then
        print('ISSUE HERE', veh, NetworkGetNetworkIdFromEntity(veh))
    end
    local vehProps = {}
    local plate = vehInfo.plate
    local result = MySQL.query.await('SELECT mods FROM player_vehicles WHERE plate = ?', {plate})
    if result[1] then vehProps = json.decode(result[1].mods) end
    local netId = NetworkGetNetworkIdFromEntity(veh)
    OutsideVehicles[plate] = {netID = netId, entity = veh}
    cb(netId, vehProps)
end)

local function GetVehicles(citizenid, garageName, state, cb)
    local result = nil
    if not Config.GlobalParking then
        result = MySQL.Sync.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = @citizenid AND garage = @garage AND state = @state', {
            ['@citizenid'] = citizenid,
            ['@garage'] = garageName,
            ['@state'] = state
        })
    else
        result = MySQL.Sync.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = @citizenid AND state = @state', {
            ['@citizenid'] = citizenid,
            ['@state'] = state
        })
    end
    cb(result)
end

local function GetDepotVehicles(citizenid, state, garage, cb)
    local result = MySQL.Sync.fetchAll('SELECT * FROM player_vehicles WHERE citizenid = @citizenid AND (state = @state OR garage = @garage OR garage IS NULL)', {
        ['@citizenid'] = citizenid,
        ['@state'] = state,
        ['@garage'] = garage
    })
    cb(result)
end

local function GetVehicleByPlate(plate)
    local vehicles = GetAllVehicles() -- Get all vehicles known to the server
    for _, vehicle in pairs(vehicles) do
        local pl = GetVehicleNumberPlateText(vehicle)
        if pl == plate then
            return vehicle
        end
    end
end

QBCore.Functions.CreateCallback("qb-garage:server:GetGarageVehicles", function(source, cb, garage, garageType, category)
    local src = source
    local pData = QBCore.Functions.GetPlayer(src)
    if garageType == "public" then        --Public garages give player cars in the garage only
        GetVehicles(pData.PlayerData.citizenid, garage, 1, function(result)
            local vehs = {}
            if result[1] then
                for _, vehicle in pairs(result) do
                    if vehicle.parkingspot then
                        local spot = json.decode(vehicle.parkingspot)
                        if spot and spot.x then
                            vehicle.parkingspot = vector3(spot.x, spot.y, spot.z)
                        end
                    end
                    if vehicle.damage then
                        vehicle.damage = json.decode(vehicle.damage)
                    end
                    vehs[#vehs + 1] = vehicle
                end
                cb(vehs)
            else
                cb(nil)
            end
        end)
    elseif garageType == "depot" then    --Depot give player cars that are not in garage only
        GetDepotVehicles(pData.PlayerData.citizenid, 0, garage, function(result)
            local tosend = {}
            if result[1] then
                if type(category) == 'table' then
                    if TableContains(category, {'car'}) then
                        category = 'car'
                    elseif TableContains(category, {'plane', 'helicopter'}) then
                        category = 'air'
                    elseif TableContains(category, 'boat') then
                        category = 'sea'
                    end
                end
                for _, vehicle in pairs(result) do
                    if GetVehicleByPlate(vehicle.plate) or not QBCore.Shared.Vehicles[vehicle.vehicle] then
                        goto skip
                    end
                    if vehicle.depotprice == 0 then
                        vehicle.depotprice = Config.DepotPrice
                    end

                    vehicle.parkingspot = nil
                    if vehicle.damage then
                        vehicle.damage = json.decode(vehicle.damage)
                    end

                    if category == "air" and ( QBCore.Shared.Vehicles[vehicle.vehicle].category == "helicopters" or QBCore.Shared.Vehicles[vehicle.vehicle].category == "planes" ) then
                        tosend[#tosend + 1] = vehicle
                    elseif category == "sea" and QBCore.Shared.Vehicles[vehicle.vehicle].category == "boats" then
                        tosend[#tosend + 1] = vehicle
                    elseif category == "car" and QBCore.Shared.Vehicles[vehicle.vehicle].category ~= "helicopters" and QBCore.Shared.Vehicles[vehicle.vehicle].category ~= "planes" and QBCore.Shared.Vehicles[vehicle.vehicle].category ~= "boats" then
                        tosend[#tosend + 1] = vehicle
                    end
                    ::skip::
                end
                cb(tosend)
            else
                cb(nil)
            end
        end)
    else                            --House give all cars in the garage, Job and Gang depend of config
        local shared = ''
        if not TableContains(Config.SharedJobGarages, garage) or (not Config.SharedHouseGarage and garageType == "house") then
            shared = " AND citizenid = '"..pData.PlayerData.citizenid.."'"
        end
         MySQL.query('SELECT * FROM player_vehicles WHERE garage = ? AND state = ?'..shared, {garage, 1}, function(result)
            if result[1] then
                local vehs = {}
                for _, vehicle in pairs(result) do
                    local spot = json.decode(vehicle.parkingspot)
                    if vehicle.parkingspot then
                        vehicle.parkingspot = vector3(spot.x, spot.y, spot.z)
                    end
                    if vehicle.damage then
                        vehicle.damage = json.decode(vehicle.damage)
                    end
                    vehs[#vehs + 1] = vehicle
                end
                cb(vehs)
            else
                cb(nil)
            end
        end)
    end
end)



QBCore.Functions.CreateCallback("qb-garage:server:checkOwnership", function(source, cb, plate, garageType, garage, gang)
    local src = source
    local pData = QBCore.Functions.GetPlayer(src)
    if garageType == "public" then        --Public garages only for player cars
        local addSQLForAllowParkingAnyonesVehicle = ""
        if not Config.AllowParkingAnyonesVehicle then
            addSQLForAllowParkingAnyonesVehicle = " AND citizenid = '"..pData.PlayerData.citizenid.."' "
        end
         MySQL.query('SELECT * FROM player_vehicles WHERE plate = ? ' .. addSQLForAllowParkingAnyonesVehicle,{plate}, function(result)
            if result[1] then
                cb(true)
            else
                cb(false)
            end
        end)
    elseif garageType == "house" then     --House garages only for player cars that have keys of the house
         MySQL.query('SELECT * FROM player_vehicles WHERE plate = ?', {plate}, function(result)
            if result[1] then
                cb(true)
            else
                cb(false)
            end
        end)
    elseif garageType == "gang" then        --Gang garages only for gang members cars (for sharing)
         MySQL.query('SELECT * FROM player_vehicles WHERE plate = ?', {plate}, function(result)
            if result[1] then
                --Check if found owner is part of the gang
                local Player = QBCore.Functions.GetPlayer(source)
                local playerGang = Player.PlayerData.gang.name
                cb(playerGang == gang)
            else
                cb(false)
            end
        end)
    else                            --Job garages only for cars that are owned by someone (for sharing and service) or only by player depending of config
        local shared = ''
        if not TableContains(Config.SharedJobGarages, garage) then
            shared = " AND citizenid = '"..pData.PlayerData.citizenid.."'"
        end
         MySQL.query('SELECT * FROM player_vehicles WHERE plate = ?'..shared, {plate}, function(result)
            if result[1] then
                cb(true)
            else
                cb(false)
            end
        end)
    end
end)

QBCore.Functions.CreateCallback("qb-garage:server:GetVehicleProperties", function(source, cb, plate)
    local properties = {}
    local result = MySQL.query.await('SELECT mods FROM player_vehicles WHERE plate = ?', {plate})
    if result[1] then
        properties = json.decode(result[1].mods)
    end
    cb(properties)
end)

RegisterNetEvent('qb-garage:server:updateVehicle', function(state, fuel, engine, body, properties, plate, garage, location, damage)
    if location and type(location) == 'vector3' then
        if Config.StoreDamageAccuratly then
            MySQL.update('UPDATE player_vehicles SET state = ?, garage = ?, fuel = ?, engine = ?, body = ?, mods = ?, parkingspot = ?, damage = ? WHERE plate = ?',{state, garage, fuel, engine, body, json.encode(properties), json.encode(location), json.encode(damage), plate})
        else
            MySQL.update('UPDATE player_vehicles SET state = ?, garage = ?, fuel = ?, engine = ?, body = ?, mods = ?, parkingspot = ? WHERE plate = ?',{state, garage, fuel, engine, body, json.encode(properties), json.encode(location), plate})
        end
    else
        if Config.StoreDamageAccuratly then
            MySQL.update('UPDATE player_vehicles SET state = ?, garage = ?, fuel = ?, engine = ?, body = ?, mods = ?, damage = ? WHERE plate = ?',{state, garage, fuel, engine, body, json.encode(properties), json.encode(damage), plate})
        else
            MySQL.update('UPDATE player_vehicles SET state = ?, garage = ?, fuel = ?, engine = ?, body = ?, mods = ? WHERE plate = ?', {state, garage, fuel, engine, body, json.encode(properties), plate})
        end
    end
end)

RegisterNetEvent('qb-garage:server:updateVehicleState', function(state, plate, garage)
    MySQL.update('UPDATE player_vehicles SET state = ?, garage = ?, depotprice = ? WHERE plate = ?',{state, garage, 0, plate})
end)

RegisterNetEvent('qb-garages:server:UpdateOutsideVehicles', function(Vehicles)
    local src = source
    local ply = QBCore.Functions.GetPlayer(src)
    local citizenId = ply.PlayerData.citizenid
    OutsideVehicles[citizenId] = Vehicles
end)

QBCore.Functions.CreateCallback("qb-garage:server:GetOutsideVehicles", function(source, cb)
    local ply = QBCore.Functions.GetPlayer(source)
    local citizenId = ply.PlayerData.citizenid
    if OutsideVehicles[citizenId] and next(OutsideVehicles[citizenId]) then
        cb(OutsideVehicles[citizenId])
    else
        cb({})
    end
end)

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        Wait(100)
        if Config.AutoRespawn then
            MySQL.update('UPDATE player_vehicles SET state = 1 WHERE state = 0', {})
        end
    end
end)

RegisterNetEvent('qb-garage:server:PayDepotPrice', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local cashBalance = Player.PlayerData.money["cash"]
    local bankBalance = Player.PlayerData.money["bank"]

    
    local vehicle = data.vehicle

     MySQL.query('SELECT * FROM player_vehicles WHERE plate = ?', {vehicle.plate}, function(result)
        if result[1] then
            local vehicle = result[1]
            local depotPrice = vehicle.depotprice ~= 0 and vehicle.depotprice or Config.DepotPrice
            if cashBalance >= depotPrice then
                Player.Functions.RemoveMoney("cash", depotPrice, "paid-depot")
            elseif bankBalance >= depotPrice then
                Player.Functions.RemoveMoney("bank", depotPrice, "paid-depot")
            else
                TriggerClientEvent('QBCore:Notify', src, Lang:t("error.not_enough"), 'error')
            end
        end
    end)
end)


--External Calls
--Call from qb-vehiclesales
QBCore.Functions.CreateCallback("qb-garage:server:checkVehicleOwner", function(source, cb, plate)
    local src = source
    local pData = QBCore.Functions.GetPlayer(src)
     MySQL.query('SELECT * FROM player_vehicles WHERE plate = ? AND citizenid = ?',{plate, pData.PlayerData.citizenid}, function(result)
        if result[1] then
            cb(true, result[1].balance)
        else
            cb(false)
        end
    end)
end)

--Call from qs-smartphone
QBCore.Functions.CreateCallback('qb-garage:server:GetPlayerVehicles', function(source, cb)
    local Player = QBCore.Functions.GetPlayer(source)
    local Vehicles = {}

     MySQL.query('SELECT * FROM player_vehicles WHERE citizenid = ?', {Player.PlayerData.citizenid}, function(result)
        if result[1] then
            for k, v in pairs(result) do
                local VehicleData = QBCore.Shared.Vehicles[v.vehicle]
                if not VehicleData then goto continue end
                local VehicleGarage = Lang:t("error.no_garage")
                if v.garage ~= nil then
                    if Config.Garages[v.garage] ~= nil then
                        VehicleGarage = Config.Garages[v.garage].label
                    elseif Config.HouseGarages[v.garage] then
                        VehicleGarage = Config.HouseGarages[v.garage].label
                    end
                end

                if v.state == 0 then
                    v.state = Lang:t("status.out")
                elseif v.state == 1 then
                    v.state = Lang:t("status.garaged")
                elseif v.state == 2 then
                    v.state = Lang:t("status.impound")
                end
                
                local fullname 
                if VehicleData["brand"] ~= nil then
                    fullname = VehicleData["brand"] .. " " .. VehicleData["name"]
                else
                    fullname = VehicleData["name"]
                end
                local spot = json.decode(v.parkingspot)
                Vehicles[#Vehicles+1] = {
                    fullname = fullname,
                    brand = VehicleData["brand"],
                    model = VehicleData["name"],
                    plate = v.plate,
                    garage = VehicleGarage,
                    state = v.state,
                    fuel = v.fuel,
                    engine = v.engine,
                    body = v.body,
                    parkingspot = spot and vector3(spot.x, spot.y, spot.z) or nil,
                    damage = json.decode(v.damage)
                }
                ::continue::
            end
            cb(Vehicles)
        else
            cb(nil)
        end
    end)
end)

local function GetRandomPublicGarage()
    for garageName, garage in pairs(Config.Garages)do
        if garage.type == 'public' then
            return garageName -- return the first garageName
        end
    end
end


-- Command to restore lost cars (garage: 'None' or something similar)
QBCore.Commands.Add("restorelostcars", "Restores cars that were parked in a grage that no longer exists in the config or is invalid (name change or removed).", {{name = "destination_garage", help = "(Optional) Garage where the cars are being sent to."}}, false,
function(source, args)
    local src = source
    if next(Config.Garages) ~= nil then
        local destinationGarage = args[1] and args[1] or GetRandomPublicGarage()
        if Config.Garages[destinationGarage] == nil then
            TriggerClientEvent('QBCore:Notify', src, 'Invalid garage name provided', 'error', 4500)
            return
        end

        local invalidGarages = {}
         MySQL.query('SELECT garage FROM player_vehicles', function(result)
            if result[1] then
                for _,v in ipairs(result) do
                    if Config.Garages[v.garage] == nil then
                        if v.garage then
                            invalidGarages[v.garage] = true
                        end
                    end
                end
                for garage,_ in pairs(invalidGarages) do
                    MySQL.update('UPDATE player_vehicles set garage = ? WHERE garage = ?',{destinationGarage, garage})
                end
                MySQL.update('UPDATE player_vehicles set garage = ? WHERE garage IS NULL OR garage = \'\'',{destinationGarage})
            end
        end)
    end
end, Config.RestoreCommandPermissionLevel)
