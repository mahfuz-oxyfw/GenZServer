
RegisterNetEvent('bzzz_bowlfood:server:receiveitem')
AddEventHandler('bzzz_bowlfood:server:receiveitem', function(name, amount)
    TriggerServerEvent('bzzz_bowlfood:server:receiveitem', name, amount)
end)

