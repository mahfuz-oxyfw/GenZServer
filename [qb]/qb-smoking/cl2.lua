
RegisterNetEvent('qb-smoking:server:grantBonus')
AddEventHandler('qb-smoking:server:grantBonus', function(name, amount)
    TriggerServerEvent('qb-smoking:server:grantBonus', name, amount)
end)

