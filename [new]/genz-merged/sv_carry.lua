-- local carrying = {}
-- --carrying[source] = targetSource, source is carrying targetSource
-- local carried = {}
-- --carried[targetSource] = source, targetSource is being carried by source

-- RegisterServerEvent("gz-merged:sync")
-- AddEventHandler("gz-merged:sync", function(targetSrc)
-- 	local source = source
-- 	local sourcePed = GetPlayerPed(source)
--    	local sourceCoords = GetEntityCoords(sourcePed)
-- 	local targetPed = GetPlayerPed(targetSrc)
--         local targetCoords = GetEntityCoords(targetPed)
-- 	if #(sourceCoords - targetCoords) <= 3.0 then 
-- 		TriggerClientEvent("gz-merged:syncTarget", targetSrc, source)
-- 		carrying[source] = targetSrc
-- 		carried[targetSrc] = source
-- 	end
-- end)

-- RegisterServerEvent("gz-merged:stop")
-- AddEventHandler("gz-merged:stop", function(targetSrc)
-- 	local source = source

-- 	if carrying[source] then
-- 		TriggerClientEvent("gz-merged:cl_stop", targetSrc)
-- 		carrying[source] = nil
-- 		carried[targetSrc] = nil
-- 	elseif carried[source] then
-- 		TriggerClientEvent("gz-merged:cl_stop", carried[source])			
-- 		carrying[carried[source]] = nil
-- 		carried[source] = nil
-- 	end
-- end)

-- AddEventHandler('playerDropped', function(reason)
-- 	local source = source
	
-- 	if carrying[source] then
-- 		TriggerClientEvent("gz-merged:cl_stop", carrying[source])
-- 		carried[carrying[source]] = nil
-- 		carrying[source] = nil
-- 	end

-- 	if carried[source] then
-- 		TriggerClientEvent("gz-merged:cl_stop", carried[source])
-- 		carrying[carried[source]] = nil
-- 		carried[source] = nil
-- 	end
-- end)
RegisterServerEvent('CarryPeople:sync')
AddEventHandler('CarryPeople:sync', function(target, animationLib,animationLib2, animation, animation2, distans, distans2, height,targetSrc,length,spin,controlFlagSrc,controlFlagTarget,animFlagTarget)
	TriggerClientEvent('CarryPeople:syncTarget', targetSrc, source, animationLib2, animation2, distans, distans2, height, length,spin,controlFlagTarget,animFlagTarget)
	TriggerClientEvent('CarryPeople:syncMe', source, animationLib, animation,length,controlFlagSrc,animFlagTarget)
end)

RegisterServerEvent('CarryPeople:stop')
AddEventHandler('CarryPeople:stop', function(targetSrc)
	TriggerClientEvent('CarryPeople:cl_stop', targetSrc)
end)