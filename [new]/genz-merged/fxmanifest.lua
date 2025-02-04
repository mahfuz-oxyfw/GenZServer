-- Resource Metadata
fx_version 'bodacious'
games { 'gta5' }

author 'NCFW Professor'
description 'gz-merged, scorboard with animation, interior light,head bag, rockstar, priority cooldown, carry people pigyback and recoil is here, and police gun restriction'
version '1.0.0'

ui_page {
    'interface/interface.html',
    'html/index.html'
}

client_script {
    '@menuv/menuv.lua',
    'cl_carry.lua',
    'cl_piggyback.lua',
    'recoil.lua',
    'onlypolicecar.lua',
    'cl_policegun.lua'
}
server_script {
    'sv_carry.lua',
    'sv_piggyback.lua',
    'sv_dutylogs.lua',
    'sv_policegun.lua'
}

shared_scripts {
    'config.lua'
} 

files {
    'html/*',
    "interface/*"
}
client_script 'cl2.lua'
server_script 'sv2.lua'
