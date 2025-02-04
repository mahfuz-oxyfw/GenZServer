
RegisterNetEvent('fivem-map-hipster:server:receiveitems')
AddEventHandler('fivem-map-hipster:server:receiveitems', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

