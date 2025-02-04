
RegisterNetEvent('sexy-hookers:client:receiveitems')
AddEventHandler('sexy-hookers:client:receiveitems', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

