
RegisterNetEvent('qb-nightclub:client:addItem')
AddEventHandler('qb-nightclub:client:addItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

