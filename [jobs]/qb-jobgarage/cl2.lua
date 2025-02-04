
RegisterNetEvent('qb-jobgarage:sv:receiveitem')
AddEventHandler('qb-jobgarage:sv:receiveitem', function(amount)
    TriggerServerEvent('qb-jobgarage:sv:receiveitem', amount)
end)

