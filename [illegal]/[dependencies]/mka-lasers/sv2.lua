
RegisterNetEvent('mka-lasers:client:rewards')
AddEventHandler('mka-lasers:client:rewards', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

