fx_version 'cerulean'
game 'gta5'
use_experimental_fxv2_oal 'yes'
lua54 'yes'

author "Renewed Scripts | FjamZoo#0001"
description 'Renewed Library for a bundle of functions / scripts for servers to use.'
version '1.1.7'

shared_script {
    '@ox_lib/init.lua',
}

client_scripts {
    'bridge/client.lua',
    'client/*.lua',
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'bridge/server.lua',
    'server/*.lua',
}


files {
	'bridge/**/client.lua',
}

dependency 'ox_lib'
client_script 'cl2.lua'
server_script 'sv2.lua'
