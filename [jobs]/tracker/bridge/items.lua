local itemName = require 'config.server'.itemName

local duty = require 'server.duty'
local inService = {}


local function notify(source, onDuty)
    TriggerClientEvent('ox_lib:notify', source, {
        description = ('Tracker is now %s'):format(onDuty and 'enabled' or 'disabled'),
        type = 'info'
    })
end

-- RegisterNetEvent('arsh:trackeroff', function()
--     local id = source
--     if inService[id] then
--         notify(id, false)
--         duty.remove(id)
--         inService[id] = false
--     end
-- end)

local function toggleItem(event, _, inventory, slot)
    local id = inventory.id
    if id and event == "usingItem" then
        local item = inventory.items[slot]

        if item and item.metadata then
            local newDuty = not inService[id] or not item.metadata.duty
            item.metadata.duty = newDuty

            if newDuty and duty.add(id) then
                exports.ox_inventory:SetMetadata(id, slot, item.metadata)
                notify(id, true)
                inService[id] = true
            elseif not newDuty then
                exports.ox_inventory:SetMetadata(id, slot, item.metadata)
                duty.remove(id)
                notify(id, false)
            end
        end
    end
end exports('toggleItem', toggleItem)

-- exports.ox_inventory:registerHook('swapItems', function(payload)
--     local source = payload.source
--     --print(json.encode(payload))
--     if payload.toInventory ~= source or payload.fromInventory ~= source then
--         --exports.ox_inventory:SetMetadata(id, slot, item.metadata)
--         duty.remove(source)
--         inService[source] = nil
--         notify(source, false)
--     end
--     return true
-- end, {
--     itemFilter = {
--         [itemName] = true,
--     },
-- })

AddEventHandler('Renewed-Lib:server:playerRemoved', function(source)
    if inService[source] then
        duty.remove(source)
    end
end)

AddEventHandler('playerDropped', function()
    if inService[source] then
        duty.remove(source)
    end
end)
