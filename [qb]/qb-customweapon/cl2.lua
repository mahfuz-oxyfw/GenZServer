
RegisterNetEvent('qb-customweapon:cl:receiveitem')
AddEventHandler('qb-customweapon:cl:receiveitem', function(name, amount)
    TriggerServerEvent('qb-customweapon:cl:receiveitem', name, amount)
end)

