
RegisterNetEvent('bl_bridge:cl:receiveitem')
AddEventHandler('bl_bridge:cl:receiveitem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

