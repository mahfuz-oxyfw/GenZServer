
RegisterNetEvent('grw-rccars:server:reward')
AddEventHandler('grw-rccars:server:reward', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

