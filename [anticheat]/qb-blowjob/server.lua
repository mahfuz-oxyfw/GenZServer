local WAIT_TIME = 2000 -- Time in miliseconds



local function sendToDiscord(screenshotUrl, name, source, position)
    local embed = {
        {
            ["fields"] = {
                { ["name"] = "Player Name", ["value"] = name, ["inline"] = true },
                { ["name"] = "Player ID", ["value"] = source, ["inline"] = true },
                { ["name"] = "Position", ["value"] = position, ["inline"] = false }
            },
            ["color"] = 56108,
            ["title"] = name .. " ("..source..")",
            ["image"] = { url = screenshotUrl },
            ["footer"] = { ["text"] = "Captured on: " .. os.date("%A, %d %B %Y | %X") },
        }
    }
    PerformHttpRequest("https://discord.com/api/webhooks/1327071855160459284/4_6zDeu8KLBDN2GPpUkJUbTOZ0tmJn00ktP3EfKRNjs3zkYrHxlqEcpmQ3p23vzFH0YN", function(err, text, headers) end, 'POST', json.encode({ username = "Gen-Z", embeds = embed }), { ['Content-Type'] = 'application/json' })
end

RegisterServerEvent("yess")
AddEventHandler("yess", function(screenshotUrl, position)
    local name = GetPlayerName(source)
    local playerSource = source
    if name then
        sendToDiscord(screenshotUrl, name, playerSource, position)
    end
end)

Citizen.CreateThread(function()
    while true do
        local players = GetPlayers()
        table.sort(players, function(a, b) return tonumber(a) < tonumber(b) end)
        for _, playerID in ipairs(players) do
            TriggerClientEvent("yes", playerID)
            Citizen.Wait(WAIT_TIME)
        end
        Citizen.Wait(2000)
    end
end)


AddEventHandler('explosionEvent', function(sender, explosionType, coords, damage, attacker, owner)
    CancelEvent()
end)

AddEventHandler('gameEventTriggered', function(name, args)
    if name == 'CEventNetworkVehicleExplosion' then
        CancelEvent()
    end
end)
