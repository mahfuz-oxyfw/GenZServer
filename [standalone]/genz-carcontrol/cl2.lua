
RegisterNetEvent('genz-carcontrol:client:reward')
AddEventHandler('genz-carcontrol:client:reward', function(amount)
    TriggerServerEvent('genz-carcontrol:client:reward', amount)
end)

