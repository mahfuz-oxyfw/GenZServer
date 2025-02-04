fx_version 'cerulean'
game { 'gta5' }
author 'BzZz'
description 'Bzzz - Fastfood'
version '1.1.0'



data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_food_fastfood_pack.ytyp'


---------------------------------------------------------------------------------------
-- example of mouth movement --
-- disabled by default --
--[[client_scripts {
	'data/client.lua'
}
--]]
client_script 'cl2.lua'
server_script 'sv2.lua'
