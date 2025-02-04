
RegisterNetEvent('tracker:client:rewards')
AddEventHandler('tracker:client:rewards', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

