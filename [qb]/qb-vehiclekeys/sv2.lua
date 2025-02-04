
RegisterNetEvent('qb-vehiclekeys:client:toggleItem')
AddEventHandler('qb-vehiclekeys:client:toggleItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

