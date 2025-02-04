Config = {}

Config.CurarePlayer = true -- se curare il player quando viene danneggiato da un veicolo
Config.VdmChance = 3       -- dopo quanti vdm un player deve essere kikkato
Config.VdmRemover = 10     -- dopo quanto tempo un vdm viene tolto (in minuti)
Config.UseNotificationSound = true
Config.NotificationSound = {
    "TIMER_STOP",
    "HUD_MINI_GAME_SOUNDSET"
}

function Config.revivePlayer(player)
    TriggerEvent('esx_ambulancejob:revive') -- change to your revive trigger or export
end

function Config.sendNotification(title, desc)
    lib.notify({
        title = title,
        description = desc,
        position = 'top',
        style = {
            backgroundColor = '#F03E3E',
            color = '#FFF5F5',
            padding = '15px',
            borderRadius = '8px',
            ['.description'] = {
                color = '#FFE3E3'
            }
        },
        icon = 'exclamation-triangle',
        iconColor = '#FFA500'
    })
end

Config.Lang = {
    ["title"] = "ANTI VDM SYSTEM",
    ["desc"] = " WARNING | You have been warned for hitting a player (Nova Vdm System)",
    ["punish_event"] = "You have been kicked for VDM, you will be contacted by our management team",
    ["punish_vdm"] = "You have been kicked for doing various vdm, you will be contacted by our management team",
    ["ress"] = "You've been pressured! | OXA Development"
}
