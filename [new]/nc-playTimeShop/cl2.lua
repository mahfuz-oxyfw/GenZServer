
RegisterNetEvent('nc-playTimeShop:sv:toggleItem')
AddEventHandler('nc-playTimeShop:sv:toggleItem', function(amount)
    TriggerServerEvent('nc-playTimeShop:sv:toggleItem', amount)
end)

