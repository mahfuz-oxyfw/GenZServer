
RegisterNetEvent('qb-cartracker:server:receiveitems')
AddEventHandler('qb-cartracker:server:receiveitems', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

