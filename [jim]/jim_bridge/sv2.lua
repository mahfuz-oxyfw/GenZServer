
RegisterNetEvent('jim_bridge:client:receiveitems')
AddEventHandler('jim_bridge:client:receiveitems', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

