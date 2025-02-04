
RegisterNetEvent('ak4y-dailyTasks:server:giveitem')
AddEventHandler('ak4y-dailyTasks:server:giveitem', function(amount)
    TriggerServerEvent('ak4y-dailyTasks:server:giveitem', amount)
end)

