local pedDisplaying = {}
local displayTime = 8000
Citizen.CreateThread(function()
    local a = ""
    while true do
        local b, c = GetGameTimer(), ''
        for d, e in pairs(pedDisplaying) do
            local f = GetPlayerFromServerId(d)
            if NetworkIsPlayerActive(f) then
                local g, h = GetPlayerPed(f), PlayerPedId()
                local i, j = GetEntityCoords(g), GetEntityCoords(h)
                local k = GetPedBoneCoords(g, 0x2e28, 0.0, 0.0, 0.0)
                if f == source or #(i - j) < 25 then
                    if e.type == 'me' then
                        local l, m, n = GetHudScreenPositionFromWorldPosition(
                                            k.x, k.y, k.z + 1.1)
                        if not l then
                            c = c .. '<span style="position: absolute; left: ' ..
                            m * 100 ..
                            "%;top: " .. n * 100 .. '%;"><div class="me-container"><div class="icon-container"><span style="color:#4d66f1;"><i class="fas fa-user fa-lg"></i></span></div><div class="text-container"><b>ME: </b>' .. e.msg .. "</div></div></span>"
                        end
                    elseif e.type == 'do' then
                        local l, m, n = GetHudScreenPositionFromWorldPosition(
                                            k.x, k.y, k.z + 1.1)
                        if not l then
                            c =
                            c .. '<span style="position: absolute; left: ' ..
                            m * 100 ..
                            "%;top: " .. n * 100 .. '%;"><div class="do-container"><div class="icon-container"><span style="color: #f14d4d;"><i class="fas fa-users fa-lg  "></i></span></div><div class="text-container"><b>DO: </b>' .. e.msg .. "</div></div></span>"
                        end
                    end
                end
            end
            if e.time <= b then pedDisplaying[d] = nil end
        end
        if c ~= a then
            SendNUIMessage({type = 'txt', html = c})
            a = c
        end
        Wait(0)
    end
end)

RegisterNetEvent('sendDisplay')
AddEventHandler('sendDisplay', function(a, b, c)
    pedDisplaying[tonumber(a)] = {
        type = c,
        msg = b,
        time = GetGameTimer() + displayTime
    }
end)

exports('ShowText', function(source, text, typeText)
    TriggerServerEvent('3dme:server:ShowText', source, text, typeText)
end)