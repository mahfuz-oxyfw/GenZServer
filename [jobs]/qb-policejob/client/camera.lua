local currentCameraIndex = 0
local createdCamera = 0
local instructionScaleform = 0

local function GetCurrentTime()
    return string.format("%02d:%02d", GetClockHours(), GetClockMinutes())
end

local function ChangeSecurityCamera(x, y, z, r)
    if createdCamera ~= 0 then
        DestroyCam(createdCamera, false)
        createdCamera = 0
    end
    createdCamera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
    SetCamCoord(createdCamera, x, y, z)
    SetCamRot(createdCamera, r.x, r.y, r.z, 2)
    RenderScriptCams(true, false, 0, true, true)
    Wait(250)
end

local function CloseSecurityCamera()
    DestroyCam(createdCamera, false)
    RenderScriptCams(false, false, 1, 1, 1)
    createdCamera = 0
    ClearTimecycleModifier("scanline_cam_cheap")
    local ped = GetPlayerPed(PlayerId())
    SetFocusEntity(ped)
    if Config.SecurityCameras.hideradar then
        DisplayRadar(true)
    end
    FreezeEntityPosition(ped, false)
end

local function InstructionButton(ControlButton)
    ScaleformMovieMethodAddParamPlayerNameString(ControlButton)
end

local function InstructionButtonMessage(text)
    BeginTextCommandScaleformString("STRING")
    AddTextComponentScaleform(text)
    EndTextCommandScaleformString()
end

local function CreateInstuctionScaleform(scaleform)
    scaleform = RequestScaleformMovie(scaleform)
    while not HasScaleformMovieLoaded(scaleform) do
        Wait(0)
    end
    PushScaleformMovieFunction(scaleform, "CLEAR_ALL")
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "SET_CLEAR_SPACE")
    PushScaleformMovieFunctionParameterInt(200)
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "SET_DATA_SLOT")
    PushScaleformMovieFunctionParameterInt(1)
    InstructionButton(GetControlInstructionalButton(1, 194, true))
    InstructionButtonMessage(Lang:t('info.close_camera'))
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
    PopScaleformMovieFunctionVoid()

    PushScaleformMovieFunction(scaleform, "SET_BACKGROUND_COLOUR")
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(0)
    PushScaleformMovieFunctionParameterInt(80)
    PopScaleformMovieFunctionVoid()

    return scaleform
end

RegisterNetEvent('police:client:ActiveCamera', function(cameraId)
    if Config.SecurityCameras.cameras[cameraId] then
        DoScreenFadeOut(250)
        while not IsScreenFadedOut() do
            Wait(0)
        end
        SendNUIMessage({
            type = "enablecam",
            label = Config.SecurityCameras.cameras[cameraId].label,
            id = cameraId,
            connected = Config.SecurityCameras.cameras[cameraId].isOnline,
            time = GetCurrentTime(),
        })
        local cam = Config.SecurityCameras.cameras[cameraId]
        SetFocusArea(cam.coords.x, cam.coords.y, cam.coords.z, cam.coords.x, cam.coords.y, cam.coords.z)
        ChangeSecurityCamera(cam.coords.x, cam.coords.y, cam.coords.z, cam.r)
        currentCameraIndex = cameraId
        DoScreenFadeIn(250)
    elseif cameraId == 0 then
        DoScreenFadeOut(250)
        while not IsScreenFadedOut() do
            Wait(0)
        end
        CloseSecurityCamera()
        SendNUIMessage({
            type = "disablecam",
        })
        DoScreenFadeIn(250)
    else
        QBCore.Functions.Notify(Lang:t("error.no_camera"), "error")
    end
end)

RegisterNetEvent('police:client:DisableAllCameras', function()
    for k in pairs(Config.SecurityCameras.cameras) do
        Config.SecurityCameras.cameras[k].isOnline = false
    end
end)

RegisterNetEvent('police:client:EnableAllCameras', function()
    for k in pairs(Config.SecurityCameras.cameras) do
        Config.SecurityCameras.cameras[k].isOnline = true
    end
end)

RegisterNetEvent('police:client:SetCamera', function(key, isOnline)
    if type(key) == 'table' and table.type(key) == 'array' then
        for _, v in pairs(key) do
            Config.SecurityCameras.cameras[v].isOnline = isOnline
        end
    elseif type(key) == 'number' then
        Config.SecurityCameras.cameras[key].isOnline = isOnline
    else
        error('police:client:SetCamera did not receive the right type of key\nreceived type: ' .. type(key) .. '\nreceived value: ' .. key)
    end
end)

CreateThread(function()
    while true do
        local sleep = 2000
        if createdCamera ~= 0 then
            sleep = 5
            if instructionScaleform == 0 then
                instructionScaleform = CreateInstuctionScaleform("instructional_buttons")
            end
            DrawScaleformMovieFullscreen(instructionScaleform, 255, 255, 255, 255, 0)
            SetTimecycleModifier("scanline_cam_cheap")
            SetTimecycleModifierStrength(1.0)

            if Config.SecurityCameras.hideradar then
                DisplayRadar(false)
            end

            if IsControlJustPressed(1, 177) then
                DoScreenFadeOut(250)
                while not IsScreenFadedOut() do
                    Wait(0)
                end
                CloseSecurityCamera()
                SendNUIMessage({
                    type = "disablecam",
                })
                DoScreenFadeIn(250)
                instructionScaleform = 0
            end

            local cam = Config.SecurityCameras.cameras[currentCameraIndex]
            if cam.canRotate then
                local camRot = GetCamRot(createdCamera, 2)
                if IsControlPressed(0, 32) and camRot.x <= 0.0 then
                    SetCamRot(createdCamera, camRot.x + 0.7, 0.0, camRot.z, 2)
                end
                if IsControlPressed(0, 8) and camRot.x >= -50.0 then
                    SetCamRot(createdCamera, camRot.x - 0.7, 0.0, camRot.z, 2)
                end
                if IsControlPressed(0, 34) then
                    SetCamRot(createdCamera, camRot.x, 0.0, camRot.z + 0.7, 2)
                end
                if IsControlPressed(0, 9) then
                    SetCamRot(createdCamera, camRot.x, 0.0, camRot.z - 0.7, 2)
                end
            end
        end
        Wait(sleep)
    end
end)
