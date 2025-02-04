local weapons = {
    --[GetHashKey('WEAPON_M70')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_PISTOL_MK2')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_COMBATPISTOL')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_APPISTOL')] = {recoil = 0.6, shake = 0.06},
    --[GetHashKey('WEAPON_DE')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_MICROSMG')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_SMG')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_SMG_MK2')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_ASSAULTSMG')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_ASSAULTRIFLE')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_ASSAULTRIFLE_MK2')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_CARBINERIFLE')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_CARBINERIFLE_MK2')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_ADVANCED_RIFLE')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_MG')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_COMBATMG')] = {recoil = 0.6, shake = 0.03},
    --[GetHashKey('weapon_aks74')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_PUMPSHOTGUN')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_PUMPSHOTGUN_MK2')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_SAWNOFFSHOTGUN')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_ASSAULTSHOTGUN')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_BULLPUPSHOTGUN')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_STUNGUN')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_SNIPERRIFLE')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_HEAVYSNIPER')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_HEAVYSNIPER_MK2')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_REMOTESNIPER')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_GRENADELAUNCHER')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_GRENADELAUCHER_SMOKE')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_RPG')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_STINGER')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_MINIGUN')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_SNSPISTOL')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_SNSPISTOL_MK2')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_GUSENBERG')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_SPECIALCARBINE')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_SPECIALCARBINE_MK2')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_HEAVYPISTOL')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_BULLPUPRIFLE')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_BULLPUPRIFLE_MK2')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_VINTAGEPISTOL')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_DOUBLEACTION')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_MUSKET')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_HEAVYSHOTGUN')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_MARKSMANRIFLE')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_MARKSMANRIFLE_MK2')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_HOMINGLAUNCHER')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_FLAREGUN')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_COMBATPDW')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_MARKSMANPISTOL')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_RAILGUN')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_MACHINEPISTOL')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_REVOLVER')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_REVOLVER_MK2')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_DBSHOTGUN')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_COMPACTRIFLE')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_AUTOSHOTGUN')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_COMPACTLAUNCHER')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('WEAPON_MINISMG')] = {recoil = 0.6, shake = 0.03},

    ------------------------------------GENZ-Roleplay-Weapon-Recoil--------------------------------------

    [GetHashKey('weapon_ak47')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_de')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_fnx45')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_glock17')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_m4')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_hk416')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_mk14')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_m110')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_huntingrifle')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_ar15')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_m9')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_m70')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_m1911')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_mac10')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_uzi')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_mp9')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_mossberg')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_remington')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_scarh')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_shiv')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_katana')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_sledgehammer')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_mp5')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_glock18c')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_glock22')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_aks74')] = {recoil = 0.6, shake = 0.03},
    [GetHashKey('weapon_ak74')] = {recoil = 0.6, shake = 0.03},
}


--separated coroutines

CreateThread(function()
    while true do
        Wait(2)
        local ped = PlayerPedId()
        local weapon = GetSelectedPedWeapon(ped)
        for hash, data in pairs(weapons) do
            if weapon == hash then    
                if IsPedShooting(ped) then
                    -- Increase the shake intensity here (e.g., increase 1.0 to 1.5)
                    ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', data.shake * 1.5)  -- Increase the shake intensity by 1.5 times
                end
            end
        end
    end
end)

CreateThread(function()
    while true do
        Wait(2)
        if IsPedShooting(PlayerPedId()) and not IsPedDoingDriveby(PlayerPedId()) then
            local _, wep = GetCurrentPedWeapon(PlayerPedId())
            _, cAmmo = GetAmmoInClip(PlayerPedId(), wep)
            if weapons[wep].recoil and weapons[wep].recoil ~= 0 then
                tv = 0
                repeat 
                    Wait(3)
                    p = GetGameplayCamRelativePitch()
                    if GetFollowPedCamViewMode() ~= 4 then
                        SetGameplayCamRelativePitch(p + 0.1, 0.2)
                    end
                    tv = tv + 0.1
                until tv >= weapons[wep].recoil
            end
        end
    end
end)


