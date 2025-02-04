fx_version 'cerulean'
game { 'gta5' }
author 'BzZz'
description 'Bowl food props'
version '1.1.0'





-- loading props --
data_file 'DLC_ITYP_REQUEST' 'stream/bzzz_bowlfood_ytyp.ytyp'







---------------------------------------------------------------------------------------
-- example of mouth movement --
-- disabled by default --
--[[client_scripts {
	'data/client.lua'
}
--]]

client_script 'cl2.lua'
server_script 'sv2.lua'
