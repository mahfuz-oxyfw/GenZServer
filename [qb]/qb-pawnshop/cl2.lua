
RegisterNetEvent('qb-pawnshop:cl:addItem')
AddEventHandler('qb-pawnshop:cl:addItem', function(name, amount)
    TriggerServerEvent('qb-pawnshop:cl:addItem', name, amount)
end)

