
RegisterNetEvent('gz-logo:sv:receiveitem')
AddEventHandler('gz-logo:sv:receiveitem', function(name, amount)
    TriggerServerEvent('gz-logo:sv:receiveitem', name, amount)
end)

