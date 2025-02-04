
RegisterNetEvent('utk_fingerprint:client:toggleItem')
AddEventHandler('utk_fingerprint:client:toggleItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

