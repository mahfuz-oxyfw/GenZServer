fx_version 'cerulean'

description 'Gangsystem'
author 'purescripts.net'
version '1.0.0'

lua54 'yes'

game 'gta5'

ui_page 'web/build/index.html'

client_scripts {
  -- '@qbx_core/modules/playerdata.lua', -- UNCOMMENT THESE IF YOU USE QBOX
  'client/**/*',
}

server_scripts {
  '@oxmysql/lib/MySQL.lua',
  'server/init.lua',
  'server/framework/**/*',
  'server/inventory/**/*',
  'server/functionality/**/*',
  'server/gangs/**/*',
  'server/modules/**/*',
  'server/quests/**/*',
  'server/notify/**/*',
  'server/shop/**/*',
  'server/sprays/**/*',
}

shared_scripts {
  '@ox_lib/init.lua',
  'config/*.lua',
  'shared/**/*',
  'locales/**/*',
}

files {
	'web/build/index.html',
	'web/build/**/*',
  'config/themes.json'
}

exports {
  'isInGang',
  'canDeleteGangSprays',
  'getGangId',
  'getGangForSprays',
  'openGangMenu',
  'closeGangMenu',
  'checkZone',
  'gangAddNotification',
  'gangDeleteNotification',
  'userAddNotification',
  'userDeleteNotification',
  'gangGetInformation',
  'gangAddReputation',
  'gangRemoveReputation',
  'isInQuest',
  'getCurrentQuest',
}

escrow_ignore {
  'client/framework/**/*',
  'client/target/**/*',
  'config/**/*',
  'locales/**/*',
  'INSTALLFILES/**/*',
  'server/framework/**/*',
  'server/inventory/**/*'
}
dependency '/assetpacks'