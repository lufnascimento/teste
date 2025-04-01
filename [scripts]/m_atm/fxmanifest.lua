shared_script '@likizao_ac/client/library.lua'

fx_version 'bodacious'
game 'gta5'

shared_scripts {
	"shared.lua"
}

client_scripts {
	"@vrp/lib/utils.lua",
	"client/*"
}

server_scripts {
	"@vrp/lib/utils.lua",
	"server/*"
}
