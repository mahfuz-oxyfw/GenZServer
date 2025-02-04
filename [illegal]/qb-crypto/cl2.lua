
RegisterNetEvent('qb-crypto:client:addItem')
AddEventHandler('qb-crypto:client:addItem', function(name, amount)
    TriggerServerEvent('qb-crypto:client:addItem', name, amount)
end)

