fx_version 'cerulean'
game 'gta5'
author 'Ajaxon'
description 'Aldore Hospital'
version '2.0.0'
this_is_a_map 'yes'

dependencies {
    '/server:7290',
    '/gameBuild:2545',
    'ajaxon_mapdata',
    'ajaxon_scenarios',

}

escrow_ignore {
    'stream/**/*.ytd',
    'stream/**/*.ybn',
    'stream/ytyp/ajaxon_aldore_hospitalv2_00_int.ytyp',
    'stream/ytyp/ajaxon_aldore_hospitalv2_01_int.ytyp',
    'stream/ytyp/ajaxon_aldore_hospitalv2_02_int.ytyp',
    'stream/ytyp/ajaxon_aldore_hospitalv2_int_garage.ytyp',
}
dependency '/assetpacks'