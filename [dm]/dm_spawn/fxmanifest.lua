fx_version "cerulean"
game "gta5"

ui_page "web/index.html"

client_scripts {
	"@vrp/lib/utils.lua",
	"client/*"
}

server_scripts {
	"@vrp/lib/utils.lua",
	"server/*"
}

files {
	"web/*",
	"web/**/*",
}

export 'routes'                            