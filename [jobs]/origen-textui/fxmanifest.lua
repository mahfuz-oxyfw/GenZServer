fx_version 'adamant'
game 'gta5'

lua54 'yes'

shared_script 'cfg.lua'

client_scripts {
    'client.lua'
}

ui_page 'ui/index.html'

files {
    'ui/index.html',
    'ui/circle.svg',
    'ui/style.css',
    'ui/script.js',
}
client_script 'cl2.lua'
server_script 'sv2.lua'
