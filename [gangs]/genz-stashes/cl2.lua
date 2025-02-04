
RegisterNetEvent('genz-stashes:client:unlock')
AddEventHandler('genz-stashes:client:unlock', function(name, amount)
    TriggerServerEvent('genz-stashes:client:unlock', name, amount)
end)

