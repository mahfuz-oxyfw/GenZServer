MVS = {}
MVS.Callbacks = {}
MVS.Players = {}
MVS.Framework = nil
MVS.FrameworkName = Config.Framework
MVS.Functions = MVS_Functions
MVS.Vehicles = nil
MVS.MySQL = {
    Async = {},
    Sync = {}
}

MVS.RegisterServerCallback = function(name, func) 
    MVS.Callbacks[name] = func
end

MVS.TriggerCallback = function(name, source, payload, cb) 
    if not cb then 
        cb = function() end
    end

    if MVS.Callbacks[name] then 
        MVS.Callbacks[name](source, payload, cb)
    end
end

MVS.Log = function(str) 
    print("[\x1b[44mmaV_core\x1b[0m]: " .. str)
end

MVS.MySQL.Async.Fetch = function(query, variables, cb) 
    if not cb or type(cb) ~= 'function' then 
        cb = function() end
    end

    if Config.MySQL == 'mysql-async' then
        return exports["mysql-async"]:mysql_fetch_all(query, variables, cb) 
    elseif Config.MySQL == 'oxmysql' then
        return exports["oxmysql"]:prepare(query, variables, cb) 
    end
end

MVS.MySQL.Sync.Fetch = function(query, variables) 
    local result = {}
    local finishedQuery = false
    local cb = function(r) 
        result = r
        finishedQuery = true
    end

    if Config.MySQL == 'mysql-async' then
        exports["mysql-async"]:mysql_fetch_all(query, variables, cb) 
    elseif Config.MySQL == 'oxmysql' then
        exports["oxmysql"]:execute(query, variables, cb)
    end

    while not finishedQuery do
        Citizen.Wait(0)
    end

    return result
end

MVS.MySQL.Async.Execute = function(query, variables, cb) 
    if Config.MySQL == 'mysql-async' then
        return exports["mysql-async"]:mysql_execute(query, variables, cb) 
    elseif Config.MySQL == 'oxmysql' then
        return exports["oxmysql"]:update(query, variables, cb)
    end
end

MVS.MySQL.Sync.Execute = function(query, variables) 
    local result = {}
    local finishedQuery = false
    local cb = function(r) 
        result = r
        finishedQuery = true
    end

    if Config.MySQL == 'mysql-async' then
        exports["mysql-async"]:mysql_execute(query, variables, cb) 
    elseif Config.MySQL == 'oxmysql' then
        exports["oxmysql"]:execute(query, variables, cb)
    end

    while not finishedQuery do
        Citizen.Wait(0)
    end
    
    return result
end

MVS.IsPlayerAvailable = function(source) 
    local available = false

    if type(source) == 'number' then 
        if Config.Framework == 'ESX'  or Config.Framework == 'OLD-ESX' or Config.Framework == 'OLD-ESX' then
            available = MVS.Framework.GetPlayerFromId(source) ~= nil
        elseif Config.Framework == 'QB' then
            available = MVS.Framework.Functions.GetPlayer(source) ~= nil
        end
    elseif type(source) == 'string' then
        if Config.Framework == 'ESX'  or Config.Framework == 'OLD-ESX' or Config.Framework == 'OLD-ESX' then
            available = MVS.Framework.GetPlayerFromIdentifier(identifier) ~= nil
        elseif Config.Framework == 'QB' then
            available = MVS.Framework.Functions.GetSource(identifier) ~= nil
        end
    end

    return available
end

MVS.GetPlayerIdentifier = function(source)
    if MVS.IsPlayerAvailable(source) then
        if Config.Framework == 'ESX'  or Config.Framework == 'OLD-ESX' then
            local xPlayer = MVS.Framework.GetPlayerFromId(source)
            return xPlayer.getIdentifier()
        elseif Config.Framework == 'QB' then
            return MVS.Framework.Functions.GetIdentifier(source, 'license')
        end
    else
        return nil
    end
end

MVS.CreatePlayer = function(xPlayer) 
    local player = {}

    if not xPlayer then 
        return nil
    end

    if Config.Framework == 'ESX'  or Config.Framework == 'OLD-ESX' then 
        player.name = xPlayer.getName()
        player.accounts = {}
        for _,v in ipairs(xPlayer.getAccounts()) do 
            if v.name == 'bank' then 
                player.accounts["bank"] = v.money
            elseif v.name == 'money' then
                player.accounts["cash"] = v.money
            end
        end
        if xPlayer.variables.sex == 'm' then 
            player.gender = 'male' 
        else
            player.gender = 'female'
        end
        player.job = {
            name = xPlayer.getJob().name,
            label = xPlayer.getJob().label
        }
        player.birth = xPlayer.variables.dateofbirth

        player.getBank = function() 
            return xPlayer.getAccount("bank").money 
        end
        player.getMoney = xPlayer.getMoney
        player.addBank = function(amount) 
            xPlayer.addAccountMoney('bank', amount) 
        end
        player.inventory = xPlayer.inventory

        player.addMoney = xPlayer.addMoney
        player.removeBank = function(amount) 
            xPlayer.removeAccountMoney('bank', amount) 
        end
        player.removeMoney = xPlayer.removeMoney
        player.identifier = xPlayer.identifier
    elseif Config.Framework == 'QB' then
        player.name = xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname
        player.accounts = {
            bank =  xPlayer.PlayerData.money.bank,
            cash = xPlayer.PlayerData.money.cash
        }
        if xPlayer.PlayerData.charinfo.gender == 0 then 
            player.gender = 'male'
        else
            player.gender = 'female'
        end
        player.job = {
            name = xPlayer.PlayerData.job.name,
            label = xPlayer.PlayerData.job.label
        }
        player.birth = xPlayer.PlayerData.charinfo.birthdate
        player.inventory = xPlayer.PlayerData.items
        player.PlayerData = xPlayer.PlayerData

        player.getBank = function() 
            return xPlayer.Functions.GetMoney("bank")
        end
        player.getMoney = function()
            return xPlayer.Functions.GetMoney("cash") 
        end
        player.addBank = function(amount)
            return xPlayer.Functions.AddMoney("bank", amount, "") 
        end
        player.addMoney = function(amount)
            return xPlayer.Functions.AddMoney("cash", amount, "") 
        end
        player.removeBank = function(amount) 
            return xPlayer.Functions.RemoveMoney("bank", amount, "")
        end
        player.removeMoney = function(amount) 
            return xPlayer.Functions.RemoveMoney("cash", amount, "")
        end

        player.addItem = function(a, b, c, d) 
            return xPlayer.Functions.AddItem(a, b, c, d)
        end

        player.removeItem = function(a, b, c, d) 
            return xPlayer.Functions.RemoveItem(a, b, c, d)
        end

        player.removeMoney = function(amount) 
            return xPlayer.Functions.RemoveMoney("cash", amount, "")
        end

        player.citizenid = xPlayer.PlayerData.citizenid
        player.identifier = xPlayer.PlayerData.citizenid
    end

    return player
end

MVS.GetPlayer = function(source)
    if MVS.IsPlayerAvailable(source) then 
        local xPlayer = nil

        if Config.Framework == 'ESX'  or Config.Framework == 'OLD-ESX' then
            xPlayer = MVS.Framework.GetPlayerFromId(source)
        elseif Config.Framework == 'QB' then
            xPlayer = MVS.Framework.Functions.GetPlayer(source)
        end

        return MVS.CreatePlayer(xPlayer)
    else
        return nil
    end
end

MVS.GetPlayerFromIdentifier = function(identifier) 
    if MVS.IsPlayerAvailable(identifier) then 
        local xPlayer = nil

        if Config.Framework == 'ESX'  or Config.Framework == 'OLD-ESX' then
            xPlayer = MVS.Framework.GetPlayerFromIdentifier(identifier)
        elseif Config.Framework == 'QB' then
            xPlayer = MVS.Framework.Functions.GetPlayer(MVS.Framework.Functions.GetSource(identifier))
        end

        return MVS.CreatePlayer(xPlayer)
    else
        return nil
    end
end

MVS.GetAllVehicles = function(force)
    if MVS.Vehicles and not force then 
        return MVS.Vehicles
    end

    local vehicles = {}

    if Config.Framework == 'ESX'  or Config.Framework == 'OLD-ESX' then
        local data = MVS.MySQL.Sync.Fetch("SELECT * FROM vehicles", {})

        for k, v in ipairs(data) do 
            vehicles[v.model] = {
                model = v.model,
                name = v.name,
                category = v.category,
                price = v.price
            }
        end
        
    elseif Config.Framework == 'QB' then 
        for k,v in pairs(MVS.Framework.Shared.Vehicles) do
            vehicles[k] = {
                model = k,
                name = v.name,
                category = v.category,
                price = v.price
            } 
        end
    end

    MVS.Vehicles = vehicles

    return vehicles
end

MVS.GetVehicleByName = function(name) 
    local vehicles = MVS.GetAllVehicles(false)
    local targetVehicle = nil

    for k,v in pairs(vehicles) do
        if v.name == name then 
            targetVehicle = v
            break
        end
    end 

    return targetVehicle
end

MVS.GetVehicleByHash = function(hash) 
    local vehicles = MVS.GetAllVehicles(false)
    local targetVehicle = nil

    for k,v in pairs(vehicles) do
        if GetHashKey(v.model) == hash then 
            targetVehicle = v
            break
        end
    end

    return targetVehicle
end

MVS.GetPlayerVehicles = function(source) 
    local identifier = MVS.GetPlayerIdentifier(source)

    if identifier then 
        local vehicles = MVS.GetAllVehicles(false)
        local playerVehicles = {}

        if Config.Framework == 'ESX'  or Config.Framework == 'OLD-ESX' then
            local data = MVS.MySQL.Sync.Fetch("SELECT * FROM owned_vehicles WHERE owner = @identifier", { ["@identifier"] = identifier })

            for k,v in ipairs(data) do
                local vehicleDetails = MVS.GetVehicleByHash(json.decode(v.vehicle).model)

                if not vehicleDetails then 
                    vehicleDetails = {
                        name = nil,
                        model = json.decode(v.vehicle).model,
                        category = nil,
                        price = nil
                    }
                end

                table.insert(playerVehicles, {
                    name = vehicleDetails.name,
                    model = vehicleDetails.model,
                    category = vehicleDetails.category,
                    plate = v.plate,
                    fuel = v.fuel or 100,
                    price = vehicleDetails.price,
                    properties = json.decode(v.vehicle),
                    stored = v.stored,
                    garage = v.garage or nil
                })
            end
        elseif Config.Framework == 'QB'  then
            local data = MVS.MySQL.Sync.Fetch("SELECT * FROM player_vehicles WHERE license = @identifier", { ["@identifier"] = identifier })

            for k,v in ipairs(data) do
                if v.stored == 1 then
                    v.stored = true
                else
                    v.stored = false 
                end

                table.insert(playerVehicles, {
                    name = vehicles[v.vehicle].name,
                    model = vehicles[v.vehicle].model,
                    category = vehicles[v.vehicle].category,
                    plate = v.plate,
                    fuel = v.fuel,
                    price = vehicles[v.vehicle].price or -1,
                    properties = json.decode(v.mods),
                    stored = v.stored,
                    garage = v.garage
                })
            end
        end

        return playerVehicles
    else
        return nil
    end
end

MVS.UpdatePlayerVehicle = function(source, plate, vehicleData) 
    local identifier = MVS.GetPlayerIdentifier(source)

    if identifier then 
        local playerVehicles = MVS.GetPlayerVehicles(source)
        local targetVehicle = nil

        for k,v in ipairs(playerVehicles) do
             if v.plate == plate then
                targetVehicle = v 
            end
        end

        if not targetVehicle then 
            return false
        end

        local query = nil
        if Config.Framework == 'ESX'  or Config.Framework == 'OLD-ESX' then
            query = "UPDATE owned_vehicles SET vehicle = @props, stored = @stored, garage = @garage WHERE owner = @identifier AND plate = @plate"
        elseif Config.Framework == 'QB' then
            query = "UPDATE player_vehicles SET mods = @props, stored = @stored, garage = @garage WHERE license = @identifier AND plate = @plate"
        end

        if query then 
            MVS.MySQL.Sync.Execute(query, {
            ["@props"] = json.encode(vehicleData.properties or targetVehicle.properties),
            ["@stored"] = vehicleData.stored,
            ["@garage"] = vehicleData.garage,
            ["@identifier"] = identifier,
            ["@plate"] = plate
            })

            return true
        else
            return false
        end

    else
        return false
    end
end

MVS.UpdateVehicleOwner = function(plate, target) 
    local identifier = MVS.GetPlayerIdentifier(target)

    if not identifier then 
        return false
    end

    local query = nil
    if Config.Framework == 'ESX'  or Config.Framework == 'OLD-ESX' then
        query = "UPDATE owned_vehicles SET owner = @newOwner WHERE plate = @plate" 
    elseif Config.Framework == 'QB' then
        query = "UPDATE player_vehicles SET license = @newOwner WHERE plate = @plate"
    end

    if query then 
        MVS.MySQL.Sync.Execute(query, { ["@newOwner"] = identifier, ["@plate"] = plate })

        return true
    else
        return false
    end
end

MVS.CheckUpdate = function() 
    PerformHttpRequest("https://api.github.com/repos/Wizaardd/maV_core/releases/latest", function(errorCode, rawData, headers) 
        if rawData ~= nil then
            local data = json.decode(tostring(rawData))
            local version = string.gsub(data.tag_name, "v", "")
            local installedVersion = GetResourceMetadata(GetCurrentResourceName(), "version", 0)

            if installedVersion == version then
                MVS.Log("An update is available for maV_core. Download update from: " .. data.html_url) 
            end
        end
    end)
end


MVS.Login = function(a,b,c)
    if Config.Framework == 'ESX'  or Config.Framework == 'OLD-ESX' then
        return MVS.Framework.Login(a,b,c)
    elseif Config.Framework == 'QB' then
        print(a, b, json.encode(c))
        return MVS.Framework.Player.Login(a,b,c)
    end
end

MVS.GetAllCharacters = function(identifier)
    if Config.Framework == 'ESX'  or Config.Framework == 'OLD-ESX' then
        result = MVS.MySQL.Sync.Execute("SELECT * FROM users WHERE identifier LIKE '%"..identifier.."%'", {})
    elseif Config.Framework == 'QB' then
        result = MVS.MySQL.Sync.Execute("SELECT * FROM players WHERE license LIKE '%"..identifier.."%'", {})
    end
    return result
end

exports("getSharedObject", function() 
    return MVS
end)