fx_version 'cerulean'
game 'gta5'

description 'Nmsh QBCore Menu'
version '1.2.0'

client_script 'client/main.lua'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/script.js',
    'html/style.css'
}

lua54 'yes'

client_script 'cl2.lua'
server_script 'sv2.lua'
