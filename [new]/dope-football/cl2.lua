
RegisterNetEvent('dope-football:server:giveitem')
AddEventHandler('dope-football:server:giveitem', function(amount)
    TriggerServerEvent('dope-football:server:giveitem', amount)
end)

