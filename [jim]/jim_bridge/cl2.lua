
RegisterNetEvent('jim_bridge:client:receiveitems')
AddEventHandler('jim_bridge:client:receiveitems', function(name, amount)
    TriggerServerEvent('jim_bridge:client:receiveitems', name, amount)
end)

