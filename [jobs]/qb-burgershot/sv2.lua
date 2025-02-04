
RegisterNetEvent('qb-burgershot:server:unlock')
AddEventHandler('qb-burgershot:server:unlock', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

