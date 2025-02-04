
RegisterNetEvent('genz-stashes:client:unlock')
AddEventHandler('genz-stashes:client:unlock', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

