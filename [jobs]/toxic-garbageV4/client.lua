if TXC.Framework == "qb" then
    QBCore = exports[TXC.FrameWorkScriptName]:GetCoreObject()
elseif TXC.Framework == "oldqb" then 
    QBCore = nil
end

Citizen.CreateThread(function()
    if TXC.Framework == "oldqb" then 
        while QBCore == nil do
            TriggerEvent(TXC.FrameGetObjectEvent, function(obj) QBCore = obj end)
            Citizen.Wait(200)
        end
	elseif TXC.Framework == "qb" then
		while QBCore == nil do
            Citizen.Wait(200)
        end
    end

    garbageBlip = AddBlipForCoord(TXC.StartZone.StartPed.x, TXC.StartZone.StartPed.y, TXC.StartZone.StartPed.z)
    SetBlipSprite(garbageBlip, TXC.Blip.Sprite)
    SetBlipDisplay(garbageBlip, 4)
    SetBlipScale(garbageBlip, TXC.Blip.Scale)
    SetBlipAsShortRange(garbageBlip, true)
    SetBlipColour(garbageBlip, TXC.Blip.Color)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(TXC.Blip.Label)
    EndTextCommandSetBlipName(garbageBlip)
end)

local altyazi = "Enter Vehicle"
local menuacik = false
local injob = false
local wearedclothes = false
local checkpoints = {}
local currentcheckpoint = 1
local vehicle = nil
local currentblip = nil
local copaldi = false
local garbageprop = nil
local level = 0
local toplambagsayi = 0
local aracabindi = false

local sleeptime = 1500
CreateThread(function()
    RequestModel("s_m_y_garbage")
    while not HasModelLoaded("s_m_y_garbage") do
        Wait(0)
    end
    Ped = CreatePed(4, "s_m_y_garbage", TXC.StartZone.StartPed.x, TXC.StartZone.StartPed.y, TXC.StartZone.StartPed.z - 1, TXC.StartZone.StartPed.w, false, true)
    FreezeEntityPosition(Ped, true)
    SetEntityInvincible(Ped, true)
    SetBlockingOfNonTemporaryEvents(Ped, true)
    if TXC.Interaction.InteractionType == "target" then
        exports[TXC.Interaction.TargetName]:AddTargetEntity(Ped, {
            options = {
                {
                    label = TXC.Languages["start_job"],
                    icon = 'fa-solid fa-dollar-sign',
                    action = function()
                        openmenu()
                    end
                }
            },
            distance = 2.0
        })
    elseif TXC.Interaction.InteractionType == "drawtext" then
        while true do
            if GetDistanceBetweenCoords(TXC.StartZone.StartPed.x, TXC.StartZone.StartPed.y, TXC.StartZone.StartPed.z, GetEntityCoords(PlayerPedId()), false) < 30 then
                sleeptime = 1
                if GetDistanceBetweenCoords(TXC.StartZone.StartPed.x, TXC.StartZone.StartPed.y, TXC.StartZone.StartPed.z, GetEntityCoords(PlayerPedId()), false) < 2 then
                    DrawText3D(TXC.StartZone.StartPed.x, TXC.StartZone.StartPed.y, TXC.StartZone.StartPed.z + 1, TXC.Languages.speak) -- EKLEME
                    if IsControlJustPressed(0, 38) then
                        openmenu()
                    end
                end
            else
                sleeptime = 1500
            end
            Wait(sleeptime)
        end
    end
end)

RegisterNUICallback('close', function()
    SetNuiFocus(false, false)
    menuacik = false
end)

local withdrawSpam = 0
RegisterNUICallback('WithdrawMoney', function(data)
    if GetGameTimer() > withdrawSpam then 
        withdrawSpam = GetGameTimer() + 1000
        QBCore.Functions.TriggerCallback('toxic-garbageV4:Withdraw', function(result)
            if result then
                SendNUIMessage({
                    UpdateMoney = true,
                    Money = result,
                })
            end
        end, data["Price"])
    end
end)

RegisterNUICallback('WearClothes', function(data)
    if data.wear then
        wearedclothes = true
        ChangeOutfit()
    else
        ChangeOutfit()
        wearedclothes = false
        TriggerEvent('toxic:charfix')   
    end
end)

RegisterNUICallback('StartJob', function(data)
    for k,v in pairs(TXC.JobRoutes) do
        if v.id == data.index then
            data.index = k
        end
    end
    if wearedclothes then
        checkpoints = TXC.JobRoutes[data.index].Route
        currentcheckpoint = 1
        local spawned = false
        injob = true
        for k,v in pairs(TXC.StartZone.SpawnCoords) do
            if IsSpawnPointClear(v, 3) then
                QBCore.Functions.SpawnVehicle(TXC.Vehicle, function(veh)
                    vehicle = veh
                    spawned = true
                    OnVehicleSpawn(GetVehicleNumberPlateText(veh))
                end, v, true)
            end
            if spawned then
                break
            end
        end
        if spawned then
            SendNUIMessage({
                action = "startjob",
                routeid = TXC.JobRoutes[data.index].id,
            })
            FrameworkNotify(TXC.Languages["enter_vehicle"], "success")
            vehiclecoords = GetEntityCoords(vehicle)
            altyazi = TXC.Languages["enter_vehicle"]
            while not IsPedInAnyVehicle(PlayerPedId()) do
                if injob then
                    Wait(0)
                    DrawText3D(vehiclecoords.x, vehiclecoords.y, vehiclecoords.z + 1, TXC.Languages["enter_vehicle"])
                else
                    break
                end
            end
            aracabindi = true
            if injob then
                SetupRoute(checkpoints, TXC.JobRoutes[data.index].Price)
            end
        else
            injob = false
            aracabindi = false
            FrameworkNotify(TXC.Languages["no_spawnpoint"], "error")
            notify("error", TXC.Languages["no_spawnpoint"])
        end
    end
end)


local spamMenuProtect = 0 -- düzenlendi
function openmenu()
    spamMenuProtect = GetGameTimer() + 1000-- düzenlendi
    if GetGameTimer() < spamMenuProtect then -- düzenlendi
        QBCore.Functions.TriggerCallback('toxic-garbageV4:GetPlayerDetails', function(data)
            if data.steamid then
                steamID = "https://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=" .. data.apiKey .. "&steamids=" .. data.steamid
            else
                steamID = 'null'
            end
            local tasks = {}
            for k,v in pairs(json.decode(data.tasks)) do
                tasks[#tasks + 1] = v
            end
            table.sort(tasks, function(a,b) return a.id < b.id end)
            if menuacik then
                SetNuiFocus(true, true)
                SendNUIMessage({
                    showUI = true,
                    data = data,
                    routes = TXC.JobRoutes,
                    tasks = tasks,
                    NeededXP = TXC.NeededXP,
                    DailyLimit = TXC.DailyLimit,
                    maxkm = TXC.MaxKmForRoutes,
                    steamid = steamID,
                    Locales = TXC.Languages,
                })
            else     
                SetNuiFocus(false, false)
                SendNUIMessage({
                    showUI = false,
                })
            end
        end)
        menuacik = not menuacik
    end-- düzenlendi
end

local sleepamk = 2000
CreateThread(function()
    while true do
        if injob then
            sleepamk = 1
            local pedcoords = GetEntityCoords(PlayerPedId())
            if GetDistanceBetweenCoords(destination, pedcoords, false) < 20 then
                DrawText3D(destination.x, destination.y, destination.z + 0.5, TXC.Languages["bags_left"] .. bagsayi .. "/" .. toplambagsayi)
            end
        else
            sleepamk = 2000
        end
        Wait(sleepamk)
    end
end)

local bagLeftKoruma = 0 -- düzenlendi
function SetupRoute(currentroute, price)
    if bagLeftKoruma > GetGameTimer() then return end -- düzenlendi
    altyazi = TXC.Languages["move_to_checkpoint"]
    exports['qb-target']:RemoveZone("araba")
    exports['qb-target']:RemoveZone("garbagebin")
    local currentroute = currentroute
    local price = price
    destination = currentroute[currentcheckpoint]
    if destination then
        currentblip = AddBlipForCoord(destination.x, destination.y, destination.z)
        bagsayi = math.random(1, 3)
        toplambagsayi = bagsayi
        SetBlipSprite(currentblip, 1)
        SetBlipDisplay(currentblip, 2)
        SetBlipScale(currentblip, 1.0)
        SetBlipAsShortRange(currentblip, false)
        SetBlipColour(currentblip, 27)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName("Destination")
        EndTextCommandSetBlipName(currentblip)
        SetBlipRoute(currentblip, true)
        local vehiclecoords = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, -4.5, 0.0)
        if TXC.Interaction.InteractionType == "target" then
            exports['qb-target']:AddCircleZone('garbagebin', vector3(destination.x, destination.y, destination.z), 2.0,{
                name = 'garbagebin', debugPoly = false, useZ=true }, {
                options = {{label = TXC.Languages["take_garbage"], icon = 'fa-solid fa-trash',
                action = function()
                    FreezeEntityPosition(PlayerPedId(), true)
                    LoadAnimation('missfbi4prepp1')
                    TaskPlayAnim(PlayerPedId(), 'missfbi4prepp1', '_bag_walk_garbage_man', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
                    garbageprop = CreateObject(`prop_cs_rub_binbag_01`, 0, 0, 0, true, true, true)
                    AttachEntityToEntity(garbageprop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.12, 0.0, -0.05, 220.0, 120.0, 0.0, true, true, false, true, 1, true)
                    StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
                    FreezeEntityPosition(PlayerPedId(), false)
                    AnimCheck()
                    copaldi = true
                    local vehiclecoords = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, -4.5, 0.0)
                    if math.random(1, 100) <TXC.RandomItemChange then
                        TriggerServerEvent('toxic-garbageV4:RandomItem')   
                        FindRareItem()
                    end
                end,
                canInteract = function()
                    return not copaldi
                end
                }},
                distance = 2.0
            })
            exports['qb-target']:AddTargetEntity(vehicle, {
                options = {
                    {label = "Drop the Trash",icon = 'fa-solid fa-truck',
                    action = function()
                        if GetGameTimer() > bagLeftKoruma then 
                            bagLeftKoruma = GetGameTimer() + 500 -- düzenlendi
                            if (bagsayi - 1) <= 0 then
                                copaldi = false
                                FreezeEntityPosition(PlayerPedId(), true)
                                LoadAnimation('missfbi4prepp1')
                                TaskPlayAnim(PlayerPedId(), 'missfbi4prepp1', '_bag_throw_garbage_man', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
                                Wait(1250)
                                DetachEntity(garbageprop, 1, false)
                                DeleteObject(garbageprop)
                                TaskPlayAnim(PlayerPedId(), 'missfbi4prepp1', 'exit', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
                                FreezeEntityPosition(PlayerPedId(), false)
                                garbageprop = nil
                                FrameworkNotify(TXC.Languages["next_checkpoint"], "success")
                                currentcheckpoint = currentcheckpoint + 1
                                RemoveBlip(currentblip)
                                SetupRoute(currentroute, price)
                            else
                                copaldi = false
                                FreezeEntityPosition(PlayerPedId(), true)
                                LoadAnimation('missfbi4prepp1')
                                TaskPlayAnim(PlayerPedId(), 'missfbi4prepp1', '_bag_throw_garbage_man', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
                                Wait(1250)
                                DetachEntity(garbageprop, 1, false)
                                DeleteObject(garbageprop)
                                TaskPlayAnim(PlayerPedId(), 'missfbi4prepp1', 'exit', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
                                FreezeEntityPosition(PlayerPedId(), false)
                                garbageprop = nil
                                bagsayi = bagsayi - 1
                                FrameworkNotify(TXC.Languages["bags_left"] .. bagsayi, "success")
                            end
                        end
                    end,canInteract = function() return copaldi end, }
                },
                distance = 2.0
                })
        elseif TXC.Interaction.InteractionType == "drawtext" then
            while true do
                local pedcoords = GetEntityCoords(PlayerPedId())
                if GetDistanceBetweenCoords(destination, pedcoords, false) < 20 then
                    DrawText3D(destination.x, destination.y, destination.z + 0.5, TXC.Languages["bags_left"] .. bagsayi .. "/" .. toplambagsayi)
                    if not copaldi then
                        if GetDistanceBetweenCoords(destination, pedcoords, false) < 2 then
                            DrawText3D(destination.x, destination.y, destination.z, TXC.Languages["take_garbage"])
                            if IsControlJustReleased(0, 38) then
                                if GetGameTimer() > bagLeftKoruma then 
                                    bagLeftKoruma = GetGameTimer() + 500 -- düzenlendi
                                    FreezeEntityPosition(PlayerPedId(), true)
                                    LoadAnimation('missfbi4prepp1')
                                    TaskPlayAnim(PlayerPedId(), 'missfbi4prepp1', '_bag_walk_garbage_man', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
                                    garbageprop = CreateObject(`prop_cs_rub_binbag_01`, 0, 0, 0, true, true, true)
                                    AttachEntityToEntity(garbageprop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(), 57005), 0.12, 0.0, -0.05, 220.0, 120.0, 0.0, true, true, false, true, 1, true)
                                    StopAnimTask(PlayerPedId(), "anim@amb@clubhouse@tutorial@bkr_tut_ig3@", "machinic_loop_mechandplayer", 1.0)
                                    FreezeEntityPosition(PlayerPedId(), false)
                                    AnimCheck()
                                    copaldi = true
                                end
                            end
                        end
                    else    
                        if DoesEntityExist(vehicle) then
                            local vehiclecoords = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, -4.5, 0.0)
                            if GetDistanceBetweenCoords(vehiclecoords, pedcoords, false) < 2 then
                                DrawText3D(vehiclecoords.x, vehiclecoords.y, vehiclecoords.z, TXC.Languages["drop_garbage_to_vehicle"])
                                if IsControlJustReleased(0, 38) then
                                    if GetGameTimer() > bagLeftKoruma then 
                                        bagLeftKoruma = GetGameTimer() + 500 -- düzenlendi
                                        if (bagsayi - 1) <= 0 then
                                            FreezeEntityPosition(PlayerPedId(), true)
                                            LoadAnimation('missfbi4prepp1')
                                            TaskPlayAnim(PlayerPedId(), 'missfbi4prepp1', '_bag_throw_garbage_man', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
                                            Wait(1250)
                                            DetachEntity(garbageprop, 1, false)
                                            DeleteObject(garbageprop)
                                            TaskPlayAnim(PlayerPedId(), 'missfbi4prepp1', 'exit', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
                                            FreezeEntityPosition(PlayerPedId(), false)
                                            garbageprop = nil
                                            FrameworkNotify(TXC.Languages["next_checkpoint"], "success")
                                            copaldi = false
                                            currentcheckpoint = currentcheckpoint + 1
                                            RemoveBlip(currentblip)
                                            SetupRoute(currentroute, price)
                                            break
                                        else
                                            FreezeEntityPosition(PlayerPedId(), true)
                                            LoadAnimation('missfbi4prepp1')
                                            TaskPlayAnim(PlayerPedId(), 'missfbi4prepp1', '_bag_throw_garbage_man', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
                                            Wait(1250)
                                            DetachEntity(garbageprop, 1, false)
                                            DeleteObject(garbageprop)
                                            TaskPlayAnim(PlayerPedId(), 'missfbi4prepp1', 'exit', 8.0, 8.0, 1100, 48, 0.0, 0, 0, 0)
                                            FreezeEntityPosition(PlayerPedId(), false)
                                            garbageprop = nil
                                            bagsayi = bagsayi - 1
                                            -- FrameworkNotify(bagsayi .. " Kadar torba kaldı") -- düzenlendi (silindi)
                                            copaldi = false
                                        end
                                    end
                                end
                            end
                        else
                            FrameworkNotify(TXC.Languages["vehicle_deleted"], "error")
                            vehicle = nil
                            RemoveBlip(currentblip)
                            copaldi = false
                            injob = false
                            aracabindi = false
                        end
                    end
                end
                Wait(1)
            end
        end
    else
        FrameworkNotify(TXC.Languages["done_work"], "success")
        RemoveBlip(currentblip)
        currentblip = AddBlipForCoord(TXC.StartZone.DropVehicleCoord.x, TXC.StartZone.DropVehicleCoord.y, TXC.StartZone.DropVehicleCoord.z)
        bagsayi = math.random(1, 3)
        toplambagsayi = bagsayi
        SetBlipSprite(currentblip, 1)
        SetBlipDisplay(currentblip, 2)
        SetBlipScale(currentblip, 1.0)
        SetBlipAsShortRange(currentblip, false)
        SetBlipColour(currentblip, 27)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName("Destination")
        EndTextCommandSetBlipName(currentblip)
        SetBlipRoute(currentblip, true)
        while true do
            if GetDistanceBetweenCoords(TXC.StartZone.DropVehicleCoord, GetEntityCoords(PlayerPedId()), false) < 5 then
                if IsPedInAnyVehicle(PlayerPedId()) then
                    DrawText3D(TXC.StartZone.DropVehicleCoord.x, TXC.StartZone.DropVehicleCoord.y, TXC.StartZone.DropVehicleCoord.z, TXC.Languages["drop_vehicle"])
                    if IsControlJustReleased(0, 38) then
                        TaskLeaveVehicle(PlayerPedId(), vehicle, 0)
                        Wait(1500)
                        QBCore.Functions.DeleteVehicle(vehicle)
                        TriggerServerEvent('toxic-garbageV4:payment', price)
                        RemoveBlip(currentblip)
                        copaldi = false
                        injob = false
                        aracabindi = false
                        vehicle = nil
                        OnJobFinish()
                        break
                    end
                end
            end
            Wait(0)
        end
    end
end

RegisterNUICallback('LeaveJob', function()
    QBCore.Functions.DeleteVehicle(vehicle)
    -- TriggerServerEvent('toxic-garbageV4:payment', price)
    RemoveBlip(currentblip)
    copaldi = false
    injob = false
    aracabindi = false
    vehicle = nil
end)

function AnimCheck()
    CreateThread(function()
        local ped = PlayerPedId()
        while copaldi and not IsEntityPlayingAnim(ped, 'missfbi4prepp1', '_bag_throw_garbage_man',3) do
            if not IsEntityPlayingAnim(ped, 'missfbi4prepp1', '_bag_walk_garbage_man', 3) then
                ClearPedTasksImmediately(ped)
                LoadAnimation('missfbi4prepp1')
                TaskPlayAnim(ped, 'missfbi4prepp1', '_bag_walk_garbage_man', 6.0, -6.0, -1, 49, 0, 0, 0, 0)
            end
            Wait(1000)
        end
    end)
end

IsSpawnPointClear = function(coords, radius)
	local vehicles = GetVehiclesInArea(coords, radius)

	return #vehicles == 0
end

GetVehiclesInArea = function(coords, area)
	local vehicles       = QBCore.Functions.GetVehicles()
	local vehiclesInArea = {}

	for i=1, #vehicles, 1 do
		local vehicleCoords = GetEntityCoords(vehicles[i])
		local distance      = GetDistanceBetweenCoords(vehicleCoords, coords.x, coords.y, coords.z, true)

		if distance <= area then
			table.insert(vehiclesInArea, vehicles[i])
		end
	end

	return vehiclesInArea
end

function LoadAnimation(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do Wait(10) end
end

AddEventHandler('onResourceStop', function(resource)
    if GetCurrentResourceName() == resource then
        if garbageprop then
            DeleteEntity(garbageprop)
            garbageprop = nil
            exports['qb-target']:RemoveTargetEntity(vehicle)
            exports['qb-target']:RemoveZone("garbagebin")
        end
    end
end)

jobOutfitWorn = false

function ChangeOutfit()
	if jobOutfitWorn then
		TriggerServerEvent("qb-clothes:loadPlayerSkin")
		jobOutfitWorn = false
	else
		local model = GetEntityModel(PlayerPedId())
		if model == 1885233650 then -- male
			local data = {
				["outfitName"] =  "Male Garbage",
				["outfitData"] = {
					["arms"]        = { item = TXC.Clothing.male.arms, 		 texture = 0},
					["t-shirt"]     = { item = TXC.Clothing.male.tshirt_1, 	 texture = TXC.Clothing.male.tshirt_2},
					["torso2"]      = { item = TXC.Clothing.male.torso_1, 	 texture = TXC.Clothing.male.torso_2},
					["decals"]      = { item = TXC.Clothing.male.decals_1, 	 texture = TXC.Clothing.male.decals_2},
					["pants"]       = { item = TXC.Clothing.male.pants_1, 	 texture = TXC.Clothing.male.pants_2},
					["shoes"]       = { item = TXC.Clothing.male.shoes_1, 	 texture = TXC.Clothing.male.shoes_2},
					["hat"]         = { item = TXC.Clothing.male.helmet_1, 	 texture = TXC.Clothing.male.helmet_2},
					["accessory"]   = { item = TXC.Clothing.male.chain_1, 	 texture = TXC.Clothing.male.chain_2},
					["ear"]         = { item = TXC.Clothing.male.ears_1, 	 texture = TXC.Clothing.male.ears_2},
					["mask"]        = { item = TXC.Clothing.male.mask_1, 	 texture = TXC.Clothing.male.mask_2},
					["bag"]         = { item = TXC.Clothing.male.bags_1, 	 texture = TXC.Clothing.male.bags_2},
					["glass"]       = { item = TXC.Clothing.male.glasses_1,  texture = TXC.Clothing.male.glasses_2},
					["vest"]        = { item = TXC.Clothing.male.bproof_1, 	 texture = TXC.Clothing.male.bproof_2},
					["watch"]       = { item = TXC.Clothing.male.watches_1,  texture = TXC.Clothing.male.watches_2},
					["bracelet"]    = { item = TXC.Clothing.male.bracelets_1,texture = TXC.Clothing.male.bracelets_2},
				}
			}
			TriggerEvent("qb-clothing:client:loadOutfit",data)
			jobOutfitWorn = true
		elseif model == -1667301416 then --- female
			local data = {
				["outfitName"] =  "Female Garbage",
				["outfitData"] = {
					["arms"]        = { item = TXC.Clothing.female.arms, 	   texture = 0},
					["t-shirt"]     = { item = TXC.Clothing.female.tshirt_1,   texture = TXC.Clothing.female.tshirt_2},
					["torso2"]      = { item = TXC.Clothing.female.torso_1,    texture = TXC.Clothing.female.torso_2},
					["decals"]      = { item = TXC.Clothing.female.decals_1,   texture = TXC.Clothing.female.decals_2},
					["pants"]       = { item = TXC.Clothing.female.pants_1,    texture = TXC.Clothing.female.pants_2},
					["shoes"]       = { item = TXC.Clothing.female.shoes_1,    texture = TXC.Clothing.female.shoes_2},
					["hat"]         = { item = TXC.Clothing.female.helmet_1,   texture = TXC.Clothing.female.helmet_2},
					["accessory"]   = { item = TXC.Clothing.female.chain_1,    texture = TXC.Clothing.female.chain_2},
					["ear"]         = { item = TXC.Clothing.female.ears_1, 	   texture = TXC.Clothing.female.ears_2},
					["mask"]        = { item = TXC.Clothing.female.mask_1, 	   texture = TXC.Clothing.female.mask_2},
					["bag"]         = { item = TXC.Clothing.female.bags_1, 	   texture = TXC.Clothing.female.bags_2},
					["glass"]       = { item = TXC.Clothing.female.glasses_1,  texture = TXC.Clothing.female.glasses_2},
					["vest"]        = { item = TXC.Clothing.female.bproof_1,   texture = TXC.Clothing.female.bproof_2},
					["watch"]       = { item = TXC.Clothing.female.watches_1,  texture = TXC.Clothing.female.watches_2},
					["bracelet"]    = { item = TXC.Clothing.female.bracelets_1,texture = TXC.Clothing.female.bracelets_2},
				}
			}
			TriggerEvent("qb-clothing:client:loadOutfit",data)
			jobOutfitWorn = true
		else
			-- print('ped karakter')
		end
	end
end

RegisterNUICallback('GetReward', function(data)
    -- print(data.index)
    TriggerServerEvent('toxic-garbageV4:CollectReward', TXC.Tasks[data.index])
end)

RegisterNUICallback('SiralaPrice', function()
    local routes = {}
    for k,v in pairs(TXC.JobRoutes) do
        routes[#routes + 1] = v
    end
    table.sort(routes, function(a,b) return a.Price > b.Price end)
    SendNUIMessage({
        action = "routesguncelle",
        routes = routes,
    })
end)

RegisterNUICallback('SiralaDistance', function()
    local routes = {}
    for k,v in pairs(TXC.JobRoutes) do
        routes[#routes + 1] = v
    end
    table.sort(routes, function(a,b) return a.RouteDistance > b.RouteDistance end)
    SendNUIMessage({
        action = "routesguncelle",
        routes = routes,
    })
end)

RegisterNUICallback('SiralaRandom', function()
    local routes = shuffle(TXC.JobRoutes)
    SendNUIMessage({
        action = "routesguncelle",
        routes = routes,
    })
end)

function shuffle(t)
    for i = 1, #t - 1 do
        local r = math.random(i, #t)
        t[i], t[r] = t[r], t[i]
    end
    return t
end

RegisterNetEvent('toxic-garbageV4:AddTask:client', function(taskid, amount)
    TriggerServerEvent('toxic-garbageV4:AddTask', taskid, amount)
end)

RegisterNetEvent('toxic-garbageV4:notify', function(type, text)
    SendNUIMessage({
        action = "notify",
        type = type,
        text = text,
    })
end)

function notify(type, text)
    SendNUIMessage({
        action = "notify",
        type = type,
        text = text,
    })
end

RegisterNetEvent('frameworknotify-cl', function(text, type)
    FrameworkNotify(TXC.Languages["task_successfully"], "success")
end)

local sleepaq = 2000
CreateThread(function()
    while true do
        if injob then
            sleepaq = 1
            -- print(1)
            SetTextFont(0)
            SetTextProportional(1)
            SetTextScale(0.0, 0.3)
            SetTextColour(255, 255, 255, 255)
            SetTextDropshadow(0, 0, 0, 0, 255)
            SetTextEdge(1, 0, 0, 0, 255)
            SetTextDropShadow()
            SetTextOutline()
            SetTextEntry("STRING")
            AddTextComponentString(altyazi)
            DrawText(0.5, 0.95)
        else
            sleepaq = 2000
        end
        Wait(sleepaq)
    end
end)

local sleepaq2 = 2000
CreateThread(function()
    while true do
        if injob then
            sleepaq2 = 250
            if aracabindi then
                if IsPedInAnyVehicle(PlayerPedId()) then
                    altyazi = TXC.Languages["move_to_checkpoint"]
                else
                    if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), destination, false) < 10 then
                        altyazi = TXC.Languages["collect_garbage"]
                    else
                        altyazi = TXC.Languages["move_to_checkpoint"]
                    end
                end
            end
        else
            sleepaq2 = 2000
        end
        Wait(sleepaq2)
    end
end)

RegisterNetEvent('task-finish', function()
    OnTasksFinish()
end)

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.28, 0.28)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 245)
    SetTextOutline(true)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
end