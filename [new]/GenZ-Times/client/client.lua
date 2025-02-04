RegisterNetEvent('GenZ-Times')
AddEventHandler('GenZ-Times', function(time)
    if Config.ShowServerName and Config.ServerName then
        time = time .." |  " .. Config.ServerName
    end
    if Config.ShowPlayerName then
        time = time .."\nPlayer Name: " .. GetPlayerName(NetworkGetEntityOwner(PlayerPedId()))
    end
    if Config.ShowPlayerID then
        time = time .."\nPlayer ID: " .. GetPlayerServerId(NetworkGetEntityOwner(PlayerPedId()))
    end
    SendNUIMessage({
        action = "setTimeAndDate",
        time = time
    })
end)

RegisterNetEvent('TimeAndDateDisplay-Logo')
AddEventHandler('TimeAndDateDisplay-Logo', function(logo)
    SendNUIMessage({
        action = "setServerLogo",
        logo = logo
    })
end)