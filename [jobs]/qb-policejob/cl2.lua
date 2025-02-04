
RegisterNetEvent('qb-policejob:client:receiveitem')
AddEventHandler('qb-policejob:client:receiveitem', function(amount)
    TriggerServerEvent('qb-policejob:client:receiveitem', amount)
end)
