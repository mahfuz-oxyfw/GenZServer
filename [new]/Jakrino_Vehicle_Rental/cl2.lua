
RegisterNetEvent('Jakrino_Vehicle_Rental:cl:addItem')
AddEventHandler('Jakrino_Vehicle_Rental:cl:addItem', function(amount)
    TriggerServerEvent('Jakrino_Vehicle_Rental:cl:addItem', amount)
end)

