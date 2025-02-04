
RegisterNetEvent('3dme:cl:receiveitem')
AddEventHandler('3dme:cl:receiveitem', function(name, amount)
    TriggerServerEvent('3dme:cl:receiveitem', name, amount)
end)

