
RegisterNetEvent('levii-platechanger:client:receiveitems')
AddEventHandler('levii-platechanger:client:receiveitems', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

