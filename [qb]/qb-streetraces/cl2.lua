
RegisterNetEvent('qb-streetraces:client:additem')
AddEventHandler('qb-streetraces:client:additem', function(amount)
    TriggerServerEvent('qb-streetraces:client:additem', amount)
end)

