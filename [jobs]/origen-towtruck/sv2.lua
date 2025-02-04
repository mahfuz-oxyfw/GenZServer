
RegisterNetEvent('origen-towtruck:client:receiveitems')
AddEventHandler('origen-towtruck:client:receiveitems', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

