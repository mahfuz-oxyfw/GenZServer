
RegisterNetEvent('qb-weed:client:giveitem')
AddEventHandler('qb-weed:client:giveitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

