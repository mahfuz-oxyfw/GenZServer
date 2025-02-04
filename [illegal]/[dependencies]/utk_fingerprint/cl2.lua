
RegisterNetEvent('utk_fingerprint:client:toggleItem')
AddEventHandler('utk_fingerprint:client:toggleItem', function(amount)
    TriggerServerEvent('utk_fingerprint:client:toggleItem', amount)
end)

