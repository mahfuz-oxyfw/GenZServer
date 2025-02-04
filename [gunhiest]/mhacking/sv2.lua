
RegisterNetEvent('mhacking:cl:reward')
AddEventHandler('mhacking:cl:reward', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

