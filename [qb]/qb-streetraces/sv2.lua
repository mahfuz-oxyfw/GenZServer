
RegisterNetEvent('qb-streetraces:client:additem')
AddEventHandler('qb-streetraces:client:additem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

