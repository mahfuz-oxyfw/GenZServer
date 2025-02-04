-- Events --

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    if Config.CommandEnabled then
        TriggerServerEvent('gzrp-cargift:server:RequestCommands')
    end
end)

RegisterNetEvent('gzrp-cargift:client:RequestCommands', function(isAllowed)
    if isAllowed then
        TriggerEvent('chat:addSuggestion', '/' .. Config.GiveCarCommand, '[' .. Lang:t('other.id') .. '] [' .. Lang:t('other.model') .. ']', {})
    end
end)

RegisterNetEvent('gzrp-cargift:client:sendText')
AddEventHandler('gzrp-cargift:client:sendText', function(sender, subject, message)
    TriggerServerEvent('yseries:server:sendNewMail', {
        sender = sender,
        subject = subject,
        message = message,
    })
end)