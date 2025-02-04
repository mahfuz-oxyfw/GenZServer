
RegisterNetEvent('qb-prison:server:rewards')
AddEventHandler('qb-prison:server:rewards', function(amount)
    TriggerServerEvent('qb-prison:server:rewards', amount)
end)

