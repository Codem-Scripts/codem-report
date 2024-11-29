fx_version 'cerulean'
game 'gta5'
author 'codem'
description 'codem-reportsystem'
ui_page {
	'html/index.html',
}

files {
	'html/css/*.css',
	'html/js/*.js',
	'html/img/*.png',
	'html/adminpanel/*.png',
	'html/index.html',
}

shared_script 'GetFrameworkObject.lua'
shared_script 'config.lua'

client_scripts {
	'client/*.lua',
}
server_scripts {
	-- '@async/async.lua',
	'@mysql-async/lib/MySQL.lua',
	'server/*.lua',
}

lua54 'yes'

escrow_ignore {
	'config.lua',
	'GetFrameworkObject.lua',
	
}
dependency '/assetpacks'