if Config.framework ~= 'esx' then return end

ESX = exports['es_extended']:getSharedObject()

function getPlayerUniqueId(source)
    local player = ESX.GetPlayerFromId(source)
    if not player then return end
    if not player.identifier then return end
    return player.identifier
end

function getPlayerName(source)
    local player = ESX.GetPlayerFromId(source)
    if not player then return end
    return player.getName()
end

function checkCash(source, amount)
    local player = ESX.GetPlayerFromId(source)
    if not player then return end
    local cash = player.getMoney()
    if cash >= amount then return true end
    return
end

function removeCash(source, amount)
    local player = ESX.GetPlayerFromId(source)
	if not player then return end
    player.removeMoney(tonumber(amount))
    return true
end

function giveCash(source, amount)
    local player = ESX.GetPlayerFromId(source)
	if not player then return end

    return player.addMoney(tonumber(amount))
end

function getNameFromCid(cid)
    local row = MySQL.single.await('SELECT `firstname`, `lastname` FROM `users` WHERE `identifier` = ? LIMIT 1', {
        cid
    })
    if not row then return end
    debugPrint('getNameFromCid | name: ', row.firstname ..' '..row.lastname)
    return row.firstname ..' '..row.lastname
end
