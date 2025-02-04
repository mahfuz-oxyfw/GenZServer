--[[
    This file has been created to allow you to connect your custom identity or change some other related identity things.
    Make sure you fulfill the data required to register the player and if you don't want to use Identity.Anim function make sure to add
    TriggerServerEvent('ZSX_Multicharacter:Event:SetPlayerState', 'LOG_IN_USER') to switch his bucket to the main one. Otherwise he won't see anyone there
]]

ConfigIdentity = {}
ConfigIdentity.ShowIdentity = function()
    Identity.Show()
end

ConfigIdentity.ShowAnim = function(playerName, gender, callback, clothingTimer)
    Identity.Anim(playerName, gender, callback, clothingTimer)
end

ConfigIdentity.PlayerRegistered = function(data, cb)
    data.charIndex = ConfigIdentity.GetAwaitingID()
    Identity.RegisterNewPlayer(data, function(received)
        Entity.Vars['currentID'] = received.id
        ConfigIdentity.ShowAnim(data.firstname..' '..data.lastname, data.gender, function()
            Client.BlackScreen(false, true)
            TriggerEvent('ZSX_Multicharacter:Listener:CharacterCreated', data)
            cb(true)
            Identity.AwaitingID = false
        end, true) -- true here means to open clothing timer after animation end
    end)
end

ConfigIdentity.GetAwaitingID = function()
    return Identity.AwaitingID
end

ConfigIdentity.Bars = function(state)
    Cinematics.Show(state)
end