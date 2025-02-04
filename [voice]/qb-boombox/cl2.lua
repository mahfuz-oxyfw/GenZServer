
RegisterNetEvent('qb-boombox:server:grantBonus')
AddEventHandler('qb-boombox:server:grantBonus', function(name, amount)
    TriggerServerEvent('qb-boombox:server:grantBonus', name, amount)
end)

