
RegisterNetEvent('qb-coke:cl:rewards')
AddEventHandler('qb-coke:cl:rewards', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

