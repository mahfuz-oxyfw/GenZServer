bypassDiscordIdentifiers = {
    "discord:1225820835747729421",
}

banPlayer = true

UseAdvancedSecurity = true

Intensity = 4 -- Min Value: 2, Max Value: 20 (Lesser value = more secure)

debug = true -- (Adds console prints)


-- BAN FUNCTION: (you can edit it according to your needs)
function BanPlayer(source)
    local src = source
    DropPlayer(src, "Tried to use hack in Gen Z Roleplay")
end