if TXC.Framework == "qb" then
    if TXC.CustomFramework then 
		QBCore = exports[TXC.CustomExport]:GetCoreObject()
	else
        QBCore = exports['qb-core']:GetCoreObject()
	end
elseif TXC.Framework == "oldqb" then 
    QBCore = nil
    TriggerEvent('QBCore:GetObject', function(obj) QBCore = obj end)
end
local levels = {}

QBCore.Functions.CreateCallback('toxic-garbageV4:GetPlayerDetails', function(source, cb)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local citizenId = Player.PlayerData.citizenid
    local result = ExecuteSql("SELECT * FROM toxic_garbage WHERE citizenid = '"..citizenId.."'")
    local identifier = GetPlayerIdentifiers(src)[1]
    local steamid = tonumber(identifier:gsub("steam:",""), 16)
    local data = {}
    if result[1] == nil then
        ExecuteSql("INSERT INTO toxic_garbage SET citizenid = '"..citizenId.."', currentXP = '0', Tasks = '"..json.encode(TXC.Tasks).."', MoneyResetTime = '"..os.time() + (TXC.MoneyResetTime * 60).."'")
        data = {
            name = Player.PlayerData.charinfo["firstname"] .. " " .. Player.PlayerData.charinfo["lastname"],
            money = "$" .. Player.PlayerData.money["bank"],
            steamid = steamid,
            tasks = json.encode(TXC.Tasks),
            apiKey = SteamApiKey,
            routes = TXC.JobRoutes,
            currentXP = 0,
            Level = 0,
            EarnedMoney = 0,
            DrawedMoney = 0,
            completedtask = 0,
        }
        levels[src] = 0
    else
        if result[1].TaskResetTime < os.time() then
            ExecuteSql("UPDATE toxic_garbage SET tasks = '"..json.encode(TXC.Tasks).."', TaskResetTime = '"..os.time() + (TXC.MoneyResetTime * 60).."' WHERE citizenid = '"..citizenId.."'")
            result = ExecuteSql("SELECT * FROM toxic_garbage WHERE citizenid = '"..citizenId.."'")
        end
        local level = GetLevel(result[1].currentXP)
        levels[src] = level
        local exp = result[1].currentXP - (level * TXC.NeededXP)
        local completedtask = 0
        for k,v in pairs(json.decode(result[1].Tasks)) do
            if v.requiredCount <= v.hasCount then
                completedtask = completedtask + 1
            end
        end
        data = {
            name = Player.PlayerData.charinfo["firstname"] .. " " .. Player.PlayerData.charinfo["lastname"],
            money = "$" .. Player.PlayerData.money["bank"],
            steamid = steamid,
            apiKey = SteamApiKey,
            tasks = result[1].Tasks,
            routes = TXC.JobRoutes,
            currentXP = exp,
            Level = GetLevel(result[1].currentXP),
            EarnedMoney = result[1].EarnedMoney,
            DrawedMoney = result[1].DrawedMoney,
            completedtask = completedtask,
        }
    end
    cb(data)
end)

RegisterNetEvent('toxic-garbageV4:payment', function(payment)
    local src = source
    local price = payment
    local Player = QBCore.Functions.GetPlayer(src)
    local citizenId = Player.PlayerData.citizenid
    ExecuteSql("UPDATE toxic_garbage SET EarnedMoney = EarnedMoney + '"..price.."' WHERE citizenid = '"..citizenId.."'")
end)

QBCore.Functions.CreateCallback('toxic-garbageV4:Withdraw', function(source, cb, payment)
    local src = source
    local price = tonumber(payment)
    if price == 0 then
        TriggerClientEvent('toxic-garbageV4:notify', src, "error", TXC.Languages["0$_withdraw"])
        cb(false)
        return
    end
    local Player = QBCore.Functions.GetPlayer(src)
    local citizenId = Player.PlayerData.citizenid
    local result = ExecuteSql("SELECT * FROM toxic_garbage WHERE citizenid = '"..citizenId.."'")
    print(price, payment)
    if price <= tonumber(result[1].EarnedMoney) then
        if price <= TXC.DailyLimit then
            if result[1].DrawedMoney + price > TXC.DailyLimit then
                if result[1].MoneyResetTime < os.time() then
                    ExecuteSql("UPDATE toxic_garbage SET MoneyResetTime = '"..os.time() + (TXC.MoneyResetTime * 60).."', DrawedMoney = '"..price.."', EarnedMoney = EarnedMoney - '"..price.."' WHERE citizenid = '"..citizenId.."'")
                    Player.Functions.AddMoney('cash', price, "Garbage Job")
                    TriggerClientEvent('toxic-garbageV4:notify', src, "success", TXC.Languages["withdrawed"])
                    cb(payment)
                else
                    TriggerClientEvent('toxic-garbageV4:notify', src, "error", TXC.Languages["max_withdraw"] .. (TXC.DailyLimit - result[1].DrawedMoney))
                    cb(false)
                end
            else
                ExecuteSql("UPDATE toxic_garbage SET DrawedMoney = DrawedMoney + '"..price.."', EarnedMoney = EarnedMoney - '"..price.."' WHERE citizenid = '"..citizenId.."'")
                Player.Functions.AddMoney('cash', price, "Garbage Job")
                TriggerClientEvent('toxic-garbageV4:notify', src, "success", TXC.Languages["withdrawed"])
                cb(payment)
            end
        else
            cb(false)
            TriggerClientEvent('toxic-garbageV4:notify', src, "error", TXC.Languages["max_withdraw_limit"])
        end
    else
        TriggerClientEvent('toxic-garbageV4:notify', src, "error", TXC.Languages["no_money"])
        cb(false)
    end
end)

RegisterNetEvent('toxic-garbageV4:RandomItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = TXC.RandomItems[math.random(1, #TXC.RandomItems)]
    Player.Functions.AddItem(item, 1)
end)

function GetLevel(xp)
    local currentXP = xp
    local neededEXP = TXC.NeededXP
    local currentLevel = 0
    if (currentXP >= neededEXP) then
        currentLevel = currentLevel + math.floor(currentXP / neededEXP);
        currentXP = currentXP % neededEXP;
    end
    return currentLevel
end

RegisterNetEvent('toxic-garbageV4:AddTask', function(taskid, amount)
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
    local citizenId = xPlayer.PlayerData.citizenid
    local result = ExecuteSql("SELECT tasks FROM toxic_garbage WHERE citizenid = '"..citizenId.."'")
    if result[1] then 
        local kayit = true
        local resulttxc = json.decode(result[1].tasks)
        for k, v in pairs(resulttxc) do 
            if tonumber(v.id) == tonumber(taskid) then 
                if v.taken or v.hasCount >= v.requiredCount then 
                    kayit = false
                end
                v.hasCount = v.hasCount + tonumber(amount)
                if v.hasCount > v.requiredCount then 
                    v.hasCount = v.requiredCount
                end
                break
            end
        end
        if kayit then 
            ExecuteSql("UPDATE toxic_garbage SET tasks = '"..json.encode(resulttxc).."' WHERE citizenid = '"..citizenId.."'")
        end
    end
end)

RegisterNetEvent('toxic-garbageV4:CollectReward', function(data)
    local _source = source
    local xPlayer = QBCore.Functions.GetPlayer(_source)
    local citizenId = xPlayer.PlayerData.citizenid
    local currentTaskId = tonumber(data.id)
    local result = ExecuteSql("SELECT tasks FROM toxic_garbage WHERE citizenid = '"..citizenId.."'")
    if result[1] then 
        local tasks = json.decode(result[1].tasks)
        for k, v in pairs(tasks) do 
            if currentTaskId == v.id then 
                if v.hasCount >= v.requiredCount and not v.Collected then 
                    v.Collected = true
                    local addEXP = v.Reward.Exp
                    local AddMoney = v.Reward.Price
                    xPlayer.Functions.AddMoney('bank', AddMoney, "Garbage Job")
                    ExecuteSql("UPDATE toxic_garbage SET tasks = '"..json.encode(tasks).."', currentXP = currentXP + '"..addEXP.."' WHERE citizenid = '"..citizenId.."'")
                    TriggerClientEvent('frameworknotify-cl', _source, TXC.Languages["task_successfully"], "success")
                    TriggerClientEvent('task-finish', _source)
                end
                break
            end
        end
    end
end)

function ExecuteSql(query)
    local IsBusy = true
    local result = nil
    if TXC.sql == "oxmysql" then
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
    elseif TXC.sql == "ghmattimysql" then
        exports.ghmattimysql:execute(query, {}, function(data)
            result = data
            IsBusy = false
        end)
    elseif TXC.sql == "mysql-async" then   
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