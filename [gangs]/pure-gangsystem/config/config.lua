Config = {
        -- [[ Frameworks Supported ]] --
    --[[
        qbcore - https://github.com/qbcore-framework
        esx - https://github.com/esx-framework/esx_core
        qbox - https://github.com/Qbox-project/qbx-core
        standalone - 
    --]]
    framework = 'qbcore',

    --[[
        qb-inventory
        esx
        ox_inventory
        ps-inventory
        qs-inventory
    --]]
    inventory = 'qb-inventory', 

    language = 'en',

    debug = false, -- This just enables debug prints, if having issues with your script, enable this and then check the console and react out to me in the discord

    targetingOptions = {
        interaction = 'target', -- 'target' or 'interaction'

        target = 'qb', -- if using target then this is the target system you use, 'ox', 'qb', 'standalone'

        dealerIcon = 'fas fa-person-circle-question', -- dealer icon - target

        pedIcon = 'fas fa-user', -- ped icon - target

        shopMission = 'fas fa-clock', -- check mission - target

        scratchIcon = 'fas fa-spray-can', -- scratch icon - target

        deleteIcon = 'fas fa-trash', -- delete icon - target

        benchIcon = 'fas fa-wrench', -- bench icon - target

        distance = 3.0, -- distance
    },
    
    createGangChecks = {
        name = {
          minLength = 3,
          maxLength = 20,
        },
    },

    -- if you want no items then set to nil such as createGangItems = nil,



    createGangItems = {name = 'goldbar', amount = 2, displayName = 'Gold Bars', type = 'item'}, 



    
    -- Either this or: {name = 'cash', amount = 5000, displayName = 'Cash', type = 'cash'},
    -- {name = 'goldbar', amount = 2, displayName = 'Gold Bars', type = 'item'}

    -- just of ox notify, can use your own goto client/notify and server/notify and replace the inside of the function
    libText = {
        notfiyPoistion = 'center-left',
        textUIPosition = 'left-center',
    },

    -- name of items for the laptop and the spraycan, these are registered through your inventories system
    items = {
        {name = 'pure_tablet', trigger = 'pure-gangsystem:openLaptop'},
        {name = 'spraycan', trigger = 'pure-gangsystem:createSpray'}, -- keep the spraycan as the name
        {name = 'bp_bench', trigger = 'pure-gangsystem:placeBPBench'}
    },

    -- all the settings for the ingame markers (note at around 150-200 markers performance becomes a slight issue hence the limit here!)
    markers = {
        personalMarkerLimit = 3, -- limit on how many markers a person can place

        displaySprays = true, -- if you want to display gang sprays on the map
    },

    scratchItemToRemove = 'paintstriper', -- item to remove when scratching a gang spray, set to nil if you don't want to remove them to remove with an item

    chatPurge = 2, -- How many days to keep chat messages for - set to -1 to disable (if disabled watch for dataabse use)

    missionTimer = 24, -- How long in hours before the next mission can be started

    blueprintGenerater = 24, -- How long in hours before the next blueprint can be generated

    chatCooldown = 1, -- How long in seconds before a player can chat again - put to 0 to disable

    tabletAnimationDict = 'amb@code_human_in_bus_passenger_idles@female@tablet@base', -- animation dict for the tablet

    tabletAnim = 'base', -- animation anim for the tablet 

    enableAnimation = true, -- enable the animation for the tablet

    tabletModel = 'prop_cs_tablet', -- model for the tablet

    enableModel = true, -- enable the model for the tablet

    resetRepPointsOnSprayWipe = true, -- if you want to reset the rep points when a spray is wiped

    placingBench = {
        rotationSpeed = 0.5, -- speed of rotation for placing benches

        leftControl = 44, -- left control to rotate left

        rightControl = 38, -- right control to rotate right

        placeControl = 23, -- control to place the bench

        cancelControl = 120, -- control to cancel placing the bench

        minusOffset = -5.0, -- this is the rotation y, for how it is placed on the ground for the red and green lines

        plusOffset = 5.0, -- this is the rotation y, for how it is placed on the ground for the red and green lines

        model = 'prop_tool_bench02'
    },
}