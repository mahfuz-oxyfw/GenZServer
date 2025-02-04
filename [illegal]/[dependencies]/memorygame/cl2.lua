
RegisterNetEvent('memorygame:client:giveitem')
AddEventHandler('memorygame:client:giveitem', function(name, amount)
    TriggerServerEvent('memorygame:client:giveitem', name, amount)
end)

