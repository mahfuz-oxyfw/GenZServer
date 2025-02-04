
RegisterNetEvent('bzzz_fastfood:server:rewards')
AddEventHandler('bzzz_fastfood:server:rewards', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

