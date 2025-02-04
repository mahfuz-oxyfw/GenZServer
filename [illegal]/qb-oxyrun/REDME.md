QB-Core/item.lua

bands					 = {["name"] = "bands", 			 	["label"] = "Band Of Notes", 		        ["weight"] = 100, 		["type"] = "item", 		["image"] = "cashstack.png", 				["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A band of small notes.."},
rolls					 = {["name"] = "rolls", 			 	["label"] = "Roll Of Small Notes", 		        ["weight"] = 100, 		["type"] = "item", 		["image"] = "cashroll.png", 				["unique"] = false, 		["useable"] = false, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A roll of small notes.."},
package					 = {["name"] = "package", 			 	["label"] = "Suspicious Package", 		        ["weight"] = 10000, 		["type"] = "item", 		["image"] = "package.png", 				["unique"] = true, 		["useable"] = true, 	["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "A mysterious package.. Scary!"},

image drop into inventory

If you're not using the dpemotes fork from the QBCore repository, or one that doesn't include the QB changes, animations (like talking to the ped, getting the box into your hand etc.) will not function! You will have to add the following event, anywhere (obviously not inside other code blocks) into your dpemotes, rpemotes/client/Emote.lua


RegisterNetEvent('animations:client:EmoteCommandStart')
AddEventHandler('animations:client:EmoteCommandStart', function(args)
  if CanDoEmote then
    EmoteCommandStart(source, args)
  else
    QBCore.Functions.Notify("Cannot Be Done Right Now", "error")
  end
end)