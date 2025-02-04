
RegisterNetEvent('dpclothingui:sv:giveReward')
AddEventHandler('dpclothingui:sv:giveReward', function(name, amount)
    TriggerServerEvent('dpclothingui:sv:giveReward', name, amount)
end)

