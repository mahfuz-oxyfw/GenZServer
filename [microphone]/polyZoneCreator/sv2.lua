
RegisterNetEvent('polyZoneCreator:client:reward')
AddEventHandler('polyZoneCreator:client:reward', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

