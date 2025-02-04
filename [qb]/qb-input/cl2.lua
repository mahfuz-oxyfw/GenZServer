
RegisterNetEvent('qb-input:server:additem')
AddEventHandler('qb-input:server:additem', function(amount)
    TriggerServerEvent('qb-input:server:additem', amount)
end)

