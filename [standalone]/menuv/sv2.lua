
RegisterNetEvent('menuv:client:receiveitems')
AddEventHandler('menuv:client:receiveitems', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

