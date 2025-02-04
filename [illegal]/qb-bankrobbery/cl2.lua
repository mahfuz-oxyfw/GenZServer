
RegisterNetEvent('qb-bankrobbery:client:receiveitem')
AddEventHandler('qb-bankrobbery:client:receiveitem', function(amount)
    TriggerServerEvent('qb-bankrobbery:client:receiveitem', amount)
end)

