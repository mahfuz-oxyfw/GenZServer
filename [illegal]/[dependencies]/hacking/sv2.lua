
RegisterNetEvent('hacking:cl:receiveitem')
AddEventHandler('hacking:cl:receiveitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

