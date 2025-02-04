
RegisterNetEvent('qb-shoprobbery:sv:receiveItem')
AddEventHandler('qb-shoprobbery:sv:receiveItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

