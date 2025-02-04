
RegisterNetEvent('qb-car-music:client:giveReward')
AddEventHandler('qb-car-music:client:giveReward', function(name, amount)
    TriggerServerEvent('qb-car-music:client:giveReward', name, amount)
end)

