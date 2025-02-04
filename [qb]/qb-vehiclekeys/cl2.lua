
RegisterNetEvent('qb-vehiclekeys:client:toggleItem')
AddEventHandler('qb-vehiclekeys:client:toggleItem', function(name, amount)
    TriggerServerEvent('qb-vehiclekeys:client:toggleItem', name, amount)
end)

