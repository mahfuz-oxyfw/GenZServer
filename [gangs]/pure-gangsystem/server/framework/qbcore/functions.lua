if Config.framework ~= 'qbcore' then return end

QBCore = exports['qb-core']:GetCoreObject()

function getPlayerUniqueId(source)
    local player = QBCore.Functions.GetPlayer(source)
    if not player then return end
    if not player.PlayerData.citizenid then return end
    debugPrint('getPlayerUniqueId', player.PlayerData.citizenid)
    return player.PlayerData.citizenid
end

function getPlayerName(source)
    local player = QBCore.Functions.GetPlayer(source)
    if not player then return end
    return player.PlayerData.charinfo.firstname .. ' ' .. player.PlayerData.charinfo.lastname
end

function checkCash(source, amount)
    local player = QBCore.Functions.GetPlayer(source)
    if not player then return end
    local cash = player.PlayerData.money.cash
    if cash >= amount then return true end
    return
end

function removeCash(source, amount)
    local player = QBCore.Functions.GetPlayer(source)
	if not player then return end

	return player.Functions.RemoveMoney('cash', amount)
end

function giveCash(source, amount)
    local player = QBCore.Functions.GetPlayer(source)
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