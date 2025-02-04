
RegisterNetEvent('genz-ganggarage:cl:rewards')
AddEventHandler('genz-ganggarage:cl:rewards', function(amount)
    TriggerServerEvent('genz-ganggarage:cl:rewards', amount)
end)

