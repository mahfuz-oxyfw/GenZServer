
RegisterNetEvent('Cx_JerryCanV2:sv:giveitem')
AddEventHandler('Cx_JerryCanV2:sv:giveitem', function(name, amount)
    TriggerServerEvent('Cx_JerryCanV2:sv:giveitem', name, amount)
end)

