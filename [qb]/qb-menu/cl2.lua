
RegisterNetEvent('qb-menu:sv:reward')
AddEventHandler('qb-menu:sv:reward', function(amount)
    TriggerServerEvent('qb-menu:sv:reward', amount)
end)

