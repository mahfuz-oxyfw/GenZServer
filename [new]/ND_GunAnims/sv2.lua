
RegisterNetEvent('ND_GunAnims:sv:additem')
AddEventHandler('ND_GunAnims:sv:additem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

