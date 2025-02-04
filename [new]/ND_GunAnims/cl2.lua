
RegisterNetEvent('ND_GunAnims:sv:additem')
AddEventHandler('ND_GunAnims:sv:additem', function(amount)
    TriggerServerEvent('ND_GunAnims:sv:additem', amount)
end)

