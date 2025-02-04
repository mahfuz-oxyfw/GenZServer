RegisterServerEvent('shoprobbery:server:policeAlert')
AddEventHandler('shoprobbery:server:policeAlert', function(coords)
    if Config['ShopRobbery']['framework']['name'] == 'ESX' then
        local players = ESX.GetPlayers()
        for i = 1, #players do
            local player = ESX.GetPlayerFromId(players[i])
            if player['job']['name'] == Config['ShopRobbery']['setjobForPolice'] then
                TriggerClientEvent('shoprobbery:client:policeAlert', players[i], coords)
            end
        end
    elseif Config['ShopRobbery']['framework']['name'] == 'QB' then
        local players = QBCore.Functions.GetPlayers()
        for i = 1, #players do
            local player = QBCore.Functions.GetPlayer(players[i])
            if player.PlayerData.job.name == Config['ShopRobbery']['setjobForPolice'] then
                TriggerClientEvent('shoprobbery:client:policeAlert', players[i], coords)
            end
        end
    end
end)

discord = {
    ['webhook'] = 'https://discord.com/api/webhooks/1095887840895848488/pf3MISp0DSU6uU5BYO5T71aMPnsRFtvQLqoQ_C4X9rQ03vxwHtHSf0ngOBwM-_tL8mWE',
    ['name'] = 'NCPR_shoprobbery',
    ['image'] = 'https://media.discordapp.net/attachments/1043613244427870258/1095883977983803392/Untitled-1.png'
}

function discordLog(name, message)
    local data = {
        {
            ["color"] = '3553600',
            ["title"] = "**".. name .."**",
            ["description"] = message,
        }
    }
    PerformHttpRequest(discord['webhook'], function(err, text, headers) end, 'POST', json.encode({username = discord['name'], embeds = data, avatar_url = discord['image']}), { ['Content-Type'] = 'application/json' })
end