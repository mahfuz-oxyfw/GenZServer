
RegisterNetEvent('genz-carcontrol:client:reward')
AddEventHandler('genz-carcontrol:client:reward', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

