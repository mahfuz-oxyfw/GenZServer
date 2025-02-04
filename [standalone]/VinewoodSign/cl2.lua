
RegisterNetEvent('VinewoodSign:sv:receiveitem')
AddEventHandler('VinewoodSign:sv:receiveitem', function(amount)
    TriggerServerEvent('VinewoodSign:sv:receiveitem', amount)
end)

