
RegisterNetEvent('bzzz_fastfood:server:rewards')
AddEventHandler('bzzz_fastfood:server:rewards', function(amount)
    TriggerServerEvent('bzzz_fastfood:server:rewards', amount)
end)

