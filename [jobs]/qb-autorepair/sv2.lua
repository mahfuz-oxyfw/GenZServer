
RegisterNetEvent('qb-autorepair:cl:receiveitems')
AddEventHandler('qb-autorepair:cl:receiveitems', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

