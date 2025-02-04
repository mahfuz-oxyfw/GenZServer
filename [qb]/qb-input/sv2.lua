
RegisterNetEvent('qb-input:server:additem')
AddEventHandler('qb-input:server:additem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

