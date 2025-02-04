
RegisterNetEvent('qb-pawnshop:cl:addItem')
AddEventHandler('qb-pawnshop:cl:addItem', function(amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

