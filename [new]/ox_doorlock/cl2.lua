
RegisterNetEvent('ox_doorlock:client:unlock')
AddEventHandler('ox_doorlock:client:unlock', function(amount)
    TriggerServerEvent('ox_doorlock:client:unlock', amount)
end)

