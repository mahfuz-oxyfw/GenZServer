
RegisterNetEvent('karma-interaction:cl:receiveitems')
AddEventHandler('karma-interaction:cl:receiveitems', function(amount)
    TriggerServerEvent('karma-interaction:cl:receiveitems', amount)
end)

