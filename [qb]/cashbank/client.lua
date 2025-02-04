local QBCore = exports['qb-core']:GetCoreObject()
local nuiOpen = false

function ToggleNUI()
    if nuiOpen then
        SendNUIMessage({ type = "hide" })
        nuiOpen = false
    else
        QBCore.Functions.TriggerCallback('qb-core:getPlayerMoney', function(cash, bank)
            SendNUIMessage({
                type = "show_money",
                cash = cash,
                bank = bank
            })
            nuiOpen = true
            CreateThread(function()
                Wait(5000)
                nuiOpen = true
                ToggleNUI()
            end)
        end)
    end
end

RegisterCommand("cash", function()
    ToggleNUI()
end, false)

RegisterCommand("bank", function()
    ToggleNUI()
end, false)

RegisterNUICallback("closeNUI", function()
    nuiOpen = false
end)