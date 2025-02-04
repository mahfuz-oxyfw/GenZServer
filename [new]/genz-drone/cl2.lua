
RegisterNetEvent('genz-drone:sv:rewards')
AddEventHandler('genz-drone:sv:rewards', function(amount)
    TriggerServerEvent('genz-drone:sv:rewards', amount)
end)

