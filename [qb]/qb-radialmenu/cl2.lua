
RegisterNetEvent('qb-radialmenu:client:giveitem')
AddEventHandler('qb-radialmenu:client:giveitem', function(amount)
    TriggerServerEvent('qb-radialmenu:client:giveitem', amount)
end)

