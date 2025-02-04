
RegisterNetEvent('PolyZone:server:toggleitem')
AddEventHandler('PolyZone:server:toggleitem', function(amount)
    TriggerServerEvent('PolyZone:server:toggleitem', amount)
end)

