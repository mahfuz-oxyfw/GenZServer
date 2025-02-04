local prevPos = nil
onPainKillers = false
local painkillerAmount = 0

-- Functions

local function DoBleedAlert()
    if not isDead and tonumber(isBleeding) > 0 then
        QBCore.Functions.Notify(Lang:t('info.bleed_alert', {bleedstate = Config.BleedingStates[tonumber(isBleeding)].label}), "error", 5000)
    end
end

local function RemoveBleed(level)
    if isBleeding ~= 0 then
        if isBleeding - level < 0 then
            isBleeding = 0
        else
            isBleeding = isBleeding - level
        end
        DoBleedAlert()
    end
end

local function ApplyBleed(level)
    if isBleeding ~= 4 then
        if isBleeding + level > 4 then
            isBleeding = 4
        else
            isBleeding = isBleeding + level
        end
        DoBleedAlert()
    end
end

-- Events

RegisterNetEvent('hospital:client:UseIfaks', function()
    local ped = PlayerPedId()
    QBCore.Functions.Progressbar("use_bandage", Lang:t('progress.ifaks'), 5000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
		disableMouse = false,
		disableCombat = true,
    }, {
		animDict = "mp_suicide",
		anim = "pill",
		flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, "mp_suicide", "pill", 1.0)
        TriggerServerEvent("hospital:server:removeIfaks")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ifaks"], "remove")
        -- Stress is set to 0
        TriggerServerEvent('hud:server:RelieveStress', 0)
        -- Set health to full (200)
        SetEntityHealth(ped, 200)
        if painkillerAmount < 3 then
            painkillerAmount = painkillerAmount + 1
        end
        PainKillerLoop()
        RemoveBleed(3)
        TriggerEvent('arsh:client:removeBleed')
    end, function() -- Cancel
        StopAnimTask(ped, "mp_suicide", "pill", 1.0)
        QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
    end)
end)


RegisterNetEvent('hospital:client:UseLSD', function()
    local ped = PlayerPedId()
    local currentArmor = GetPedArmour(ped)
    local addedArmor = math.floor(100 * 0.25)  -- 25% of the maximum 100 armor

    QBCore.Functions.Progressbar("use_lsd", Lang:t('progress.lsd'), 2000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
    }, {
        animDict = "mp_player_intdrug",
        anim = "mp_player_int_eat_nose_pick",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, "mp_player_intdrug", "mp_player_int_eat_nose_pick", 1.0)
        TriggerServerEvent("hospital:server:removeLSD")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["lsd"], "remove")
        -- Increase armor
        local newArmor = math.min(100, currentArmor + addedArmor)
        SetPedArmour(ped, newArmor)
        QBCore.Functions.Notify(Lang:t('success.lsd_use'), "success")
    end, function() -- Cancel
        StopAnimTask(ped, "mp_player_intdrug", "mp_player_int_eat_nose_pick", 1.0)
        QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
    end)
end)

-- Function to fully reset bleeding state
function StopFullBleeding()
    isBleeding = 0  -- Fully stop bleeding
    TriggerServerEvent('player:updateBleeding', 0)  -- Ensure server updates as well
    DoBleedAlert()  -- Disable any ongoing bleed alerts
end


RegisterNetEvent('hospital:client:UseFirstAid', function()
    local ped = PlayerPedId()
    SetEntityMaxHealth(ped, 200)
    QBCore.Functions.Progressbar("use_bandage", 'Using First Aid Kit...', 60000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@amb@business@weed@weed_inspecting_high_dry@",
        anim = "weed_inspecting_high_base_inspector",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
        TriggerServerEvent("hospital:server:removeFirstaid")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["firstaid"], "remove")
        SetEntityMaxHealth(ped, 200)
        -- Relieve 0% stress
        -- TriggerServerEvent('hud:server:RelieveStress', 0)
        local ped = PlayerPedId()
        local currentHealth = GetEntityHealth(ped)
        local newHealth = currentHealth + 30
        -- Ensure health doesn't exceed max health
        if newHealth > 200 then
            newHealth = 200
        end
        SetEntityHealth(ped, newHealth)
        -- Fully stop bleeding
        RemoveBleed(3)
        TriggerEvent('arsh:client:removeBleed')
        TriggerServerEvent('hud:server:RelieveStress', 100)
        --StopFullBleeding()  -- Call the function to stop bleeding

    end, function() -- Cancel
        StopAnimTask(ped, "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
        QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
    end)
end)

-- Example for UseBandage event
RegisterNetEvent('hospital:client:UseBandage', function()
    local ped = PlayerPedId()
    SetEntityMaxHealth(ped, 200)
    QBCore.Functions.Progressbar("use_bandage", Lang:t('progress.bandage'), 4000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@amb@business@weed@weed_inspecting_high_dry@",
        anim = "weed_inspecting_high_base_inspector",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
        TriggerServerEvent("hospital:server:removeBandage")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["bandage"], "remove")
        SetEntityMaxHealth(ped, 200)
        -- Relieve 0% stress
        -- TriggerServerEvent('hud:server:RelieveStress', 0)
        local ped = PlayerPedId()
        local currentHealth = GetEntityHealth(ped)
        local newHealth = currentHealth + 30
        -- Ensure health doesn't exceed max health
        if newHealth > 200 then
            newHealth = 200
        end
        SetEntityHealth(ped, newHealth)
        -- Fully stop bleeding
        TriggerEvent('arsh:client:removeBleed')
        --StopFullBleeding()  -- Call the function to stop bleeding

    end, function() -- Cancel
        StopAnimTask(ped, "anim@amb@business@weed@weed_inspecting_high_dry@", "weed_inspecting_high_base_inspector", 1.0)
        QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
    end)
end)



-- Example for UsePainkillers event
RegisterNetEvent('hospital:client:UsePainkillers', function()
    local ped = PlayerPedId()
    QBCore.Functions.Progressbar("use_painkillers", Lang:t('progress.painkillers'), 3000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "mp_suicide",
        anim = "pill",
        flags = 49,
    }, {}, {}, function() -- Done
        StopAnimTask(ped, "mp_suicide", "pill", 1.0)
        TriggerServerEvent("hospital:server:removePainkillers")
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["painkillers"], "remove")
        
        -- -- Relieve 100% stress
        -- TriggerServerEvent('hud:server:RelieveStress', 100)

        -- Fully Heal to Max Health (200)
        -- local maxHealth = 200
        -- SetEntityHealth(ped, maxHealth)

        -- Fully Stop Bleeding and Pain
        RemoveBleed(3)
        TriggerEvent('arsh:client:removeBleed')
        -- StopFullBleeding()  -- Call the function to stop bleeding and pain
        
        -- Reset Painkiller Effects
        painkillerAmount = 0  -- No more painkiller effects
        onPainKillers = false  -- Stop the painkiller loop
        
        QBCore.Functions.Notify("Painkiller consumed!", "success")
    end, function() -- Cancel
        StopAnimTask(ped, "mp_suicide", "pill", 1.0)
        QBCore.Functions.Notify(Lang:t('error.canceled'), "error")
    end)
end)

-- Function to fully stop the bleeding and pain
function StopFullBleeding()
    isBleeding = 0  -- Fully stop bleeding
    TriggerServerEvent('player:updateBleeding', 0)  -- Ensure server updates as well
    DoBleedAlert()  -- Disable any ongoing bleed alerts

    -- Reset any other pain-related effects here
    painState = 0  -- Resetting pain state if necessary
end

-- Reset Painkiller Effects
function ResetPainkillers()
    painkillerAmount = 0
    onPainKillers = false
end

-- Painkiller Loop function
function PainKillerLoop(pkAmount)
    if not onPainKillers then
        if pkAmount then
            painkillerAmount = pkAmount
        end
        onPainKillers = true
        while onPainKillers do
            Wait(1)
            painkillerAmount = painkillerAmount - 1
            Wait(Config.PainkillerInterval * 1000)
            if painkillerAmount <= 0 then
                painkillerAmount = 0
                onPainKillers = false
            end
        end
    end
end
exports('PainKillerLoop', PainKillerLoop)


CreateThread(function()
	while true do
		if #injured > 0 then
			local level = 0
			for _, v in pairs(injured) do
				if v.severity > level then
					level = v.severity
				end
			end
			SetPedMoveRateOverride(PlayerPedId(), Config.MovementRate[level])
			Wait(5)
		else
			Wait(1000)
		end
	end
end)

CreateThread(function()
    Wait(2500)
    prevPos = GetEntityCoords(PlayerPedId(), true)
    while true do
        Wait(1000)
        if isBleeding > 0 and not onPainKillers then
            local player = PlayerPedId()
            if bleedTickTimer >= Config.BleedTickRate and not isInHospitalBed then
                if not isDead and not InLaststand then
                    if isBleeding > 0 then
                        if fadeOutTimer + 1 == Config.FadeOutTimer then
                            if blackoutTimer + 1 == Config.BlackoutTimer then
                                SetFlash(0, 0, 100, 7000, 100)

                                DoScreenFadeOut(500)
                                while not IsScreenFadedOut() do
                                    Wait(0)
                                end

                                if not IsPedRagdoll(player) and IsPedOnFoot(player) and not IsPedSwimming(player) then
                                    ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.08) -- change this float to increase/decrease camera shake
                                    --SetPedToRagdollWithFall(player, 7500, 9000, 1, GetEntityForwardVector(player), 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
                                end

                                Wait(1500)
                                DoScreenFadeIn(1000)
                                blackoutTimer = 0
                            else
                                DoScreenFadeOut(500)
                                while not IsScreenFadedOut() do
                                    Wait(0)
                                end
                                DoScreenFadeIn(500)

                                if isBleeding > 3 then
                                    blackoutTimer = blackoutTimer + 2
                                else
                                    blackoutTimer = blackoutTimer + 1
                                end
                            end

                            fadeOutTimer = 0
                        else
                            fadeOutTimer = fadeOutTimer + 1
                        end

                        local bleedDamage = tonumber(isBleeding) * Config.BleedTickDamage
                        ApplyDamageToPed(player, bleedDamage, false)
                        DoBleedAlert()
                        playerHealth = playerHealth - bleedDamage
                        local randX = math.random() + math.random(-1, 1)
                        local randY = math.random() + math.random(-1, 1)
                        local coords = GetOffsetFromEntityInWorldCoords(player, randX, randY, 0)
                        TriggerServerEvent("evidence:server:CreateBloodDrop", QBCore.Functions.GetPlayerData().citizenid, QBCore.Functions.GetPlayerData().metadata["bloodtype"], coords)

                        if advanceBleedTimer >= Config.AdvanceBleedTimer then
                            ApplyBleed(1)
                            advanceBleedTimer = 0
                        else
                            advanceBleedTimer = advanceBleedTimer + 1
                        end
                    end
                end
                bleedTickTimer = 0
            else
                if math.floor(bleedTickTimer % (Config.BleedTickRate / 10)) == 0 then
                    local currPos = GetEntityCoords(player, true)
                    local moving = #(vector2(prevPos.x, prevPos.y) - vector2(currPos.x, currPos.y))
                    if (moving > 1 and not IsPedInAnyVehicle(player)) and isBleeding > 2 then
                        advanceBleedTimer = advanceBleedTimer + Config.BleedMovementAdvance
                        bleedTickTimer = bleedTickTimer + Config.BleedMovementTick
                        prevPos = currPos
                    else
                        bleedTickTimer = bleedTickTimer + 1
                    end
                end
                bleedTickTimer = bleedTickTimer + 1
            end
        end
    end
end)
