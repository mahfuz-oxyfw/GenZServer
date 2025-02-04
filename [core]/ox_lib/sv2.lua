
RegisterNetEvent('ox_lib:cl:receiveItem')
AddEventHandler('ox_lib:cl:receiveItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

