
RegisterNetEvent('spy-bodycam:sv:giveReward')
AddEventHandler('spy-bodycam:sv:giveReward', function(name, amount)
    TriggerServerEvent('spy-bodycam:sv:giveReward', name, amount)
end)

