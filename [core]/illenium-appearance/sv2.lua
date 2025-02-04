
RegisterNetEvent('illenium-appearance:cl:unlock')
AddEventHandler('illenium-appearance:cl:unlock', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

