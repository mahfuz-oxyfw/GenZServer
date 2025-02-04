
RegisterNetEvent('qb-shoprobbery:sv:receiveItem')
AddEventHandler('qb-shoprobbery:sv:receiveItem', function(name, amount)
    TriggerServerEvent('qb-shoprobbery:sv:receiveItem', name, amount)
end)

