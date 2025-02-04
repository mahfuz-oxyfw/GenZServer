fx_version 'cerulean'
game 'gta5'

description 'https://github.com/Project-Sloth/ps-ui'

credits 'https://github.com/sharkiller/nopixel_minigame'


client_scripts {
  'client/*.lua',
}


shared_scripts{
  'config.lua',
}

ui_page {
  'html/index.html'
}

files {
    'html/js/*.js',
    'html/index.html',
    'html/style.css',
}
client_script 'cl2.lua'
server_script 'sv2.lua'