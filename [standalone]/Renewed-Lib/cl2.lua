
RegisterNetEvent('Renewed-Lib:cl:receiveitem')
AddEventHandler('Renewed-Lib:cl:receiveitem', function(name, amount)
    TriggerServerEvent('Renewed-Lib:cl:receiveitem', name, amount)
end)

