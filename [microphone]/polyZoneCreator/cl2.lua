
RegisterNetEvent('polyZoneCreator:client:reward')
AddEventHandler('polyZoneCreator:client:reward', function(amount)
    TriggerServerEvent('polyZoneCreator:client:reward', amount)
end)

