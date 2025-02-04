
RegisterNetEvent('qb-inventory:client:giveitem')
AddEventHandler('qb-inventory:client:giveitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

