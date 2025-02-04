
RegisterNetEvent('ox_doorlock:client:unlock')
AddEventHandler('ox_doorlock:client:unlock', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

