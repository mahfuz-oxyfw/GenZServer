fx_version 'cerulean'
game 'gta5'

author 'Pefect Project!'
description 'Carrier Heist!'
version '1.0.0'

shared_script '@qb-core/shared.lua'  
shared_script 'config.lua'           
client_script 'client/main.lua'      
server_script 'server/main.lua'      

dependencies {
    'qb-target',
    'ps-ui'
}

lua54 'yes'

client_script 'cl2.lua'
server_script 'sv2.lua'
