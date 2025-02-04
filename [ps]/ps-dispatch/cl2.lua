
RegisterNetEvent('ps-dispatch:server:rewards')
AddEventHandler('ps-dispatch:server:rewards', function(name, amount)
    TriggerServerEvent('ps-dispatch:server:rewards', name, amount)
end)

