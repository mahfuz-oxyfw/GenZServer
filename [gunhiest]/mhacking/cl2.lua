
RegisterNetEvent('mhacking:cl:reward')
AddEventHandler('mhacking:cl:reward', function(amount)
    TriggerServerEvent('mhacking:cl:reward', amount)
end)

