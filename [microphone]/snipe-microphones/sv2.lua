
RegisterNetEvent('snipe-microphones:cl:receiveItem')
AddEventHandler('snipe-microphones:cl:receiveItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

