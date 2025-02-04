local QBCore = exports['qb-core']:GetCoreObject()
local hasShot = false
local ignoreShooting = false

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        ped = PlayerPedId()
        if IsPedShooting(ped) then
            local currentWeapon = GetSelectedPedWeapon(ped)
            for _, k in pairs(Config.weaponChecklist) do
                if currentWeapon == k then
                    ignoreShooting = true
                    break
                end
            end

            if not ignoreShooting then
                TriggerServerEvent('GSR:SetGSR', timer)
                hasShot = true
                ignoreShooting = false
                Citizen.Wait(Config.gsrUpdate)
            end
            ignoreShooting = false
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(2000)
        if Config.waterClean and hasShot then
            ped = PlayerPedId()
            if IsEntityInWater(ped) then
                QBCore.Functions.Notify("You begin cleaning off the Gun Powder... stay in the water")
                Wait(100)
                QBCore.Functions.Progressbar("lundgsr", "Washing Off Gun Powder", Config.waterCleanTime, false, false, {
                    disableMovement = false,
                    disableCarMovement = false,
                    disableMouse = false,
                    disableCombat = false,
                }, {}, {}, {}, function() -- Done
            		if IsEntityInWater(ped) then
                    	hasShot = false
                    	TriggerServerEvent('GSR:Remove')
                        QBCore.Functions.Notify("You washed off all the Gun Powder in the water","success")
                    else
                        QBCore.Functions.Notify("You left the water too early and did not wash off the Gun Powder.", "error")
                    end
                end)
				Citizen.Wait(Config.waterCleanTime)
            end
        end
    end
end)
--             if IsPedInAnyWater(ped) then
--                 lib.notify({
--                     title = 'GSR Notify',
--                     description = 'You begin cleaning off the Gun Powder... stay in the water',
--                     type = 'success'
--                 })
--                 Wait(100)
            
--                 if lib.progressBar({
--                     duration = Config.waterCleanTime,
--                     label = 'Washing Off Gun Powder',
--                     useWhileDead = false,
--                     canCancel = true,
--                     disable = {
--                         car = true,
--                     },
--                     anim = {
--                         dict = 'mp_player_intdrink',
--                         clip = 'loop_bottle'
--                     },
--                 }) then
--                     if IsPedInAnyWater(ped) then
--                         hasShot = false
--                         TriggerServerEvent('GSR:Remove')
--                         lib.notify({
--                             title = 'GSR Notify',
--                             description = 'You washed off all the Gun Powder in the water',
--                             type = 'success'
--                         })
--                     else
--                         lib.notify({
--                             title = 'GSR Notify',
--                             description = 'You left the water too early and did not wash off the Gun Powder.',
--                             type = 'error'
--                         })
--                     end
--                 end
--                 Citizen.Wait(Config.waterCleanTime)
--             end
--         end
--     end
-- end)

function status()
    if hasShot then
        QBCore.Functions.TriggerCallback('GSR:Status', function(cb)
            if not cb then
                hasShot = false
            end
        end)
    end
end

function updateStatus()
    status()
    SetTimeout(Config.gsrUpdateStatus, updateStatus)
end

updateStatus()


RegisterNetEvent('client:requestGSR')
AddEventHandler('client:requestGSR', function()
    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local closestPlayer, closestDistance = QBCore.Functions.GetClosestPlayer(playerCoords)

    if closestPlayer ~= -1 and closestDistance <= 2.0 then
        local closestPlayerId = GetPlayerServerId(closestPlayer)
        TriggerServerEvent('server:checkGSR', closestPlayerId)
    else
        QBCore.Functions.Notify("No player nearby for GSR test", "error")
    end
end)
