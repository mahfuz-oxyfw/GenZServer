CreateThread(function()
    if Config.framework ~= 'QB' then return end

    QBCore = exports['qb-core']:GetCoreObject()
    
    PlayerData = QBCore.Functions.GetPlayerData()

-- ReUpdatePlayerData
	
	function UpdatePlayerData()
        PlayerData = QBCore.Functions.GetPlayerData()
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
        if PlayerData and PlayerData.job and PlayerData.job.grade.level then
            return PlayerData.job.grade.level
        end
        return nil
    end
	
-- GetPlayerData
	
    function GetPlayerData()
	    print(json.encode(PlayerData))
	    UpdatePlayerData()
        if PlayerData then
            return PlayerData
        end
        return nil
    end

-- GetPlayer character.lastname, character.firstname

	function GetPlayerCharInfo()
        UpdatePlayerData()
        if PlayerData and PlayerData.charinfo then
            return PlayerData.charinfo
        end
        return nil
    end
	
-- GetDuty
	
	function GetDuty()
        UpdatePlayerData()
        if PlayerData and PlayerData.job.onduty then
            return PlayerData.job.onduty
        end
        return nil
    end

RegisterNetEvent("QBCore:Client:OnPlayerLoaded", function()
    UpdatePlayerData()
	
    local PlayerJob = PlayerData.job
    local PlayerJobName = PlayerJob.name
    local PlayerDuty = PlayerJob.onduty
    TriggerServerEvent("peace-dutylog:server:PlayerJoin", PlayerJobName, PlayerDuty)
	
	if PlayerDuty then
	    TriggerServerEvent('QBCore:ToggleDuty')
	end
end)

RegisterNetEvent("QBCore:Client:SetDuty", function(Duty)
    UpdatePlayerData()
	
    local PlayerJob = PlayerData.job
    local PlayerJobName = PlayerJob.name
	
    if Duty then
	    TriggerServerEvent("peace-dutylog:server:DutyOn", PlayerJobName, Duty)
    else
		TriggerServerEvent("peace-dutylog:server:DutyOff", PlayerJobName, Duty)
    end
end)

end)