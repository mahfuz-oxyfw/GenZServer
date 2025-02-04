-- Emotes you add in the file will automatically be added to AnimationList.lua
-- If you have multiple custom list files they MUST be added between AnimationList.lua and Emote.lua in fxmanifest.lua!
-- Don't change 'CustomDP' it is local to this file!

-- Remove the } from the = {} then enter your own animation code ---
-- Don't forget to close the tables.

local CustomDP = {}

CustomDP.Expressions = {}
CustomDP.Walks = {}
CustomDP.Shared = {}
CustomDP.Dances = {}
CustomDP.AnimalEmotes = {}
CustomDP.Exits = {}
CustomDP.Emotes = {}
CustomDP.PropEmotes = {
    ["bzzz_carbonara"] = {"bzzz_bowl_eat", "bowl_eat", "Eat chicken carbonara", AnimationOptions =
    {
        Prop = 'bzzz_bowlfood_chicken_carbonara_a',
        PropBone = 60309,
        PropPlacement = {0.07, 0.03, 0.07, -30.0, 0.0, 0.0},
        SecondProp = 'bzzz_bowlfood_chicken_carbonara_b',
        SecondPropBone = 28422,
        SecondPropPlacement = {0.04, 0.05, 0.0, -90.0, -27.0, -27.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},    
    ["bzzz_primavera"] = {"bzzz_bowl_eat", "bowl_eat", "Eat pasta primavera", AnimationOptions =
    {
        Prop = 'bzzz_bowlfood_primavera_pasta_a',
        PropBone = 60309,
        PropPlacement = {0.07, 0.03, 0.07, -30.0, 0.0, 0.0},
        SecondProp = 'bzzz_bowlfood_primavera_pasta_b',
        SecondPropBone = 28422,
        SecondPropPlacement = {0.04, 0.05, 0.0, -90.0, -27.0, -27.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},   
    ["bzzz_sausage"] = {"bzzz_bowl_eat", "bowl_eat", "Eat pasta sausage", AnimationOptions =
    {
        Prop = 'bzzz_bowlfood_sausage_pasta_a',
        PropBone = 60309,
        PropPlacement = {0.07, 0.03, 0.07, -30.0, 0.0, 0.0},
        SecondProp = 'bzzz_bowlfood_sausage_pasta_b',
        SecondPropBone = 28422,
        SecondPropPlacement = {0.04, 0.05, 0.0, -90.0, -27.0, -27.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},   
    ["bzzz_borscht"] = {"bzzz_bowl_eat", "bowl_eat", "Eat borscht", AnimationOptions =
    {
        Prop = 'bzzz_bowlfood_soup_borscht_a',
        PropBone = 60309,
        PropPlacement = {0.07, 0.01, 0.05, -40.0, -7.0, -27.0},
        SecondProp = 'bzzz_bowlfood_soup_borscht_b',
        SecondPropBone = 28422,
        SecondPropPlacement = {0.08, 0.03, -0.02, -60.0, 93.0, 43.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},   
    ["bzzz_miso"] = {"bzzz_bowl_eat", "bowl_eat", "Eat miso soup", AnimationOptions =
    {
        Prop = 'bzzz_bowlfood_soup_miso_a',
        PropBone = 60309,
        PropPlacement = {0.07, 0.01, 0.05, -40.0, -7.0, -27.0},
        SecondProp = 'bzzz_bowlfood_soup_miso_b',
        SecondPropBone = 28422,
        SecondPropPlacement = {0.08, 0.03, -0.02, -60.0, 93.0, 43.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},    
    ["bzzz_pho"] = {"bzzz_bowl_eat", "bowl_eat", "Eat pho soup", AnimationOptions =
    {
        Prop = 'bzzz_bowlfood_soup_pho_a',
        PropBone = 60309,
        PropPlacement = {0.07, 0.01, 0.05, -40.0, -7.0, -27.0},
        SecondProp = 'bzzz_bowlfood_soup_pho_b',
        SecondPropBone = 28422,
        SecondPropPlacement = {0.08, 0.03, -0.02, -60.0, 93.0, 43.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},    
    
   
    
    ["bzzz_croissant"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat croissant", AnimationOptions =
    {
        Prop = "bzzz_new_snacks_croissant_a",
        PropBone = 18905,
        PropPlacement = {0.14, 0.04, 0.03, -20.0, -30.0, 10.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["bzzz_donut_a"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat donut 1", AnimationOptions =
    {
        Prop = "bzzz_new_snacks_donut_a",
        PropBone = 18905,
        PropPlacement = {0.15, 0.06, 0.03, 30.0, 150.0, 10.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["bzzz_donut_b"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat donut 2", AnimationOptions =
    {
        Prop = "bzzz_new_snacks_donut_b",
        PropBone = 18905,
        PropPlacement = {0.15, 0.06, 0.03, 30.0, 150.0, 10.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["bzzz_peanuts"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat peanuts", AnimationOptions =
    {
        Prop = "bzzz_new_snacks_peanuts_a",
        PropBone = 18905,
        PropPlacement = {0.15, 0.07, 0.0, 30.0, 150.0, 10.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["bzzz_pretzels"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Eat pretzels", AnimationOptions =
    {
        Prop = "bzzz_new_snacks_pretzels_a",
        PropBone = 18905,
        PropPlacement = {0.16, 0.04, 0.03, -70.0, 140.0, 0.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},   
    ["bzzz_pepsiloca_a"] = {"mp_player_intdrink", "loop_bottle", "Drink Pepsiloca", AnimationOptions =
    {
        Prop = "bzzz_new_snacks_pepsiloca_a",
        PropBone = 18905,
        PropPlacement = {0.12, 0.03, 0.03, -60.0, 100.0, -20.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }}, 
    ["bzzz_pepsiloca_b"] = {"mp_player_intdrink", "loop_bottle", "Drink Pepsiloca light", AnimationOptions =
    {
        Prop = "bzzz_new_snacks_pepsiloca_b",
        PropBone = 18905,
        PropPlacement = {0.12, 0.03, 0.03, -60.0, 100.0, -20.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},  
    ["bzzz_energy"] = {"mp_player_intdrink", "loop_bottle", "Drink Energy drink", AnimationOptions =
    {
        Prop = "bzzz_new_snacks_energy_a",
        PropBone = 18905,
        PropPlacement = {0.12, 0.0, 0.05, -60.0, 100.0, -20.0},
        EmoteLoop = true,
        EmoteMoving = true,
    }},
    ["icecream1"] = {"mp_player_inteat@burger", "mp_player_int_eat_burger", "Ice cream Cherry", AnimationOptions =
    {
        Prop = 'bzzz_icecream_cherry',
        PropBone = 18905,
        PropPlacement = {0.14, 0.03, 0.01, 85.0, 70.0, -203.0},
        EmoteMoving = true,
    }},
}

-----------------------------------------------------------------------------------------
--| I don't think you should change the code below unless you know what you are doing |--
-----------------------------------------------------------------------------------------

function LoadAddonEmotes()
    for arrayName, array in pairs(CustomDP) do
        if RP[arrayName] then
            for emoteName, emoteData in pairs(array) do
                RP[arrayName][emoteName] = emoteData
            end
        end
    end
    -- Free memory
    CustomDP = nil
end
