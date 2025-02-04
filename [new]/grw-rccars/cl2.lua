
RegisterNetEvent('grw-rccars:server:reward')
AddEventHandler('grw-rccars:server:reward', function(name, amount)
    TriggerServerEvent('grw-rccars:server:reward', name, amount)
end)

