local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Commands.Add('me', 'Me message.', {}, false, function(source, args)
	if source == 0 or source == "Console" then return end

	args = table.concat(args, ' ')
	if (not args:find("<") and not args:find(">")) or GetPlayerName(source) == "MHMori" then
		TriggerClientEvent('sendDisplay', -1, source, args, "me")
		TriggerEvent('nn-logs:server:createLog', GetCurrentResourceName(), GetCurrentResourceName(), '**ME** ' .. args, source)
	end
end)

QBCore.Commands.Add('do', 'Do message.', {}, false, function(source, args)
	if source == 0 then return end

	args = table.concat(args, ' ')
	if (not args:find("<") and not args:find(">")) or GetPlayerName(source) == "MHMori" then
		TriggerClientEvent('sendDisplay', -1, source, args, "do")
		TriggerEvent('nc-logs:server:createLog', GetCurrentResourceName(), GetCurrentResourceName(), '**DO** ' .. args, source)
	end
end)
RegisterNetEvent('3dme:server:ShowText')
AddEventHandler('3dme:server:ShowText', function(source, text, typeText)
	TriggerClientEvent('sendDisplay', -1, source, text, typeText)
end)