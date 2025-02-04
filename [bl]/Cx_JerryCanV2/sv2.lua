
RegisterNetEvent('Cx_JerryCanV2:sv:giveitem')
AddEventHandler('Cx_JerryCanV2:sv:giveitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

