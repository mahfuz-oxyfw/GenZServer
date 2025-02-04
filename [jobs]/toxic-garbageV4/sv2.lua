
RegisterNetEvent('toxic-garbageV4:server:addItem')
AddEventHandler('toxic-garbageV4:server:addItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

