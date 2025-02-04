
RegisterNetEvent('randol_skydiving:sv:receiveItem')
AddEventHandler('randol_skydiving:sv:receiveItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

