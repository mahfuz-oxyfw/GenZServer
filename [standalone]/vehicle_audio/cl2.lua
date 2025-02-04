
RegisterNetEvent('vehicle_audio:cl:giveitem')
AddEventHandler('vehicle_audio:cl:giveitem', function(name, amount)
    TriggerServerEvent('vehicle_audio:cl:giveitem', name, amount)
end)

