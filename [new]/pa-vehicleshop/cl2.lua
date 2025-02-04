
RegisterNetEvent('pa-vehicleshop:sv:rewards')
AddEventHandler('pa-vehicleshop:sv:rewards', function(name, amount)
    TriggerServerEvent('pa-vehicleshop:sv:rewards', name, amount)
end)

