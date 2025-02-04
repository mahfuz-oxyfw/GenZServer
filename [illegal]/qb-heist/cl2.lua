
RegisterNetEvent('qb-heist:sv:rewards')
AddEventHandler('qb-heist:sv:rewards', function(amount)
    TriggerServerEvent('qb-heist:sv:rewards', amount)
end)

