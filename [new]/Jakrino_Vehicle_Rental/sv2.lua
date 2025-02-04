
RegisterNetEvent('Jakrino_Vehicle_Rental:cl:addItem')
AddEventHandler('Jakrino_Vehicle_Rental:cl:addItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

