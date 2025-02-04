
RegisterNetEvent('rockstar:client:receiveitems')
AddEventHandler('rockstar:client:receiveitems', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

