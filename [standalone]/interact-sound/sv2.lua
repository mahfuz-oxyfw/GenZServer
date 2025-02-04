
RegisterNetEvent('interact-sound:sv:toggleItem')
AddEventHandler('interact-sound:sv:toggleItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

