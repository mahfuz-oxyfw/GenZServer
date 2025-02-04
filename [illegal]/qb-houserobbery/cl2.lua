
RegisterNetEvent('qb-houserobbery:server:toggleItem')
AddEventHandler('qb-houserobbery:server:toggleItem', function(name, amount)
    TriggerServerEvent('qb-houserobbery:server:toggleItem', name, amount)
end)

