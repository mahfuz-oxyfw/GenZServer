local logQueue = {}

local defaultAvatarUrl =
'https://cdn.discordapp.com/attachments/1096003897270751292/1185672475175043142/TGGLogov2.png?ex=6590768a&is=657e018a&hm=33be3e19668032c1e3df6bd02dccce7e47e18bca86ab2dfcb0e4b6e3718624aa&'

local function createYBuyLog(embed, data, plyIdentLog)
    local price = data.price == -1 and 'Free' or data.price .. Config.CurrencySymbol

    embed.fields = {
        {
            name = "Title:",
            value = "```" .. data.title .. "```",
        },
        {
            name = "Description:",
            value = "```" .. data.description .. "```",
        },
        {
            name = "Price:",
            value = "```" .. price .. "```",
        },
        {
            name = "Contact Name:",
            value = "```" .. data.contactName .. "```",
        },
    }

    if data.allowCalls == true then
        embed.fields[#embed.fields + 1] = {
            name = "Contact Number:",
            value = "```" .. data.number .. "```",
        }
    end

    embed.fields[#embed.fields + 1] = {
        {
            name = "Player Identifier:",
            value = "```" .. plyIdentLog .. "```",
        },
    }

    return embed
end

local function createPromoHubLog(embed, data, plyIdentLog)
    local price = data.price == -1 and 'Free' or data.price .. Config.CurrencySymbol

    embed.fields = {
        {
            name = "Title:",
            value = "```" .. data.title .. "```",
        },
        {
            name = "Description:",
            value = "```" .. data.description .. "```",
        },
        {
            name = "Price:",
            value = "```" .. price .. "```",
        },
        {
            name = "Contact Name:",
            value = "```" .. data.contactName .. "```",
        },
        {
            name = "Contact Number:",
            value = "```" .. data.contactNumber .. "```",
        },
        {
            name = "Player Identifier:",
            value = "```" .. plyIdentLog .. "```",
        },
    }

    return embed
end

RegisterNetEvent('yseries:server:logs:create',
    function(app, displayName, title, color, message, image, tag, additionalData, playerIdentifier)
        local postData = {}
        local _tag = tag or false

        local webhook = LogsWebhooks[app]
        if not webhook then
            debugPrint('Tried to post a log that doesn\'t have webhook configured for app: ' .. app)
            return
        end

        local plyIdentLog = playerIdentifier or 'N/A'

        -- Create an embed
        local embed = {
            ['type'] = 'rich',
            ['title'] = title,
            ['color'] = Config.Logs.Colors[color] or Config.Logs.Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = displayName,
                ['icon_url'] = Config.Logs.Avatars[app] or defaultAvatarUrl,
            },
            ['fields'] = {
                {
                    ['name'] = 'Player Identifier:',
                    ['value'] = "```" .. plyIdentLog .. "```",
                },
            }
        }

        if app == 'ybuy' and additionalData then
            embed = createYBuyLog(embed, additionalData, plyIdentLog)
        elseif app == 'promoHub' and additionalData then
            embed = createPromoHubLog(embed, additionalData, plyIdentLog)
        end

        -- Add image if it exists
        if image and type(image) == 'string' then
            embed['image'] = { ['url'] = image }
        end

        if not logQueue[app] then logQueue[app] = {} end
        logQueue[app][#logQueue[app] + 1] = { webhook = webhook, data = embed }

        -- Process the logQueue when it reaches a certain size or based on other criteria
        if #logQueue[app] >= 10 then
            postData = {
                username = displayName,
                avatar_url = Config.Logs.Avatars[app] or defaultAvatarUrl,
                embeds = {},
            }

            if _tag then
                postData.content = _tag
            end

            for i = 1, #logQueue[app] do
                table.insert(postData.embeds, logQueue[app][i].data)
            end

            PerformHttpRequest(logQueue[app][1].webhook, function() end, 'POST', json.encode(postData),
                { ['Content-Type'] = 'application/json' })
            logQueue[app] = {}
        end
    end)

CreateThread(function()
    local timer = 0
    while true do
        Wait(5000)

        timer = timer + 1
        if timer >= Config.Logs.Timeout then -- If 60 seconds have passed, post the logs
            timer = 0
            for name, queue in pairs(logQueue) do
                if #queue > 0 then
                    local postData = {
                        username = queue[1].data.author.name or 'YSeries',
                        avatar_url = queue[1].data.author.icon_url or defaultAvatarUrl,
                        embeds = {}
                    }

                    for i = 1, #queue do
                        -- Directly add the embed from each log entry in the queue
                        table.insert(postData.embeds, queue[i].data)
                    end

                    -- Send the logs to Discord
                    PerformHttpRequest(queue[1].webhook, function() end, 'POST', json.encode(postData),
                        { ['Content-Type'] = 'application/json' })

                    -- Clear the queue for this name after sending
                    logQueue[name] = {}
                end
            end
        end
    end
end)
