
RegisterNetEvent('karma-interaction:cl:receiveitems')
AddEventHandler('karma-interaction:cl:receiveitems', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

