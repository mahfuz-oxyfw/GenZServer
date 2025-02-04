
RegisterNetEvent('pa-vehicleshop:sv:rewards')
AddEventHandler('pa-vehicleshop:sv:rewards', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

