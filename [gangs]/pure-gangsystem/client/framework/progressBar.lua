local QBCore = exports['qb-core']:GetCoreObject()

function progressBar(isScratch, animDict, anim, onCancel, onFinsh)
    local time = Config.sprays.timeToCreateSpray
    if isScratch then 
        time = Config.sprays.timeToScratch
    end
    local text = _Lang('sprays.creatingSpray')
    if isScratch then 
        text = _Lang('sprays.scratchSpray')
    end
    QBCore.Functions.Progressbar('create_spray', text, time * 1000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = animDict,
        anim = anim,
        flags = 1,
    }, {}, {}, function() -- Done
        onFinsh()
    end, function() -- Cancel
        onCancel()
    end)
end