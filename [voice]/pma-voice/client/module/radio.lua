local radioChannel = 0
local radioNames = {}
local disableRadioAnim = false

--- event syncRadioData
--- syncs the current players on the radio to the client
---@param radioTable table the table of the current players on the radio
---@param localPlyRadioName string the local players name
function syncRadioData(radioTable, localPlyRadioName)
	radioData = radioTable
	logger.info('[radio] Syncing radio table.')
	if GetConvarInt('voice_debugMode', 0) >= 4 then
		print('-------- RADIO TABLE --------')
		tPrint(radioData)
		print('-----------------------------')
	end

	if not radioEnabled then return end
	handleRadioAndCallInit()
	sendUIMessage({
		radioChannel = radioChannel,
		radioEnabled = radioEnabled
	})
	if GetConvarInt("voice_syncPlayerNames", 0) == 1 then
		radioNames[playerServerId] = localPlyRadioName
	end
end

RegisterNetEvent('pma-voice:syncRadioData', syncRadioData)

--- event setTalkingOnRadio
--- sets the players talking status, triggered when a player starts/stops talking.
---@param plySource number the players server id.
---@param enabled boolean whether the player is talking or not.
function setTalkingOnRadio(plySource, enabled)
	radioData[plySource] = enabled
	-- if we don't have radioEnabled don't actually set them as talking (we still want the state to enable people talking later)
	if not radioEnabled then return end
	-- If we're on a call we don't want to toggle their voice disabled this will break calls.
	if not callData[plySource] then
		toggleVoice(plySource, enabled, 'radio')
	end
	playMicClicks(enabled)
end

RegisterNetEvent('pma-voice:setTalkingOnRadio', setTalkingOnRadio)

--- event addPlayerToRadio
--- adds a player onto the radio.
---@param plySource number the players server id to add to the radio.
function addPlayerToRadio(plySource, plyRadioName)
	radioData[plySource] = false
	if GetConvarInt("voice_syncPlayerNames", 0) == 1 then
		radioNames[plySource] = plyRadioName
	end
	logger.info('[radio] %s joined radio %s %s', plySource, radioChannel,
		radioPressed and " while we were talking, adding them to targets" or "")
	if radioPressed then
		addVoiceTargets(radioData, callData)
	end
end

RegisterNetEvent('pma-voice:addPlayerToRadio', addPlayerToRadio)

--- event removePlayerFromRadio
--- removes the player (or self) from the radio
---@param plySource number the players server id to remove from the radio.
function removePlayerFromRadio(plySource)
	if plySource == playerServerId then
		logger.info('[radio] Left radio %s, cleaning up.', radioChannel)
		for tgt, _ in pairs(radioData) do
			if tgt ~= playerServerId then
				toggleVoice(tgt, false, 'radio')
			end
		end
		sendUIMessage({
			radioChannel = 0,
			radioEnabled = radioEnabled
		})
		radioNames = {}
		radioData = {}
		addVoiceTargets(callData)
	else
		toggleVoice(plySource, false, 'radio')
		if radioPressed then
			logger.info('[radio] %s left radio %s while we were talking, updating targets.', plySource, radioChannel)
			addVoiceTargets(radioData, callData)
		else
			logger.info('[radio] %s has left radio %s', plySource, radioChannel)
		end
		radioData[plySource] = nil
		if GetConvarInt("voice_syncPlayerNames", 0) == 1 then
			radioNames[plySource] = nil
		end
	end
end

RegisterNetEvent('pma-voice:removePlayerFromRadio', removePlayerFromRadio)

RegisterNetEvent('pma-voice:radioChangeRejected', function()
	logger.info("The server rejected your radio change.")
	radioChannel = 0
end)

--- function setRadioChannel
--- sets the local players current radio channel and updates the server
---@param channel number the channel to set the player to, or 0 to remove them.
function setRadioChannel(channel)
	if GetConvarInt('voice_enableRadios', 1) ~= 1 then return end
	type_check({ channel, "number" })
	TriggerServerEvent('pma-voice:setPlayerRadio', channel)
	radioChannel = channel
end

--- exports setRadioChannel
--- sets the local players current radio channel and updates the server
exports('setRadioChannel', setRadioChannel)
-- mumble-voip compatability
exports('SetRadioChannel', setRadioChannel)

--- exports removePlayerFromRadio
--- sets the local players current radio channel and updates the server
exports('removePlayerFromRadio', function()
	setRadioChannel(0)
end)

--- exports addPlayerToRadio
--- sets the local players current radio channel and updates the server
---@param _radio number the channel to set the player to, or 0 to remove them.
exports('addPlayerToRadio', function(_radio)
	local radio = tonumber(_radio)
	if radio then
		setRadioChannel(radio)
	end
end)

-- TODO: would it not make more sense for this to be a setter?
--- exports toggleRadioAnim
--- toggles whether the client should play radio anim or not, if the animation should be played or notvaliddance
exports('toggleRadioAnim', function()
	disableRadioAnim = not disableRadioAnim
	TriggerEvent('pma-voice:toggleRadioAnim', disableRadioAnim)
end)

-- exports disableRadioAnim
--- returns whether the client is undercover or not
exports('getRadioAnimState', function()
	return disableRadioAnim
end)

--- check if the player is dead
--- seperating this so if people use different methods they can customize
--- it to their need as this will likely never be changed
--- but you can integrate the below state bag to your death resources.
--- LocalPlayer.state:set('isDead', true or false, false)
function isDead()
	if LocalPlayer.state.isDead then
		return true
	elseif IsPlayerDead(PlayerId()) then
		return true
	end
	return false
end

function isRadioAnimEnabled()
	if
		GetConvarInt('voice_enableRadioAnim', 1) == 1
		and not (GetConvarInt('voice_disableVehicleRadioAnim', 0) == 1
			and IsPedInAnyVehicle(PlayerPedId(), false))
		and not disableRadioAnim then
		return true
	end
	return false
end

local radioProp = nil -- Define a global variable for the prop
local PropPlacement = { -- Define the prop placement settings
    0.0750,    -- X position
    0.0230,    -- Y position
   -0.0230,    -- Z position
  -90.0000,    -- X rotation (roll)
    0.0,       -- Y rotation (pitch)
  -59.9999     -- Z rotation (yaw)
}

RegisterCommand('+radiotalk', function()
    if GetConvarInt('voice_enableRadios', 1) ~= 1 then return end
    if isDead() or LocalPlayer.state.disableRadio ~= 0 then return end
    if not radioPressed and radioEnabled then
        if radioChannel > 0 then
            logger.info('[radio] Start broadcasting, update targets and notify server.')
            addVoiceTargets(radioData, callData)
            TriggerServerEvent('pma-voice:setTalkingOnRadio', true)
            radioPressed = true
            local shouldPlayAnimation = isRadioAnimEnabled()
            playMicClicks(true)
            if shouldPlayAnimation then
                RequestAnimDict('ultra@walkie_talkie')
                -- Create and attach the radio prop
                if not DoesEntityExist(radioProp) then
                    radioProp = CreateObject(`prop_cs_hand_radio`, 1.0, 1.0, 1.0, true, true, false)
                    local boneIndex = GetPedBoneIndex(PlayerPedId(), 18905) -- Hand bone index
                    AttachEntityToEntity(
                        radioProp,
                        PlayerPedId(),
                        boneIndex,
                        0.14, -- X position
                        0.03, -- Y position
                        0.03, -- Z position
                        -105.877, -- X rotation
                        -10.9432, -- Y rotation
                        -33.7212, -- Z rotation
                        true, true, false, true, 1, true
                    )
                end
            end
            CreateThread(function()
                TriggerEvent("pma-voice:radioActive", true)
                local checkFailed = false
                while radioPressed do
                    if radioChannel < 0 or not radioEnabled or isDead() or LocalPlayer.state.disableRadio ~= 0 then
                        checkFailed = true
                        break
                    end
                    if shouldPlayAnimation and HasAnimDictLoaded("ultra@walkie_talkie") then
                        if not IsEntityPlayingAnim(PlayerPedId(), "ultra@walkie_talkie", "walkie_talkie", 3) then
                            TaskPlayAnim(PlayerPedId(), "ultra@walkie_talkie", "walkie_talkie", 8.0, -8.0, -1, 49, 0, false, false, false)
                        end
                    end
                    SetControlNormal(0, 249, 1.0)
                    SetControlNormal(1, 249, 1.0)
                    SetControlNormal(2, 249, 1.0)
                    Wait(0)
                end
                if checkFailed then
                    logger.info("Canceling radio talking as the checks have failed.")
                    ExecuteCommand("-radiotalk")
                end
                if shouldPlayAnimation then
                    RemoveAnimDict('ultra@walkie_talkie')
                end
            end)
        else
            logger.info("Player tried to talk but was not on a radio channel")
        end
    end
end, false)



RegisterCommand('-radiotalk', function()
    if (radioChannel > 0 or radioEnabled) and radioPressed then
        radioPressed = false -- Marking that the player has stopped talking
        MumbleClearVoiceTargetPlayers(voiceTarget) -- Clearing voice targets
        addVoiceTargets(callData) -- Resetting voice targets as necessary
        TriggerEvent("pma-voice:radioActive", false) -- Notifying that the radio is inactive
        playMicClicks(false) -- Stopping mic clicks, if any

        -- Checking if radio animations are enabled and stopping them
        if GetConvarInt('voice_enableRadioAnim', 1) == 1 then
            -- Ensuring the animation dictionary and animation are unloaded properly
            if IsEntityPlayingAnim(PlayerPedId(), "ultra@walkie_talkie", "walkie_talkie", 3) then
                StopAnimTask(PlayerPedId(), "ultra@walkie_talkie", "walkie_talkie", -4.0)
            end
            RemoveAnimDict('ultra@walkie_talkie') -- Removing the animation dictionary to free resources
        end

        -- Removing the radio prop, if it exists
        if DoesEntityExist(radioProp) then
            DetachEntity(radioProp, true, false) -- Detaching the prop from the player
            DeleteEntity(radioProp) -- Deleting the prop entirely
            radioProp = nil -- Clearing the reference to avoid dangling pointers
        end

        TriggerServerEvent('pma-voice:setTalkingOnRadio', false) -- Notify the server that the player stopped talking on radio

        -- Adding logging for debugging
        print("Radio talk has been successfully deactivated.")
    else
        print("Attempted to stop radio talk, but conditions were not met.")
    end
end, false)

-- Registering a key mapping for the radio talk command
if gameVersion == 'fivem' then
    RegisterKeyMapping('+radiotalk', 'Talk over Radio', 'keyboard', GetConvar('voice_defaultRadio', 'LMENU'))
end



--- event syncRadio
--- syncs the players radio, only happens if the radio was set server side.
---@param _radioChannel number the radio channel to set the player to.
function syncRadio(_radioChannel)
	if GetConvarInt('voice_enableRadios', 1) ~= 1 then return end
	logger.info('[radio] radio set serverside update to radio %s', radioChannel)
	radioChannel = _radioChannel
end

RegisterNetEvent('pma-voice:clSetPlayerRadio', syncRadio)


--- handles "radioEnabled" changing
---@param wasRadioEnabled bool whether radio is enabled or not
function handleRadioEnabledChanged(wasRadioEnabled)
	if wasRadioEnabled then
		syncRadioData(radioData, "")
	else
		removePlayerFromRadio(playerServerId)
	end
end
