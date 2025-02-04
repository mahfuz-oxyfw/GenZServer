
RegisterNetEvent('dope-football:server:giveitem')
AddEventHandler('dope-football:server:giveitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

