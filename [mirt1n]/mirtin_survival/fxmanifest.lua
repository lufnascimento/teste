shared_script '@likizao_ac/client/library.lua'

lua54 'yes'
fx_version 'bodacious' 
game 'gta5'

client_scripts {
	'@vrp/lib/utils.lua',
	'config/config_client.lua',
	'client.lua'
}

server_scripts {
	'@vrp/lib/utils.lua',
	'config/config_server.lua',
	'server.lua'
}

-- ui_page 'http://cidadealta.lotusgroup.dev/survival/index.html'
ui_page 'web/index.html'
files {
	'web/**'
}