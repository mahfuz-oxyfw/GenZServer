
RegisterNetEvent('nova_antivdm:server:unlock')
AddEventHandler('nova_antivdm:server:unlock', function(amount)
    TriggerServerEvent('nova_antivdm:server:unlock', amount)
end)

