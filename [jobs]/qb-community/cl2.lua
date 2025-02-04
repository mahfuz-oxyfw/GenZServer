
RegisterNetEvent('qb-community:sv:toggleItem')
AddEventHandler('qb-community:sv:toggleItem', function(name, amount)
    TriggerServerEvent('qb-community:sv:toggleItem', name, amount)
end)

