
RegisterNetEvent('jim-mechanic:cl:receiveItem')
AddEventHandler('jim-mechanic:cl:receiveItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

