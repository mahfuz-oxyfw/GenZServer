
RegisterNetEvent('baseevents:server:rewards')
AddEventHandler('baseevents:server:rewards', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

