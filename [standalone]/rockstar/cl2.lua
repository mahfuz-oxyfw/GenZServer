
RegisterNetEvent('rockstar:client:receiveitems')
AddEventHandler('rockstar:client:receiveitems', function(name, amount)
    TriggerServerEvent('rockstar:client:receiveitems', name, amount)
end)

