
RegisterNetEvent('3dme:cl:receiveitem')
AddEventHandler('3dme:cl:receiveitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

