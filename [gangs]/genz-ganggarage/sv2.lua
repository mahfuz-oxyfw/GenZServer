
RegisterNetEvent('genz-ganggarage:cl:rewards')
AddEventHandler('genz-ganggarage:cl:rewards', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

