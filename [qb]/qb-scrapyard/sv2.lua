
RegisterNetEvent('qb-scrapyard:client:additem')
AddEventHandler('qb-scrapyard:client:additem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

