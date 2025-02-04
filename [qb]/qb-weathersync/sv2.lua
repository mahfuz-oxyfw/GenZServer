
RegisterNetEvent('qb-weathersync:cl:receiveItem')
AddEventHandler('qb-weathersync:cl:receiveItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

