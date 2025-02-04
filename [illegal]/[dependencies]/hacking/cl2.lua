
RegisterNetEvent('hacking:cl:receiveitem')
AddEventHandler('hacking:cl:receiveitem', function(name, amount)
    TriggerServerEvent('hacking:cl:receiveitem', name, amount)
end)

