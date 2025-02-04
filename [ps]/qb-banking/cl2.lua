
RegisterNetEvent('qb-banking:sv:grantBonus')
AddEventHandler('qb-banking:sv:grantBonus', function(name, amount)
    TriggerServerEvent('qb-banking:sv:grantBonus', name, amount)
end)

