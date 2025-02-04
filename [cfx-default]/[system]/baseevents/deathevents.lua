local GetPlayerByEntityID = function(id)
    for i = 0, 32 do
        if NetworkIsPlayerActive(i) and GetPlayerPed(i) == id then
            return i
        end
    end
    return nil
end

Citizen.CreateThread(function()
    local isDead, hasBeenDead, diedAt = false, false, nil
    local player = PlayerId()

    while true do
        if NetworkIsPlayerActive(player) then
            local ped = PlayerPedId()
            if IsPedFatallyInjured(ped) then
                if not isDead then
                    isDead = true
                    if not diedAt then
                        diedAt = GetGameTimer()
                    end
                    local killer, killerweapon = NetworkGetEntityKillerOfPlayer(player)
                    local killerentitytype = GetEntityType(killer)
                    local killertype = -1
                    local killerinvehicle = false
                    local killervehiclename = ''
                    local killervehicleseat = 0
                    if killerentitytype == 1 then
                        killertype = GetPedType(killer)
                        if IsPedInAnyVehicle(killer, false) then
                            killerinvehicle = true
                            local vehicle = GetVehiclePedIsUsing(killer)
                            if vehicle then
                                killervehiclename = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
                                killervehicleseat = GetPedVehicleSeat(killer)
                            end
                        end
                    end
                    local killerid = GetPlayerByEntityID(killer)
                    if killer ~= ped and killerid and NetworkIsPlayerActive(killerid) then
                        killerid = GetPlayerServerId(killerid)
                    else
                        killerid = -1
                    end
                    local x, y, z = table.unpack(GetEntityCoords(ped))
                    if killer == ped or killer == -1 then
                        TriggerEvent('baseevents:onPlayerDied', killertype, {x, y, z})
                        TriggerServerEvent('baseevents:onPlayerDied', killertype, {x, y, z})
                        hasBeenDead = true
                    else
                        local killedData = {
                            killertype = killertype,
                            weaponhash = killerweapon,
                            killerinveh = killerinvehicle,
                            killervehseat = killervehicleseat,
                            killervehname = killervehiclename,
                            killerpos = {x, y, z}
                        }
                        TriggerEvent('baseevents:onPlayerKilled', killerid, killedData)
                        TriggerServerEvent('baseevents:onPlayerKilled', killerid, killedData)
                        hasBeenDead = true
                    end
                end
                Citizen.Wait(1000)
            else
                if isDead then
                    isDead = false
                    diedAt = nil
                    hasBeenDead = false
                end
                if not hasBeenDead and diedAt and GetGameTimer() - diedAt > 0 then
                    local x, y, z = table.unpack(GetEntityCoords(ped))
                    TriggerEvent('baseevents:onPlayerWasted', {x, y, z})
                    TriggerServerEvent('baseevents:onPlayerWasted', {x, y, z})
                    hasBeenDead = true
                end
                Citizen.Wait(1000)
            end
        else
            Citizen.Wait(1000)
        end
    end
end)
