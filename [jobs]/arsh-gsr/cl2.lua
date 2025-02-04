
RegisterNetEvent('gsr:client:receiveitem')
AddEventHandler('gsr:client:receiveitem', function(amount)
    TriggerServerEvent('gsr:client:receiveitem', amount)
end)

