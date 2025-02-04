
RegisterNetEvent('nova_antivdm:server:unlock')
AddEventHandler('nova_antivdm:server:unlock', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

