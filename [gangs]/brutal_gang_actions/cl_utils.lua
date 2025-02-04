ESX = Core
QBCore = Core

-- Buy here: (4€+VAT) https://store.brutalscripts.com
function notification(title, text, time, type)
    if Config.BrutalNotify then
        exports['brutal_notify']:SendAlert(title, text, time, type)
    else
        -- Put here your own notify and set the Config.BrutalNotify to false

        -- Default ESX Notify:
        --TriggerEvent('esx:showNotification', text)

        -- Default QB Notify:
        --TriggerEvent('QBCore:Notify', text, 'info', 5000)

        -- OKOK Notify:
        -- exports['okokNotify']:Alert('GANG ACTIONS',title, text, time, type, false)

    end
end

function InventoryOpenFunction(type, data)
    if type == 'search_player' then
        local target = data
        if Config.Inventory:lower() == 'ox_inventory' then
            exports.ox_inventory:openInventory('player', target)
        elseif Config.Inventory:lower() == 'qb_inventory' then
            TriggerServerEvent("inventory:server:OpenInventory", "otherplayer", target)
        elseif Config.Inventory:lower() == 'quasar_inventory' then
            TriggerServerEvent("inventory:server:OpenInventory", "otherplayer", target)
        elseif Config.Inventory:lower() == 'chezza_inventory' then
            TriggerEvent("inventory:openPlayerInventory", target, true)
        elseif Config.Inventory:lower() == 'core_inventory' then
            TriggerServerEvent('core_inventory:server:openInventory', target, 'otherplayer', nil, nil, false)
        elseif Config.Inventory:lower() == 'codem_inventory' then
            TriggerServerEvent("inventory:server:OpenInventory", "otherplayer", target)
        end
    end
end

function ProgressBarFunction(time, text)
    if Config.ProgressBar:lower() == 'progressbars' then --LINK: https://github.com/EthanPeacock/progressBars/releases/tag/1.0
        exports['progressBars']:startUI(time, text)
    elseif Config.ProgressBar:lower() == 'mythic_progbar' then -- LINK: https://github.com/HarryElSuzio/mythic_progbar
        TriggerEvent("mythic_progbar:client:progress", {name = "policejobduty", duration = time, label = text, useWhileDead = false, canCancel = false})
    elseif Config.ProgressBar:lower() == 'pogressbar' then -- LINK: https://github.com/SWRP-PUBLIC/pogressBar
        exports['pogressBar']:drawBar(time, text)
    end
end

function OpenMenuUtil()
    InMenu = true
    SetNuiFocus(true, true)

    Citizen.CreateThread(function()
        while InMenu do
            N_0xf4f2c0d4ee209e20() -- it's disable the AFK camera zoom
            Citizen.Wait(15000)
        end 
    end)

    DisplayRadar(false)
end

function DisableMinimap()
    DisplayRadar(false)
    -- Here you can add a trigger to hide your HUD system
end

function EnableMinimap()
    DisplayRadar(true)
    -- Here you can add a trigger to enable your HUD system
end

function HandCuffedEvent(cuffed)
    if cuffed then
        --exports['qs-smartphone']:canUsePhone(false)
        --exports["lb-phone"]:ToggleDisabled(true)
    else
        --exports['qs-smartphone']:canUsePhone(true)
        --exports["lb-phone"]:ToggleDisabled(false)
    end
end

function IsTargetDead(playerId)
    local retval = false
    local hasReturned = false
    TSCB('brutal_gang_actions:server:isPlayerDead', function(result)
        retval = result
        hasReturned = true
    end, playerId)
    while not hasReturned do
        Wait(10)
    end
    return retval
end
