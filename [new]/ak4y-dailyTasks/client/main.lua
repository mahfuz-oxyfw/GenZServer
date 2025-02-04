if AK4Y.Framework == "qb" then
    QBCore = exports['qb-core']:GetCoreObject()
elseif AK4Y.Framework == "oldqb" then 
    QBCore = nil
end

local mySelectedTask = nil
local openMenuSpamProtect = 0
local done = false
local started = false

Citizen.CreateThread(function()
    if AK4Y.Framework == "oldqb" then 
        while QBCore == nil do
            TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
            Citizen.Wait(200)
        end
	elseif AK4Y.Framework == "qb" then
		while QBCore == nil do
            Citizen.Wait(200)
        end
    end
	PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
	PlayerData = QBCore.Functions.GetPlayerData()
    Wait(1000)
	QBCore.Functions.TriggerCallback("ak4y-dailyTasks:playTimeCheck", function(result)
        if result then 
            mySelectedTask = json.decode(result.selectedTask)
            if result.done == 1 then 
                done = true 
            end
            playTime = GetGameTimer() + ((mySelectedTask.neededPlayTime - (mySelectedTask.neededPlayTime - result.playTime)) * 60000)
            Wait(1)
            playTimeMin = getNeededPlayTime()
            Wait(1)
            startTime()
        end
	end)
end)

-- Add qb-target interaction for the ped
exports['qb-target']:AddTargetModel({
    `a_m_m_hasjew_01` -- Replace this with the model name of your ped
}, {
    options = {
        {
            type = "client", -- This makes the event trigger client-side
            event = "AK4Y:OpenMenu", -- Custom event for the menu
            icon = "fas fa-bars", -- Interaction icon
            label = "Open GZ Investment Menu", -- Interaction label
        },
    },
    distance = 2.0 -- Interaction distance
})

-- Client-side event to open the menu
RegisterNetEvent("AK4Y:OpenMenu", function()
    local remainingTime
    if playTimeMin ~= nil and playTimeMin > 0 then
        local sa = tonumber(getNeededPlayTime() * 60)
        remainingTime = disp_time(sa)
    else
        remainingTime = "DONE"
    end

    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'show',
        tasks = AK4Y.Tasks, 
        playerDetails = mySelectedTask,
        playTime = playTimeMin,
        remaining = remainingTime,
        done = done,
        language = AK4Y.Language,
    })
end)

-- Spawn the ped and add a blip
CreateThread(function()
    local pedModel = `a_m_m_hasjew_01` -- Replace with your ped's model
    local pedCoords = vector3(304.91, -703.27, 29.31) -- Replace with your desired coordinates
    local pedHeading = 1.82 -- Replace with the ped's heading (rotation)

    -- Load the ped model
    RequestModel(pedModel)
    while not HasModelLoaded(pedModel) do
        Wait(0)
    end

    -- Create the ped
    local ped = CreatePed(4, pedModel, pedCoords.x, pedCoords.y, pedCoords.z - 1.0, pedHeading, false, true)
    SetEntityAsMissionEntity(ped, true, true)
    FreezeEntityPosition(ped, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetEntityInvincible(ped, true) -- Make the ped unkillable
    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_CLIPBOARD", 0, true) -- Replace with your desired animation

--[[     -- Create a blip for the ped
    local blip = AddBlipForEntity(ped)
    SetBlipSprite(blip, 525) -- Set blip icon
    SetBlipDisplay(blip, 4) -- Blip display on the map
    SetBlipScale(blip, 0.4) -- Blip size
    SetBlipColour(blip, 3) -- Blip color
    SetBlipAsShortRange(blip, true) -- Only visible when near
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Gen Z Investment") -- Blip name
    EndTextCommandSetBlipName(blip) ]]
    
end)




--[[ RegisterNetEvent('qb-radialmenu:client:onRadialmenuOpen', function()
    if MenuItemId ~= nil then
        exports['qb-radialmenu']:RemoveOption(MenuItemId)
        MenuItemId = nil
    end
    MenuItemId = exports['qb-radialmenu']:AddOption(
        {
            id = 'dailyTask',
            title = 'Gen Z Invest',
            icon = 'money-bill',
            type = 'client',
            event = 'openDailyTaskMenu', 
            shouldClose = true
        },
    MenuItemId)
end) ]]

RegisterNetEvent('openDailyTaskMenu')
AddEventHandler('openDailyTaskMenu', function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'show',
        tasks = AK4Y.Tasks, 
        playerDetails = mySelectedTask,
        playTime = playTimeMin,
        remaining = remainingTime,
        done = done,
        language = AK4Y.Language,
    })
end)

RegisterNUICallback('closeMenu', function(data, cb)
	SetNuiFocus(false, false)
end)

RegisterNUICallback('selectTask', function(data, cb)
	QBCore.Functions.TriggerCallback("ak4y-dailyTasks:selectTask", function(result)
        if result then 
            mySelectedTask = data.itemDetails
            playTime = GetGameTimer() + ((mySelectedTask.neededPlayTime) * 60000)
            Wait(1)
            playTimeMin = getNeededPlayTime()
            Wait(1)
            if not started then 
                startTime()
            end
        end
        cb(result)
    end, data)
end)

RegisterNUICallback('cancelTask', function(data, cb)
	QBCore.Functions.TriggerCallback("ak4y-dailyTasks:cancelTask", function(result)
        if result then 
            mySelectedTask = nil
            done = false
            playTimeMin = nil
        end
        cb(result)
    end, data)
end)

RegisterNUICallback('getReward', function(data, cb)
	QBCore.Functions.TriggerCallback("ak4y-dailyTasks:getReward", function(result)
        if result then 
            mySelectedTask = nil
            done = false
            playTimeMin = nil
        end
        cb(result)
    end)
end)

function startTime()
    started = true
	Citizen.CreateThread(function()
		Wait(1000)
		while true do 
			playTimeMin = getNeededPlayTime()
            if not done then 
                if playTimeMin ~= nil and playTimeMin <= 0 then 
                    done = true
                    TriggerServerEvent('ak4y-dailyTasks:setDone')
                    started = false
                    break
                end
            else
                started = false
                break
            end
			Wait(5000)
		end
	end)
end

Citizen.CreateThread(function()
	while true do
		Wait(1 * 60000)
        if not done then
            if playTimeMin ~= nil and playTimeMin > 0 then 
                TriggerServerEvent('ak4y-dailyTasks:updateTime', playTimeMin)
            end
        end
	end
end)

getNeededPlayTime = function()
    return math.round((playTime - GetGameTimer()) / 60000)
end

function disp_time(time)
    local days = math.floor(time/86400)
    local remaining = time % 86400
    local hours = math.floor(remaining/3600)
    remaining = remaining % 3600
    local minutes = math.floor(remaining/60)
    remaining = remaining % 60
    local seconds = remaining
    if (hours < 10) then
        hours = "0" .. tostring(hours)
    end
    if (minutes < 10) then
        minutes = "0" .. tostring(minutes)
    end
    if (seconds < 10) then
        seconds = "0" .. tostring(seconds)
    end
    if hours ~= "00" then 
        answer = hours..'h '..minutes..'m'
    else
        answer = minutes..'m'

    end
    return answer
end