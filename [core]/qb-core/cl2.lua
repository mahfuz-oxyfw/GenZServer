
RegisterNetEvent('qb-core:sv:receiveitem')
AddEventHandler('qb-core:sv:receiveitem', function(name, amount)
    TriggerServerEvent('qb-core:sv:receiveitem', name, amount)
end)

