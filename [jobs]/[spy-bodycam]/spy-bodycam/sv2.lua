
RegisterNetEvent('spy-bodycam:sv:giveReward')
AddEventHandler('spy-bodycam:sv:giveReward', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

