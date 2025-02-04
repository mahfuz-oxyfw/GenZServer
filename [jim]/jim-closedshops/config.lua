-- https://discord.gg/xKgQZ6wZvS

Config = {
	Debug = false, -- Debugging mode
	Lan = "en", -- Set locale file here
	img = "qb-inventory/html/images/", -- Set this to get correct "buying menu" images

	Inv = "qb", -- set to "qb" if using qb_inventory
				-- set to "ox" if using ox_nventory
	Menu = "qb",
	Notify = "qb",
	ProgressBar = "qb", -- set to "ox" if using ox_lib progressbar

	Renewed = false, -- If "false" use qb-management, if "true" use Renewed-Banking

	Shops = {
		['ambulance'] = {
			enable = true,
			locations = {
				[1] = vec4(453.21, -975.57, 25.47, 177.88),
			},
			ped = "s_m_m_doctor_01",
			--prop = "prop_vend_snak_01",
			itemlist = {
				--Drinks

				-- ['bscoke'] = 100,
				-- ['milkshake'] = 100,

				--Food
				
				['stresspill'] = 250,
				['ifaks'] = 350,
				['bandage'] = 250,
				['painkillers'] = 250,
				-- ['shotfries'] = 100,
				-- ['shotnuggets'] = 100,
				-- ['shotrings'] = 100,
				-- ['moneyshot'] = 100,
				-- ['meatfree'] = 100,
				-- ['bleeder'] = 100,
				-- ['torpedo'] = 100,
				-- ['cheesewrap'] = 100,
				-- ['chickenwrap'] = 100,
			},
		},
		['burgershot'] = {
			enable = true,
			locations = {
				[1] = vec4(-1190.51, -897.02, 13.97, 39.49),
			},
			ped = "U_M_Y_BurgerDrug_01",
			--prop = "prop_vend_snak_01",
			itemlist = {
				--Drinks

				-- ['bscoke'] = 100,
				-- ['milkshake'] = 100,

				--Food
				
				['burgershot_bigking'] = 600,
				['burgershot_colab'] = 250,
				-- ['shotfries'] = 100,
				-- ['shotnuggets'] = 100,
				-- ['shotrings'] = 100,
				-- ['moneyshot'] = 100,
				-- ['meatfree'] = 100,
				-- ['bleeder'] = 100,
				-- ['torpedo'] = 100,
				-- ['cheesewrap'] = 100,
				-- ['chickenwrap'] = 100,
			},
		},
		['chillcafe'] = {
			enable = true,
			locations = {
				[1] = vec4(179.64, -226.01, 54.16, 346.59),
			},
			--ped = "S_M_M_AmmuCountry",
			ped = "a_m_y_busicas_01",
			itemlist = {
				--Drinks
				['meowchi_mochi_ice_cream'] = 500,
				['sweet_herbal_tea'] = 500,
				['strawberry_shortcake'] = 800,
			},
		},
	},
}


Core = exports["qb-core"]:GetCoreObject()
RegisterNetEvent('QBCore:Client:UpdateObject', function() Core = exports["qb-core"]:GetCoreObject() end)

Loc = {}