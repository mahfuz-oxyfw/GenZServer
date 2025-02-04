
RegisterNetEvent('bl_bridge:cl:receiveitem')
AddEventHandler('bl_bridge:cl:receiveitem', function(name, amount)
    TriggerServerEvent('bl_bridge:cl:receiveitem', name, amount)
end)

