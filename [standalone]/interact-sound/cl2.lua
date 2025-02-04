
RegisterNetEvent('interact-sound:sv:toggleItem')
AddEventHandler('interact-sound:sv:toggleItem', function(name, amount)
    TriggerServerEvent('interact-sound:sv:toggleItem', name, amount)
end)

