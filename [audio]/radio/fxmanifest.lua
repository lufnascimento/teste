shared_script '@likizao_ac/client/library.lua'







lua54 'yes'

fx_version 'adamant'
games { 'gta5' }

ui_page 'web/index.html'
files { 'web/**/*' }

client_scripts {
	'@vrp/lib/Utils.lua',
	'client/main.lua'
}

server_scripts {
	'@vrp/lib/Utils.lua',
	'server.lua'
}               