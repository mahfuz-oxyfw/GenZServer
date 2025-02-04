local Core, CoreName, SpawnedVehicle, cam = nil, nil, nil, nil
local spawnedCars = {}
local cbs2 = { vehicles = {}, favorites = {} }

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

-- Thread's
CreateThread(function()
    if CoreName == 'qb-core' then
        RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
        AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
            TriggerEvent("Jakrino:Client:UpdateRentalMenu")
        end)
    elseif CoreName == 'es_extended' then
        RegisterNetEvent('esx:playerLoaded')
        AddEventHandler('esx:playerLoaded', function()
            TriggerEvent("Jakrino:Client:UpdateRentalMenu")
        end)
    end
end)

-- For Devs..
RegisterNetEvent("onResourceStart")
AddEventHandler("onResourceStart", function(resourceName)
	if (GetCurrentResourceName() == resourceName) then
        while true do
            if GetResourceState(GetCurrentResourceName()) == 'started' then
                TriggerEvent("Jakrino:Client:UpdateRentalMenu")
                break;
            else
                Wait(100)
            end
        end
	end
end)

-- Function's
local function Trim(value)
    if not value then return nil end
    return (string.gsub(value, '^%s*(.-)%s*$', '%1'))
end

local function GetPlate(vehicle)
    if vehicle == 0 then return end
    return Trim(GetVehicleNumberPlateText(vehicle))
end

local function Close(bool)
    if bool then
        if SpawnedVehicle ~= nil then
            if DoesEntityExist(SpawnedVehicle) then
                DeleteVehicle(SpawnedVehicle)
            end
            SpawnedVehicle = nil
        end
        RenderScriptCams(false, true, 500, true, false) 
        DestroyCam(cam, false)
    else
        if SpawnedVehicle ~= nil then
            if DoesEntityExist(SpawnedVehicle) then
                DeleteVehicle(SpawnedVehicle)
            end
            SpawnedVehicle = nil
        end
        SetNuiFocus(false, false)
        RenderScriptCams(false, true, 500, true, false) 
        DestroyCam(cam, false)
        looking = false
        Config.Hud(true)
    end
end

local function GetVehicleByModel(model)
    for _, vehicleData in ipairs(spawnedCars) do
        if vehicleData.model == model then
            return vehicleData.vehicle
        end
    end
    return nil
end

local function IsModelSpawned(model)
    for _, vehicleData in ipairs(spawnedCars) do
        if vehicleData.model == model then
            return true
        end
    end
    return false
end

-- Callback's
RegisterNUICallback("AddFavorite", function(data)
    cbs2.favorites[data.model] = data.isFavorite
    SendNUIMessage({
        type = "updatedata",
        data = cbs2
    })
    TriggerServerEvent("Jakrino:Server:RentalAddFavorite", data.model, data.isFavorite)
end)

RegisterNUICallback("Close", function()
    Close()
end)

RegisterNUICallback("Return", function()
    Close(true)
end)

RegisterNUICallback("MyRentals", function()
    if CoreName == 'qb-core' then
        Core.Functions.TriggerCallback('Jakrino:Callback:GetRentalData', function(callback)
            if callback then
                Close(true)
                SendNUIMessage({
                    type = "openonemore",
                    callback = callback
                })
                cbs2 = callback
            else
                Close()
                SendNUIMessage({
                    type = "close",
                })
                SetNuiFocus(false, false)
                Config.Notification(Locales[Config.Locales]["You-Dont-Have-Any-Vehicle"])
            end
        end)
    elseif CoreName == 'es_extended' then
        Core.TriggerServerCallback('Jakrino:Callback:GetRentalData', function(callback)
            if callback then
                Close(true)
                SendNUIMessage({
                    type = "openonemore",
                    callback = callback
                })
            else
                Close()
                SendNUIMessage({
                    type = "close",
                })
                SetNuiFocus(false, false)
                Config.Notification(Locales[Config.Locales]["You-Dont-Have-Any-Vehicle"])
            end
        end)
    end
end)

RegisterNUICallback("ChangedCategory", function()
    if SpawnedVehicle ~= nil then
        if DoesEntityExist(SpawnedVehicle) then
            DeleteVehicle(SpawnedVehicle)
        end
        SpawnedVehicle = nil
    end
    RenderScriptCams(false, true, 500, true, false) 
    DestroyCam(cam, false)
end)

RegisterNUICallback("Select", function(data)
    if SpawnedVehicle ~= nil then
        if DoesEntityExist(SpawnedVehicle) then
            DeleteVehicle(SpawnedVehicle)
        end
        local coords = Config.VehicleRentals[data.index].viewCoords
        RequestModel(data.model)
        while not HasModelLoaded(data.model) do
            Wait(100)
        end
        SpawnedVehicle = CreateVehicle(GetHashKey(data.model), coords.x, coords.y, coords.z, coords.w, false, false)
        if Config.Vehicles[data.model].category == "motorcycle" or Config.Vehicles[data.model].category == "bicycle" then
            AttachCamToEntity(cam, SpawnedVehicle, 2.0, 2.0, 0.5, true)
            PointCamAtEntity(cam, SpawnedVehicle, -10.0, -0.5, 0.5, true)
        elseif Config.Vehicles[data.model].category == "helicopter" then
            if string.find(data.model, "cargo") then
                AttachCamToEntity(cam, SpawnedVehicle, 4.0, 14.0, 0.6, true)
                PointCamAtEntity(cam, SpawnedVehicle, -6.0, 4.25, 0.6, true)
            else
                AttachCamToEntity(cam, SpawnedVehicle, 6.0, 8.0, 0.6, true)
                PointCamAtEntity(cam, SpawnedVehicle, -6.0, 2.25, 0.6, true)
            end
        elseif Config.Vehicles[data.model].category == "boat" then
            AttachCamToEntity(cam, SpawnedVehicle, 6.0, 8.0, 1.5, true)
            PointCamAtEntity(cam, SpawnedVehicle, -6.0, 2.25, 1.5, true)
        elseif Config.Vehicles[data.model].category == "plane" then
            AttachCamToEntity(cam, SpawnedVehicle, 8.0, 14.0, 0.75, true)
            PointCamAtEntity(cam, SpawnedVehicle, -10.0, 4.25, 0.75, true)
        else
            AttachCamToEntity(cam, SpawnedVehicle, 4.0, 6.0, 0.6, true)
            PointCamAtEntity(cam, SpawnedVehicle, -2.5, 2.25, 0.6, true)
        end
        SetCamFov(cam, 70.0)
        RenderScriptCams(true, true, 500, true, true)
        SetEntityCollision(vehicle, false, false)
        SetEntityHeading(SpawnedVehicle, coords.w + 20)
    else
        local coords = Config.VehicleRentals[data.index].viewCoords
        RequestModel(data.model)
        while not HasModelLoaded(data.model) do
            Wait(100)
        end
        SpawnedVehicle = CreateVehicle(GetHashKey(data.model), coords.x, coords.y, coords.z, coords.w, false, false)
        cam = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)
        if Config.Vehicles[data.model].category == "motorcycle" or Config.Vehicles[data.model].category == "bicycle" then
            AttachCamToEntity(cam, SpawnedVehicle, 2.0, 2.0, 0.5, true)
            PointCamAtEntity(cam, SpawnedVehicle, -10.0, -0.5, 0.5, true)
        elseif Config.Vehicles[data.model].category == "helicopter" then
            if string.find(data.model, "cargo") then
                AttachCamToEntity(cam, SpawnedVehicle, 4.0, 14.0, 0.6, true)
                PointCamAtEntity(cam, SpawnedVehicle, -6.0, 4.25, 0.6, true)
            else
                AttachCamToEntity(cam, SpawnedVehicle, 6.0, 8.0, 0.6, true)
                PointCamAtEntity(cam, SpawnedVehicle, -6.0, 2.25, 0.6, true)
            end
        elseif Config.Vehicles[data.model].category == "boat" then
            AttachCamToEntity(cam, SpawnedVehicle, 6.0, 8.0, 1.5, true)
            PointCamAtEntity(cam, SpawnedVehicle, -6.0, 2.25, 1.5, true)
        elseif Config.Vehicles[data.model].category == "plane" then
            AttachCamToEntity(cam, SpawnedVehicle, 8.0, 14.0, 0.75, true)
            PointCamAtEntity(cam, SpawnedVehicle, -10.0, 4.25, 0.75, true)
        else
            AttachCamToEntity(cam, SpawnedVehicle, 4.0, 6.0, 0.6, true)
            PointCamAtEntity(cam, SpawnedVehicle, -2.5, 2.25, 0.6, true)
        end
        SetCamFov(cam, 70.0)
        RenderScriptCams(true, true, 500, true, true)
        SetEntityCollision(vehicle, false, false)
        SetEntityHeading(SpawnedVehicle, coords.w + 20)
    end
end)

RegisterNUICallback("Buy", function(data)
    if CoreName == 'qb-core' then
        Core.Functions.TriggerCallback('Jakrino:Callback:RemoveMoneyRental', function(callback)
            if callback then
                local playerPed = PlayerPedId()
                local coords = Config.VehicleRentals[data.index].spawnCoords
                RequestModel(data.model)
                while not HasModelLoaded(data.model) do
                    Wait(100)
                end
                YourVehicle = CreateVehicle(GetHashKey(data.model), coords.x, coords.y, coords.z, coords.w, true, false)
                SetPedIntoVehicle(playerPed, YourVehicle, -1)
                SetGameplayCamRelativeHeading(0)
                local vehicledata = {
                    vehicle = YourVehicle,
                    model = data.model
                }
                Config.GiveKey(data.model, GetPlate(YourVehicle))
                table.insert(spawnedCars, vehicledata)
                TriggerServerEvent("Jakrino:Server:BuyRentalVehicle", data.model, data.allprice, data.category, data.index, data.days)
            else
                if data.type == "bank" then
                    Config.Notification(Locales[Config.Locales]["Required-Bank-Money"])
                else
                    Config.Notification(Locales[Config.Locales]["Required-Cash-Money"])
                end
            end
        end, data.allprice, data.type, data.model, data.index)
    elseif CoreName == 'es_extended' then
        Core.TriggerServerCallback('Jakrino:Callback:RemoveMoneyRental', function(callback)
            if callback then
                local playerPed = PlayerPedId()
                local coords = Config.VehicleRentals[data.index].spawnCoords
                RequestModel(data.model)
                while not HasModelLoaded(data.model) do
                    Wait(100)
                end
                YourVehicle = CreateVehicle(GetHashKey(data.model), coords.x, coords.y, coords.z, coords.w, true, false)
                SetPedIntoVehicle(playerPed, YourVehicle, -1)
                SetGameplayCamRelativeHeading(0)
                local vehicledata = {
                    vehicle = YourVehicle,
                    model = data.model
                }
                Config.GiveKey(data.model, GetPlate(YourVehicle))
                table.insert(spawnedCars, vehicledata)
                TriggerServerEvent("Jakrino:Server:BuyRentalVehicle", data.model, data.allprice, data.category, data.index, data.days)
            else
                if data.type == "bank" then
                    Config.Notification(Locales[Config.Locales]["Required-Bank-Money"])
                else
                    Config.Notification(Locales[Config.Locales]["Required-Cash-Money"])
                end
            end
        end, data.allprice, data.type, data.model, data.index)
    end
end)

RegisterNUICallback("SpawnVehicle", function(data)
    if IsModelSpawned(data.model) then
        if DoesEntityExist(GetVehicleByModel(data.model)) then
            Config.Notification(Locales[Config.Locales]["Already-Exist"])
        else
            if CoreName == 'qb-core' then
                Core.Functions.TriggerCallback('Jakrino:Callback:RemoveMoneyDepositeRental', function(callback)
                    if callback then
                        local playerPed = PlayerPedId()
                        local coords = Config.VehicleRentals[data.index].spawnCoords
                        RequestModel(data.model)
                        while not HasModelLoaded(data.model) do
                            Wait(100)
                        end
                        for i, vehicledata in ipairs(spawnedCars) do
                            if vehicledata.model == data.model then
                                table.remove(spawnedCars, i)
                                break
                            end
                        end
                        YourVehicle = CreateVehicle(GetHashKey(data.model), coords.x, coords.y, coords.z, coords.w, true, false)
                        SetPedIntoVehicle(playerPed, YourVehicle, -1)
                        SetGameplayCamRelativeHeading(0)
                        local vehicledata = {
                            vehicle = YourVehicle,
                            model = data.model
                        }
                        Config.GiveKey(data.model, GetPlate(YourVehicle))
                        table.insert(spawnedCars, vehicledata)
                        Config.Notification(Locales[Config.Locales]["Deposit"])
                    else
                        Config.Notification(Locales[Config.Locales]["No-Deposit"])
                    end
                end)
            elseif CoreName == 'es_extended' then
                Core.TriggerServerCallback('Jakrino:Callback:RemoveMoneyDepositeRental', function(callback)
                    if callback then
                        local playerPed = PlayerPedId()
                        local coords = Config.VehicleRentals[data.index].spawnCoords
                        RequestModel(data.model)
                        while not HasModelLoaded(data.model) do
                            Wait(100)
                        end
                        for i, vehicledata in ipairs(spawnedCars) do
                            if vehicledata.model == data.model then
                                table.remove(spawnedCars, i)
                                break
                            end
                        end
                        YourVehicle = CreateVehicle(GetHashKey(data.model), coords.x, coords.y, coords.z, coords.w, true, false)
                        SetPedIntoVehicle(playerPed, YourVehicle, -1)
                        SetGameplayCamRelativeHeading(0)
                        local vehicledata = {
                            vehicle = YourVehicle,
                            model = data.model
                        }
                        Config.GiveKey(data.model, GetPlate(YourVehicle))
                        table.insert(spawnedCars, vehicledata)
                        Config.Notification(Locales[Config.Locales]["Deposit"])
                    else
                        Config.Notification(Locales[Config.Locales]["No-Deposit"])
                    end
                end)
            end
        end
    else
        local playerPed = PlayerPedId()
        local coords = Config.VehicleRentals[data.index].spawnCoords
        RequestModel(data.model)
        while not HasModelLoaded(data.model) do
            Wait(100)
        end
        YourVehicle = CreateVehicle(GetHashKey(data.model), coords.x, coords.y, coords.z, coords.w, true, false)
        SetPedIntoVehicle(playerPed, YourVehicle, -1)
        SetGameplayCamRelativeHeading(0)
        local vehicledata = {
            vehicle = YourVehicle,
            model = data.model
        }
        Config.GiveKey(data.model, GetPlate(YourVehicle))
        table.insert(spawnedCars, vehicledata)
    end
end)

RegisterNUICallback("Expand", function(data)
    if CoreName == 'qb-core' then
        Core.Functions.TriggerCallback('Jakrino:Callback:RemoveMoneyExpand', function(callback)
            if callback then
                TriggerServerEvent("Jakrino:Server:ExpandRentalVehicle", data.model, data.allprice, data.category, data.index, data.days)
            else
                if data.type == "bank" then
                    Config.Notification(Locales[Config.Locales]["Required-Bank-Money"])
                else
                    Config.Notification(Locales[Config.Locales]["Required-Cash-Money"])
                end
            end
        end, data.allprice, data.type)
    elseif CoreName == 'es_extended' then
        Core.TriggerServerCallback('Jakrino:Callback:RemoveMoneyExpand', function(callback)
            if callback then
                TriggerServerEvent("Jakrino:Server:ExpandRentalVehicle", data.model, data.allprice, data.category, data.index, data.days)
            else
                if data.type == "bank" then
                    Config.Notification(Locales[Config.Locales]["Required-Bank-Money"])
                else
                    Config.Notification(Locales[Config.Locales]["Required-Cash-Money"])
                end
            end
        end, data.allprice, data.type)
    end
end)

-- Event's
RegisterNetEvent("Jakrino:Client:UpdateRentalMenu")
AddEventHandler("Jakrino:Client:UpdateRentalMenu", function()
    if CoreName == 'qb-core' then
        Core.Functions.TriggerCallback('Jakrino:Callback:GetRentalData', function(callback)
            if callback then
                SendNUIMessage({
                    type = "update",
                    locals = Locales[Config.Locales],
                    rentforv = Config.RentForVehicles,
                    vehicler = Config.VehicleRentals,
                    allvehicles = Config.Vehicles,
                    tax = Config.Tax,
                    minrd = Config.MinRentDay,
                    maxrd = Config.MaxRentDay,
                    callback = callback
                })
                cbs2 = callback
            else
                SendNUIMessage({
                    type = "update",
                    locals = Locales[Config.Locales],
                    rentforv = Config.RentForVehicles,
                    vehicler = Config.VehicleRentals,
                    allvehicles = Config.Vehicles,
                    tax = Config.Tax,
                    minrd = Config.MinRentDay,
                    maxrd = Config.MaxRentDay
                })
            end
        end)
    elseif CoreName == 'es_extended' then
        Core.TriggerServerCallback('Jakrino:Callback:GetRentalData', function(callback)
            if callback then
                SendNUIMessage({
                    type = "update",
                    locals = Locales[Config.Locales],
                    rentforv = Config.RentForVehicles,
                    vehicler = Config.VehicleRentals,
                    allvehicles = Config.Vehicles,
                    tax = Config.Tax,
                    minrd = Config.MinRentDay,
                    maxrd = Config.MaxRentDay,
                    callback = callback
                })
                cbs2 = callback
            else
                SendNUIMessage({
                    type = "update",
                    locals = Locales[Config.Locales],
                    rentforv = Config.RentForVehicles,
                    vehicler = Config.VehicleRentals,
                    allvehicles = Config.Vehicles,
                    tax = Config.Tax,
                    minrd = Config.MinRentDay,
                    maxrd = Config.MaxRentDay
                })
            end
        end)
    end
end)

RegisterNetEvent("Jakrino:Client:OpenRentalMenu")
AddEventHandler("Jakrino:Client:OpenRentalMenu", function(targetdata, index)
    Config.Hud()
    looking = true
    if targetdata and type(targetdata) == "table" then
        SendNUIMessage({
            type = "open",
            index = targetdata.index
        })
        SetNuiFocus(true, true)
    else
        SendNUIMessage({
            type = "open",
            index = index
        })
        SetNuiFocus(true, true)
    end
end)

RegisterNetEvent("Jakrino:Client:UpdateRentalsData")
AddEventHandler("Jakrino:Client:UpdateRentalsData", function(data)
    SendNUIMessage({
        type = "updatedata",
        data = data
    })
end)