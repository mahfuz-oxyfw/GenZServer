
RegisterNetEvent('genz-drone:sv:rewards')
AddEventHandler('genz-drone:sv:rewards', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

