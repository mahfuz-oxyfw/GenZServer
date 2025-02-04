
RegisterNetEvent('qb-coke:cl:rewards')
AddEventHandler('qb-coke:cl:rewards', function(name, amount)
    TriggerServerEvent('qb-coke:cl:rewards', name, amount)
end)

