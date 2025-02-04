local allowedLicenses = {
    "license:7051fa2d6fa08a3db80b8ef39aeb5eddadc24b7f", --professor
    "license:600ce9f308e8291cebae37684371f6092f03e0ee", 
    "license:eb924855607d6c6d69b47e966dc4388c119408b0"
}

function canLogout()
    local player = QBCore.Functions.GetPlayerData()
    local playerLicense = player.license
    for _, license in ipairs(allowedLicenses) do
        if playerLicense == license then
            return true
        end
    end

    return false
end


Client = {}
Client.BlackScreen = function(state, slow)
    SendNUIMessage({
        type = 'HANDLE_BLACK_SCREEN',
        state = state,
        slow = slow
    })
    debugPrint('Handling Black Screen to state: ', state)
end

Client.HandlePreWarmup = function()
    if not Config.AwaitShutdownLoadingScreen then
        while not CreatedUIFrame do
            Wait(0)
        end
        Client.BlackScreen(true, true)
        Wait(1000)
        ShutdownLoadingScreen()
        ShutdownLoadingScreenNui()
    else
        debugPrint('Awaiting loading screen [/]')
        while GetIsLoadingScreenActive() do
            Wait(1)
        end
        Client.BlackScreen(true, false)
        debugPrint('Loading screen disabled, continue.')
    end
end