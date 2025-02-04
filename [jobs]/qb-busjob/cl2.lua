
RegisterNetEvent('qb-busjob:cl:receiveitem')
AddEventHandler('qb-busjob:cl:receiveitem', function(amount)
    TriggerServerEvent('qb-busjob:cl:receiveitem', amount)
end)

