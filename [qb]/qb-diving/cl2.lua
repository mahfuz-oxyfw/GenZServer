
RegisterNetEvent('qb-diving:client:giveitem')
AddEventHandler('qb-diving:client:giveitem', function(name, amount)
    TriggerServerEvent('qb-diving:client:giveitem', name, amount)
end)

