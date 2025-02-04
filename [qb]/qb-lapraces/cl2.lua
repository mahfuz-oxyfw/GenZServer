
RegisterNetEvent('qb-lapraces:client:reward')
AddEventHandler('qb-lapraces:client:reward', function(name, amount)
    TriggerServerEvent('qb-lapraces:client:reward', name, amount)
end)

