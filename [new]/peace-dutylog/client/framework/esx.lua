CreateThread(function()
    if Config.framework ~= 'ESX' then return end
    ESX = exports['es_extended']:getSharedObject()

    PlayerData = ESX.GetPlayerData()

-- ReUpdatePlayerData

    function UpdatePlayerData()
        PlayerData = ESX.GetPlayerData()
    end
	
-- 	GetPlayerJobName

    function GetPlayerJobName()
        UpdatePlayerData()
        if PlayerData and PlayerData.job and PlayerData.job.name then
            return PlayerData.job.name
        end
        return nil
    end

-- 	GetPlayerJobGrade

    function GetPlayerJobGrade()
        UpdatePlayerData()
        if PlayerData and PlayerData.job and PlayerData.job.grade then
            return PlayerData.job.grade
        end
        return nil
    end

-- GetPlayerData

    function GetPlayerData()
        UpdatePlayerData()
        if PlayerData then
            return PlayerData
        end
        return nil
    end

-- GetPlayer character.lastname, character.firstname

    function GetPlayerCharInfo(cb)
        callback = cb
        UpdatePlayerData()
        local identifier = PlayerData.identifier

    end
	
-- GetDuty

	function GetDuty()
        UpdatePlayerData()
		local onDuty = nil
		
        ESX.TriggerServerCallback('peace-dutylog:server:GetDuty', function(duty)
			onDuty = duty
	    end, duty)
		
		Citizen.Wait(200)
		return onDuty
    end


RegisterNetEvent('esx:playerLoaded', function()
    local PlayerJobName = GetPlayerJobName()
    local PlayerDuty = GetDuty()
	
    TriggerServerEvent("peace-dutylog:server:PlayerJoin", PlayerJobName, PlayerDuty)
	
	if PlayerDuty == 'true' then
	    TriggerEvent("peace-dutylog:client:SendDuty")
	end
end)

local inMarker = false
local markerConfig = nil
local CreateLoc = false

RegisterNetEvent("peace-dutylog:client:SendDuty")
AddEventHandler("peace-dutylog:client:SendDuty", function()
    ESX.TriggerServerCallback('peace-dutylog:server:GetDuty', function(duty)
        if duty == 'true' then
            TriggerServerEvent('peace-dutylog:server:SetDuty', 'false')
        else
            TriggerServerEvent('peace-dutylog:server:SetDuty', 'true')
        end
	end, duty)
end)

RegisterNetEvent("peace-dutylog:client:SetDuty")
AddEventHandler("peace-dutylog:client:SetDuty", function(Duty)
    local PlayerData = GetPlayerData()
    local PlayerJobName = GetPlayerJobName()
	
    if Duty == 'true' then
	      TriggerServerEvent("peace-dutylog:server:DutyOn", PlayerJobName, true)
		  sendNotification(Locales[Config.lang].ESX.NotifTakesDuty)
    else
		  TriggerServerEvent("peace-dutylog:server:DutyOff", PlayerJobName, false)
		  sendNotification(Locales[Config.lang].ESX.NotifLeaveDuty)
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(500)

        local playerPed = PlayerPedId()
        local coords = GetEntityCoords(playerPed)
        local job = GetPlayerJobName()

        if Config.MarkerESX[job] then
            markerConfig = Config.MarkerESX[job]
            local distance = #(coords - markerConfig.ESX.Pos)
            if distance < markerConfig.ESX.Size.x then
                inMarker = true
				    if not CreateLoc then
					   CreateLoc = true
				       LocalInDrawMarker = Citizen.CreateThread(InDrawMarker)
				       LocalDutyNotify = Citizen.CreateThread(DutyNotify)
				    end
            else
                inMarker = false
            end
        end
    end
end)

function InDrawMarker()
    while inMarker do
        Citizen.Wait(5)
        DrawMarker(markerConfig.ESX.Type, markerConfig.ESX.Pos, 0.0, 0.0, 0.0, 0, 0, 0, markerConfig.ESX.Size.x, markerConfig.ESX.Size.y, markerConfig.ESX.Size.z, markerConfig.ESX.Color.r, markerConfig.ESX.Color.g, markerConfig.ESX.Color.b, 100, false, true, 2, false, false, false, false)
            if IsControlJustReleased(0, 38) then
                TriggerEvent('peace-dutylog:client:SendDuty')
            end
        if not inMarker then
		    CreateLoc = false
		    return
		end
    end
end

function DutyNotify()
    while inMarker do
	    Citizen.Wait(30)
        ESX.TriggerServerCallback('peace-dutylog:server:GetDuty', function(onDuty)
		
		     if onDuty == 'true' then
			     ESX.ShowHelpNotification(Locales[Config.lang].ESX.LeaveDuty)
			 else
			     ESX.ShowHelpNotification(Locales[Config.lang].ESX.TakesDuty)
			 end
        end)
        if not inMarker then
			CreateLoc = false
		    return
		end
	end
end

-- Notification
	
    function sendNotification(message, title, theme)
        if Config.notificationType == "bulletin" then
            exports.bulletin:SendAdvanced({
                message = message,
                title = Config.notification.title,
                theme = theme,
                subject = Config.notification.subject,
                icon = Config.notification.icon,
                timeout = Config.notification.timeout,
                position = Config.notification.Position,
                progress = Config.notification.Progress,
                queue = Config.notification.Queue,
                stacking = Config.notification.Stacking,
                showStackedCount = Config.notification.ShowStackedCount,
                animationOut = Config.notification.AnimationOut,
                animationTime = Config.notification.AnimationTime,
                flashCount = Config.notification.FlashCount,
                soundFile = Config.notification.SoundFile,
                soundVolume = Config.notification.SoundVolume,
            })
        elseif Config.notificationType == "ESX" then
            ESX.ShowNotification(message)
        elseif Config.notificationType == "BasicNotification" then
            TriggerEvent('RadarNotification', message)
        else
            print(Locales[Config.lang].NotifyNotFound)
        end
    end

end)