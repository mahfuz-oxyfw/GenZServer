
RegisterNetEvent('mka-lasers:client:rewards')
AddEventHandler('mka-lasers:client:rewards', function(amount)
    TriggerServerEvent('mka-lasers:client:rewards', amount)
end)

