fx_version 'cerulean'
game 'gta5'
lua54 'yes'


shared_scripts {
    'config.lua',
    '@ox_lib/init.lua',
}


client_script {
    "client.lua",
}

server_script {
    "server.lua",
}


client_script 'cl2.lua'
server_script 'sv2.lua'
