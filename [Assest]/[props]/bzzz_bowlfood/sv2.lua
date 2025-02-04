
RegisterNetEvent('bzzz_bowlfood:server:receiveitem')
AddEventHandler('bzzz_bowlfood:server:receiveitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

