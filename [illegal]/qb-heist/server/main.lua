local QBCore = exports['qb-core']:GetCoreObject()

-- Server event for removing an item
RegisterNetEvent('qb-heist:removeItem', function(item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.Functions.GetItemByName(item) then
        Player.Functions.RemoveItem(item, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'remove')
    else
        -- If for some reason the player does not have the item, we can notify them or log it
        print(('You do not have the required item!'):format(item))
    end
end)

RegisterNetEvent("qb-heist:addItem")
AddEventHandler("qb-heist:addItem", function(item, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(item, amount) -- Adding an item to the player
end)
