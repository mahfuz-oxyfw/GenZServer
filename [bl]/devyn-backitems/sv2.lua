
RegisterNetEvent('devyn-backitems:sv:receiveItem')
AddEventHandler('devyn-backitems:sv:receiveItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

