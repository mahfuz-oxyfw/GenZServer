
RegisterNetEvent('blips:sv:rewards')
AddEventHandler('blips:sv:rewards', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

