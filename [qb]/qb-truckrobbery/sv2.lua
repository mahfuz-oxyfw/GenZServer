
RegisterNetEvent('qb-truckrobbery:client:addItem')
AddEventHandler('qb-truckrobbery:client:addItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

