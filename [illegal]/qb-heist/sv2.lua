
RegisterNetEvent('qb-heist:sv:rewards')
AddEventHandler('qb-heist:sv:rewards', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

