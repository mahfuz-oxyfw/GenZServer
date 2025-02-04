Config.gangs = {
    -- These are the current gang colours 
    gangColours = {
        {blipColour = 1, hexColour = '#E03232'},
        {blipColour = 47, hexColour = '#EA8E50'},
        {blipColour = 46, hexColour = '#EEC64E'},
        {blipColour = 3, hexColour = '#5DB6E5'},
        {blipColour = 15, hexColour = '#6AC4BF'},
        {blipColour = 29, hexColour = '#4561AB'},
        {blipColour = 27, hexColour = '#A854F2'},
        {blipColour = 8, hexColour = '#FE7AC3'},
        {blipColour = 2, hexColour = '#71CB71'},
        {blipColour = 4, hexColour = '#FEFEFE'},
        {blipColour = 39, hexColour = '#9A9A9A'},
        {blipColour = 85, hexColour = '#4C4C4C'},
    }, 

    --[[
        Check docs for more in this - how to make your own sprays:
        Follow this guide, drag and drop into stream folder and then add to the availableFonts the .gfx name and then place it in game and update the image
    ]]--

    -- These are the streamed fonts matching above, these also link to those streamed in the stream file
    availableFonts = {
        'blowbrush',
        'FortyScript',
        'Grafite',
        'NextUp',
        'Painterz',
        'Subway',
    },

    -- These are the blips for the quests/spray attacks etc
    blips = {
        missionColour = 7, -- mission blip colour
        missionColourHex = '#853BFA', -- mission blip colour hex
        sprayAttackColour = 1, -- spray attack blip colour
        sprayAttackColourHex = '#F62727', -- spray attack blip colour hex
        attackSprite = 84, -- attack sprite
        itemHandoverSprite = 124, -- item handover sprite
        itemPickupSprite = 78, -- item pickup sprite
        gangNPC = 1, -- gang npc sprite
    },

    notifications = {
        sprayAttackIcon = 'fa-spray-can',
        questIcon = 'fa-list-check',
        storeIcon = 'fa-store',
        carIcon = 'fa-car',
        propIcon = 'fa-box',
    },
}