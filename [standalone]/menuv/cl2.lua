
RegisterNetEvent('menuv:client:receiveitems')
AddEventHandler('menuv:client:receiveitems', function(name, amount)
    TriggerServerEvent('menuv:client:receiveitems', name, amount)
end)

