
RegisterNetEvent('qb-menu:sv:reward')
AddEventHandler('qb-menu:sv:reward', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

