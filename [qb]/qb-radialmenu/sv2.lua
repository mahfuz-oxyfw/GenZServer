
RegisterNetEvent('qb-radialmenu:client:giveitem')
AddEventHandler('qb-radialmenu:client:giveitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

