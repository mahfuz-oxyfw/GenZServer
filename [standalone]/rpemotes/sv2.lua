
RegisterNetEvent('rpemotes:server:receiveItem')
AddEventHandler('rpemotes:server:receiveItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

