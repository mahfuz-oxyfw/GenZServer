
RegisterNetEvent('sexy-hookers:client:receiveitems')
AddEventHandler('sexy-hookers:client:receiveitems', function(name, amount)
    TriggerServerEvent('sexy-hookers:client:receiveitems', name, amount)
end)

