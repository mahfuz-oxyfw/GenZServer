
RegisterNetEvent('qb-crypto:client:addItem')
AddEventHandler('qb-crypto:client:addItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

