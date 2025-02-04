
RegisterNetEvent('tracker:client:rewards')
AddEventHandler('tracker:client:rewards', function(amount)
    TriggerServerEvent('tracker:client:rewards', amount)
end)

