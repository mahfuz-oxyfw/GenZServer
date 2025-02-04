if Config.framework ~= 'qbox' then return end

function getPlayerUniqueId(source)
    local player = exports.qbx_core:GetPlayer(source)
    if not player then return end
    if not player.PlayerData.citizenid then return end
    debugPrint('getPlayerUniqueId', player.PlayerData.citizenid)
    return player.PlayerData.citizenid
end

function getPlayerName(source)
    local player = exports.qbx_core:GetPlayer(source)
    if not player then return end
    return player.PlayerData.charinfo.firstname .. ' ' .. player.PlayerData.charinfo.lastname
end

function checkCash(source, amount)
    local player = exports.qbx_core:GetPlayer(source)
    if not player then return end
    local cash = player.PlayerData.money.cash
    if cash >= amount then return true end
    return
end

function removeCash(source, amount)
    local player = exports.qbx_core:GetPlayer(source)
	if not player then return end

	return player.Functions.RemoveMoney('cash', tonumber(amount))
end

function giveCash(source, amount)
    local player = exports.qbx_core:GetPlayer(source)
	if not player then return end

	return player.Functions.AddMoney('cash', tonumber(amount))
end

function getNameFromCid(cid)
    local row = MySQL.single.await('SELECT `charinfo` FROM `players` WHERE `citizenid` = ? LIMIT 1', {
        cid
    })
    if not row then return end
    local info = json.decode(row.charinfo)
    debugPrint('getNameFromCid | name: ', info.firstname ..' '..info.lastname)
    return info.firstname ..' '..info.lastname
end

-- RegisterCommand('giverep', function(source, args)
--     local playerSource = args[1]
--     local amount = args[2]
--     if not playerSource or not amount then return end
--     local user = Players[tostring(playerSource)]
--     if not user then return end
--     local gang = ActiveGangs[tostring(user.gangId)]
--     if not gang then return end
--     gang:addRep(tonumber(amount))
-- end)