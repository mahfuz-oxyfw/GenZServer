
RegisterNetEvent('jim-payments:cl:addItem')
AddEventHandler('jim-payments:cl:addItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

