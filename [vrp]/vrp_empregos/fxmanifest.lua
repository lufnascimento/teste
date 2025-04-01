shared_script '@likizao_ac/client/library.lua'






ui_page 'web/index.html'

game "gta5" 
fx_version "bodacious"

client_scripts {
	"@vrp/lib/utils.lua",
	"client-side.lua",
	"**/client.lua",
	"config-side.lua"
}
 
server_scripts {
	"@vrp/lib/utils.lua",
	"server-side.lua",
	"**/server.lua",
	"config-side.lua"
}

shared_scripts {
	"**/config.lua"
}

files { 'web/**/*' }              