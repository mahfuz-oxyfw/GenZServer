
RegisterNetEvent('levii-platechanger:client:receiveitems')
AddEventHandler('levii-platechanger:client:receiveitems', function(amount)
    TriggerServerEvent('levii-platechanger:client:receiveitems', amount)
end)

