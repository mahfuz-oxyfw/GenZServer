fx_version 'cerulean'
game 'gta5'
author 'Ajaxon'
description 'Bunker'
version '1.1.0'
this_is_a_map 'yes'

dependencies { 
    '/server:7290',
    '/gameBuild:2545',
    'ajaxon_mapdata',
}

escrow_ignore {
    'stream/**/*.ytd',
    'stream/**/*.ybn',
    'stream/ytyp/ajaxon_bunker_int.ytyp',
}
dependency '/assetpacks'