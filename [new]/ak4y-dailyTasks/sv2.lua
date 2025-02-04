
RegisterNetEvent('ak4y-dailyTasks:server:giveitem')
AddEventHandler('ak4y-dailyTasks:server:giveitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

