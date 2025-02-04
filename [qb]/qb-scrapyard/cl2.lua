
RegisterNetEvent('qb-scrapyard:client:additem')
AddEventHandler('qb-scrapyard:client:additem', function(amount)
    TriggerServerEvent('qb-scrapyard:client:additem', amount)
end)

