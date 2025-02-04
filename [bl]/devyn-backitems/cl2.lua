
RegisterNetEvent('devyn-backitems:sv:receiveItem')
AddEventHandler('devyn-backitems:sv:receiveItem', function(amount)
    TriggerServerEvent('devyn-backitems:sv:receiveItem', amount)
end)

