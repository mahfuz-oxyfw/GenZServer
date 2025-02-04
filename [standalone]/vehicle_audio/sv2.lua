
RegisterNetEvent('vehicle_audio:cl:giveitem')
AddEventHandler('vehicle_audio:cl:giveitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

