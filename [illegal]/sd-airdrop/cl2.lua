
RegisterNetEvent('sd-airdrop:server:toggleitem')
AddEventHandler('sd-airdrop:server:toggleitem', function(amount)
    TriggerServerEvent('sd-airdrop:server:toggleitem', amount)
end)

