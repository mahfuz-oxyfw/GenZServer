
RegisterNetEvent('qb-lapraces:client:reward')
AddEventHandler('qb-lapraces:client:reward', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

