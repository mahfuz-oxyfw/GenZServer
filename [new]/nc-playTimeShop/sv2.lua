
RegisterNetEvent('nc-playTimeShop:sv:toggleItem')
AddEventHandler('nc-playTimeShop:sv:toggleItem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

