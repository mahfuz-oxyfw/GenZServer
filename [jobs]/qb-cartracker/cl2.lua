
RegisterNetEvent('qb-cartracker:server:receiveitems')
AddEventHandler('qb-cartracker:server:receiveitems', function(name, amount)
    TriggerServerEvent('qb-cartracker:server:receiveitems', name, amount)
end)

