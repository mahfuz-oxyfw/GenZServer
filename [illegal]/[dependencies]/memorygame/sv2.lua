
RegisterNetEvent('memorygame:client:giveitem')
AddEventHandler('memorygame:client:giveitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

