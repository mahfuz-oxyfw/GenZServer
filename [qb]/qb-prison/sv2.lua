
RegisterNetEvent('qb-prison:server:rewards')
AddEventHandler('qb-prison:server:rewards', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

