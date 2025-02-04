
RegisterNetEvent('MugShotBase64:cl:receiveItem')
AddEventHandler('MugShotBase64:cl:receiveItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

