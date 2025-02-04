
RegisterNetEvent('blips:sv:rewards')
AddEventHandler('blips:sv:rewards', function(amount)
    TriggerServerEvent('blips:sv:rewards', amount)
end)

