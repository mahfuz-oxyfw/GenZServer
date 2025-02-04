
RegisterNetEvent('ps-dispatch:server:rewards')
AddEventHandler('ps-dispatch:server:rewards', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

