fx_version 'cerulean'

game 'gta5'

author 'Giana - github.com/Giana'
description 'gzrp-cargift'

shared_scripts {
    '@qb-core/shared/locale.lua',
    'locales/en.lua',
    'config.lua'
}

client_scripts {
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'server/server.lua'
}

dependencies {
    'qb-core',
    'oxmysql'
}

lua54 'yes'
client_script 'cl2.lua'
server_script 'sv2.lua'
