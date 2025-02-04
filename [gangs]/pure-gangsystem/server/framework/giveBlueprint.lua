function givePlayerBlueprint(source)
    local blueprint = exports['pure-crafting']:getRandomBlueprint()
    giveItem(source, blueprint, 1)
end