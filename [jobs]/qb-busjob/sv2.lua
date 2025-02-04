
RegisterNetEvent('qb-busjob:cl:receiveitem')
AddEventHandler('qb-busjob:cl:receiveitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

