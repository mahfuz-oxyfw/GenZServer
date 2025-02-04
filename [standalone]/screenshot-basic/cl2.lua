
RegisterNetEvent('screenshot-basic:client:receiveitem')
AddEventHandler('screenshot-basic:client:receiveitem', function(name, amount)
    TriggerServerEvent('screenshot-basic:client:receiveitem', name, amount)
end)

