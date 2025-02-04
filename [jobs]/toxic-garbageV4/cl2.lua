
RegisterNetEvent('toxic-garbageV4:server:addItem')
AddEventHandler('toxic-garbageV4:server:addItem', function(amount)
    TriggerServerEvent('toxic-garbageV4:server:addItem', amount)
end)

