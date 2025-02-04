
RegisterNetEvent('PolyZone:server:toggleitem')
AddEventHandler('PolyZone:server:toggleitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

