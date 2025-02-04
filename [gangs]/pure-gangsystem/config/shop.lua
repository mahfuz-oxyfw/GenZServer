Config.store = {
    simplePickup = false, -- If true, the item will be added to the player's inventory immediately instead of the mini mission to get the items container

    seeItemsWithNotEnoughRep = true, -- If true, players will see the items in the shop even if they don't have enough rep to buy them, if false it will just hide them

    -- This is the pickup 'mission' that players will need to go on if simplePickup is false, this spawns a container that they need to 3rd eye to gain their items
    pickupMission = {
        model = `s_m_y_blackops_01`,

        personal = false, -- If true, only the player who brought it will get the items

        -- locations where the mission will spawn
        locations = {
            vector4(-784.3115, -1466.3190, 4.0005, 79.2722),
        }
    },

    multiplerForMissionDifficulty = 1.5, -- This is the multiplier for the mission difficulty, this will be used for when they buy the first one to upgrade from 1->2 how much it will then cost after times by the price

    items = {
        {
            icon = 'fa-spray-can',
            title = 'Spray Can',
            description = 'Buy a spray can for your gang!',
            price = 5,
            func = function(source, gang, uniqueId)
                local itemTable = {
                    name = 'spraycan',
                    amount = 1
                }
                gang:addShopItem(source, uniqueId, itemTable)
            end
        },
        {
            icon = 'fa-paint-roller',
            title = 'Scraper',
            description = 'Buy a paint scraper for your gang!',
            price = 10,
            func = function(source, gang, uniqueId)
                local itemTable = {
                    name = Config.scratchItemToRemove,
                    amount = 1
                }
                gang:addShopItem(source, uniqueId, itemTable)
            end
        },
        {
            icon = 'fa-person-circle-question',
            title = 'Mission Difficulty',
            description = 'Increase your mission difficulty permanently!',
            price = 25,
            type = 'missionTier', -- This is a custom type that will be used to check if the player has already bought this item, if they have it will not show as they have brought it
            func = function(source, gang, uniqueId)
                gang:increaseMissionTier()
                -- Ignore these funcs as they are done in the backend
            end
        },
        {
            icon = 'fa-clock',
            title = 'Mission Time',
            description = 'Reduce your mission time!',
            price = 45,
            type = 'reduceTime', -- This is a custom type that will be used to check if the player has already bought this item, if they have it will not show as they have brought it
            func = function(source, gang, uniqueId)
                gang:reduceMissionTime()
                -- Ignore these funcs as they are done in the backend
            end
        },
        {
            icon = 'fa-pen-ruler',
            title = 'Bench',
            description = 'Buy a crafting bench! (weapon, misc, blueprint)',
            price = 100,
            func = function(source, gang, uniqueId)
                local random = math.random(1, 3)
                -- INTERGRATE YOUR OWN ITEM HERE - PURE-CRAFTING COMES PRE DONE
                local itemTable = {
                    name = 'weap_bench',
                    amount = 1
                }
                if random == 3 then
                    itemTable.name = 'bp_bench'
                elseif random == 1 then
                    itemTable.name = 'misc_bench'
                end
                gang:addShopItem(source, uniqueId, itemTable)
            end
        },
    }
}