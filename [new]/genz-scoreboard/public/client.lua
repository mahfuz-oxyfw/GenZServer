RegisterCommand('scoreboard', function()
    TriggerEvent('gz-scoreboard:client:toggle')
end, false)

RegisterKeyMapping('scoreboard', 'Open Scoreboard', 'keyboard', 'U') -- customizable, here value is U

RegisterCommand('robberies', function()
    TriggerEvent('gz-scoreboard:client:toggleRobbery')
end, false)

RegisterKeyMapping('robberies', 'Check Robbery Stats', 'keyboard', 'HOME') -- customizable, here value is HOME

function StartAnim()
    exports['rpemotes']:EmoteCommandStart('phone')
end

function EndAnim()
    exports['rpemotes']:EmoteCancel()
end