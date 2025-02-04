local chatHidden = true
local chatLoaded = false

-- Functions

local function refreshCommands()
    if GetRegisteredCommands then
        local registeredCommands = GetRegisteredCommands()
        local suggestions = {}

        for _, command in ipairs(registeredCommands) do
            if IsAceAllowed(('command.%s'):format(command.name)) then
                table.insert(suggestions, {
                    name = '/' .. command.name,
                    help = ''
                })
            end
        end
        TriggerEvent('chat:addSuggestions', suggestions)
    end
end

local function refreshThemes()
    local themes = {}

    for resIdx = 0, GetNumResources() - 1 do
        local resource = GetResourceByFindIndex(resIdx)

        if GetResourceState(resource) == 'started' then
            local numThemes = GetNumResourceMetadata(resource, 'chat_theme')

            if numThemes > 0 then
                local themeName = GetResourceMetadata(resource, 'chat_theme')
                local themeData = json.decode(GetResourceMetadata(resource, 'chat_theme_extra') or 'null')

                if themeName and themeData then
                    themeData.baseUrl = 'nui://' .. resource .. '/'
                    themes[themeName] = themeData
                end
            end
        end
    end

    SendNUIMessage({
        type = 'ON_UPDATE_THEMES',
        themes = themes
    })
end

local function chatInput()
	SetNuiFocus(true,true)
    SendNUIMessage({
        type = 'ON_OPEN'
    })
end

-- NUI Callbacks

RegisterNUICallback('chatResult', function(data, cb)
    chatInputActive = false
    SetNuiFocus(false, false)
    if not data.canceled then
        local message = data.message
        if message:sub(1, 1) == '/' then
            ExecuteCommand(message:sub(2))
        else
            ExecuteCommand(message:sub(1))
        end
        TriggerServerEvent('logChatMessage', GetPlayerServerId(PlayerId()), GetPlayerName(PlayerId()), message) 
    end
    cb('ok')
end)


RegisterNUICallback('loaded', function(_, cb)
    TriggerServerEvent('chat:init')
    refreshCommands()
    refreshThemes()
    chatLoaded = true
    cb('ok')
end)

-- Events

RegisterNetEvent('chatMessage')
RegisterNetEvent('chat:clearChat')
RegisterNetEvent('chat:addMessage')
RegisterNetEvent('chat:addTemplate')
RegisterNetEvent('chat:addSuggestion')
RegisterNetEvent('chat:addSuggestions')
RegisterNetEvent('chat:removeSuggestion')
RegisterNetEvent('__cfx_internal:serverPrint')

AddEventHandler('chatMessage', function(author, ctype, text)
    local args = { text }
    local ttype = ctype ~= false and ctype or 'normal'

    if author ~= '' then
        table.insert(args, 1, author)
    end

    SendNUIMessage({
        type = 'ON_MESSAGE',
        message = {
            template = '<div class="chat-message '..ttype..' "><div class="chat-message-body"><strong>{0}</strong> {1}</div></div>',
            args = {author, text}
        }
    })
end)

AddEventHandler('chat:clearChat', function()
	SendNUIMessage({
		type = 'ON_CLEAR'
	})
end)

AddEventHandler('chat:addMessage', function(message)
    SendNUIMessage({
        type = 'ON_MESSAGE',
        message = message
    })
end)

AddEventHandler('chat:addTemplate', function(id, html)
    SendNUIMessage({
        type = 'ON_TEMPLATE_ADD',
        template = {
            id = id,
            html = html
        }
    })
end)

AddEventHandler('chat:addSuggestion', function(name, help, params)
    SendNUIMessage({
        type = 'ON_SUGGESTION_ADD',
        suggestion = {
            name = name,
            help = help,
            params = params or nil
        }
    })
end)

AddEventHandler('chat:addSuggestions', function(suggestions)
    for _, suggestion in ipairs(suggestions) do
        SendNUIMessage({
            type = 'ON_SUGGESTION_ADD',
            suggestion = suggestion
        })
    end
end)

AddEventHandler('chat:removeSuggestion', function(name)
    SendNUIMessage({
        type = 'ON_SUGGESTION_REMOVE',
        name = name
    })
end)

AddEventHandler('__cfx_internal:serverPrint', function(msg)
    SendNUIMessage({
        type = 'ON_MESSAGE',
        message = {
            templateId = 'print',
            multiline = true,
            args = { msg }
        }
    })
end)

AddEventHandler('onClientResourceStart', function()
    Wait(500)
    refreshCommands()
    refreshThemes()
end)

AddEventHandler('onClientResourceStop', function()
    Wait(500)
    refreshCommands()
    refreshThemes()
end)

-- Main Thread

CreateThread(function()
    SetTextChatEnabled(false)
    SetNuiFocus(false, false)
    while true do
        Wait(100)
        if chatLoaded then
            local shouldBeHidden = false

            if IsScreenFadedOut() or IsPauseMenuActive() then
                shouldBeHidden = true
            end

            if (shouldBeHidden and not chatHidden) or (not shouldBeHidden and chatHidden) then
                chatHidden = shouldBeHidden
                SendNUIMessage({
                    type = 'ON_SCREEN_STATE_CHANGE',
                    shouldHide = shouldBeHidden
                })
            end
        end
    end
end)

-- Keybind

lib.addKeybind({
    name = 'togglechatwindow',
    description = 'Show Chat',
    defaultKey = 'T',
    onPressed = function()
        if IsPauseMenuActive() then return end
        chatInput()
    end
})