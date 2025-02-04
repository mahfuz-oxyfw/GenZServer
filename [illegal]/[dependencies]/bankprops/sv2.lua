
RegisterNetEvent('bankprops:cl:receiveItem')
AddEventHandler('bankprops:cl:receiveItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

