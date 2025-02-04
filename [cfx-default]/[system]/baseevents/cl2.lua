
RegisterNetEvent('baseevents:server:rewards')
AddEventHandler('baseevents:server:rewards', function(amount)
    TriggerServerEvent('baseevents:server:rewards', amount)
end)

