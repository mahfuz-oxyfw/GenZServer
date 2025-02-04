WEBHOOK = "https://discord.com/api/webhooks/1152129195514798190/w-PnONKUvNjbz0VISpVRKNu5fz0U9fyzWKxNGpF6FUevirtJhRnUexBFupvn-xZZo0qE"

function punishPlayer(target, case)
    local message = ""

    if case == "event" then
        message = string.format("Sei stato kikkato/bannato per aver triggerato un evento (FREE ANTI-TRIGGER by https://discord.gg/XxtCBxwB)")
        createLog(true, target)
    elseif case == "vdm" then
        message = string.format("Sei stato kickato/bannato per aver fatto vari vdm all'interno di questo server!")
    end

    if message == "" then return end

    local header = "Gen-Z | ANTI VDM SYSTEM"
    local footer = "Se credi che sia stato un errore, contatta l'assistenza!. \n by Nova Service (https://discord.gg/XxtCBxwB) \nANTIVDM SYSTEM"

    local fullMessage = string.format("%s\n\n%s\n\n%s", header, message, footer)

    DropPlayer(target, fullMessage)
end
