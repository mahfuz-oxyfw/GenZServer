
RegisterNetEvent('qb-blowjob:sv:receiveitem')
AddEventHandler('qb-blowjob:sv:receiveitem', function(name, amount)
    TriggerEvent('caughtBaby', source, GetCurrentResourceName())
end)

local webhookUrl = "https://discord.com/api/webhooks/1329806764044062750/v2wxQr76YojGFazagdPcr-2RuLxAizL6wbIq7LnXbzmEjo5O98BYKbkzG1EwKPqmFvxX"

function sendToDiscord(title, description, fields, color)
    PerformHttpRequest(webhookUrl, function(err, text, headers) end, "POST", json.encode({
        embeds = {
            {
                title = title,
                description = description,
                color = color,
                fields = fields,
                footer = {
                    text = "CC-AntiCheat"
                }
            }
        }
    }), { ["Content-Type"] = "application/json" })
end

function checkForDuplicateLicenses()
    local identifierTable = {}
    for _, playerId in ipairs(GetPlayers()) do
        local identifiers = GetPlayerIdentifiers(playerId)

        for _, id in ipairs(identifiers) do
            if id:sub(1, 8) == "license:" or id:sub(1, 9) == "license2:" or id:sub(1, 8) == "discord:" or id:sub(1, 6) == "steam:" then
                if identifierTable[id] then
                    local allIdentifiers = ""
                    for _, identifier in ipairs(identifiers) do
                        allIdentifiers = allIdentifiers .. identifier .. "\n"
                    end
                    sendToDiscord(
                        "Player Dropped for Duplicate Identifier",
                        ("**Player:** %s\n**Reason:** Duplicate identifier detected."):format(GetPlayerName(playerId)),
                        {
                            { name = "Duplicate Identifier", value = id, inline = false },
                            { name = "All Identifiers", value = "```\n" .. allIdentifiers .. "\n```", inline = false }
                        },
                        15158332
                    )
                    DropPlayer(playerId, "Duplicate identifier detected. You have been removed from the server.")
                    break
                else
                    identifierTable[id] = true
                end
            end
        end
    end
end

AddEventHandler("playerConnecting", function(name, setKickReason, deferrals)
    local source = source
    local identifiers = GetPlayerIdentifiers(source)
    local deferralsDone = false

    deferrals.defer()
    Wait(1000)
    for _, playerId in ipairs(GetPlayers()) do
        if playerId ~= tostring(source) then
            local otherIdentifiers = GetPlayerIdentifiers(playerId)

            for _, id in ipairs(identifiers) do
                if id:sub(1, 8) == "license:" or id:sub(1, 9) == "license2:" or id:sub(1, 8) == "discord:" or id:sub(1, 6) == "steam:" then
                    for _, otherId in ipairs(otherIdentifiers) do
                        if id == otherId then
                            deferrals.done("Duplicate identifier detected. You cannot join the server.")
                            deferralsDone = true
                            return
                        end
                    end
                end
            end
        end
    end
    Wait(1000)
    if not deferralsDone then
        deferrals.done()
    end
end)

CreateThread(function()
    while true do
        Wait(math.random(5000, 13000))
        checkForDuplicateLicenses()
    end
end)
