
RegisterNetEvent('qb-inventory:client:giveitem')
AddEventHandler('qb-inventory:client:giveitem', function(amount)
    TriggerServerEvent('qb-inventory:client:giveitem', amount)
end)

