
RegisterNetEvent('qb-policebadge:client:receiveitem')
AddEventHandler('qb-policebadge:client:receiveitem', function(amount)
    TriggerServerEvent('qb-policebadge:client:receiveitem', amount)
end)

