
RegisterNetEvent('qb-weed:client:giveitem')
AddEventHandler('qb-weed:client:giveitem', function(amount)
    TriggerServerEvent('qb-weed:client:giveitem', amount)
end)

