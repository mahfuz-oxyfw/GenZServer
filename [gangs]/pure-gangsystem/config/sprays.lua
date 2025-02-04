Config.sprays = {
    timeToCreateSpray = 90, -- in seconds

    blipsOnMap = true, -- if you want to display the blips on the map (these will still be displayed on the gang map)

    scaleFactor = 12.0, -- this is just for the sprays check framework/sprayFonts.lua

    radius = 40.0, -- this is how close you can see the sprays for (max render 14 sprays at once see keep that in mind)

    tooFar = 4.0, -- this is how close you have to be to the wall

    areaFlatCheck = true, -- this is to chekc if the area is flat

    amountOnline = 8, -- amount of gang members online needed for their spray to be scratched, if 0 they can be scratched at any time (even offline)

    timeToScratch = 75, -- time to scratch a spray in seconds

    rep = 1.0, -- the amount of rep given/removed when creating/scratching a spray

    animations = {
        scratch = {
            dict = 'anim@amb@business@weed@weed_inspecting_lo_med_hi@',
            anim = 'weed_spraybottle_stand_spraying_01_inspector',
        },
        create = {
            dict = 'anim@scripted@freemode@postertag@graffiti_spray@male@',
            anim = 'spray_can_var_01_male',
        }
    },

    forbiddenMaterial = {
        [1913209870] = true,
        [-1595148316] = true,
        [510490462] = true,
        [909950165] = true,
        [-1907520769] = true,
        [-1136057692] = true,
        [509508168] = true,
        [1288448767] = true,
        [-786060715] = true,
        [-1931024423] = true,
        [-1937569590] = true,
        [-878560889] = true,
        [1619704960] = true,
        [1550304810] = true,
        [951832588] = true,
        [2128369009] = true,
        [-356706482] = true,
        [1925605558] = true,
        [-1885547121] = true,
        [-1942898710] = true,
        [312396330] = true,
        [1635937914] = true,
        [-273490167] = true,
        [1109728704] = true,
        [223086562] = true,
        [1584636462] = true,
        [-461750719] = true,
        [1333033863] = true,
        [-1286696947] = true,
        [-1833527165] = true,
        [581794674] = true,
        [-913351839] = true,
        [-2041329971] = true,
        [-309121453] = true,
        [-1915425863] = true,
        [1429989756] = true,
        [673696729] = true,
        [244521486] = true,
        [435688960] = true,
        [-634481305] = true,
        [-1634184340] = true,
    }
}