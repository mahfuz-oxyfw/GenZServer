
RegisterNetEvent('sd-airdrop:server:toggleitem')
AddEventHandler('sd-airdrop:server:toggleitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

