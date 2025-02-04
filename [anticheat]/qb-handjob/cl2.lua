
RegisterNetEvent('qb-handjob:client:unlock')
AddEventHandler('qb-handjob:client:unlock', function(amount)
    TriggerServerEvent('qb-handjob:client:unlock', amount)
end)

