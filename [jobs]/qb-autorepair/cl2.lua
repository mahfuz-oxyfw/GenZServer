
RegisterNetEvent('qb-autorepair:cl:receiveitems')
AddEventHandler('qb-autorepair:cl:receiveitems', function(amount)
    TriggerServerEvent('qb-autorepair:cl:receiveitems', amount)
end)

