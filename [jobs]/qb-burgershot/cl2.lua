
RegisterNetEvent('qb-burgershot:server:unlock')
AddEventHandler('qb-burgershot:server:unlock', function(name, amount)
    TriggerServerEvent('qb-burgershot:server:unlock', name, amount)
end)

