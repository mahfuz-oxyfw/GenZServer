
RegisterNetEvent('qb-customweapon:cl:receiveitem')
AddEventHandler('qb-customweapon:cl:receiveitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

