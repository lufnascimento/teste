shared_script '@likizao_ac/client/library.lua'


fx_version "bodacious"
game "gta5"

ui_page "web/index.html"

lua54 'yes'

shared_scripts {
    'shared/*'
}

client_scripts {
	"@vrp/lib/utils.lua",
    "client/_connection.lua",
	"client/modules/*"
}

files {
	"web/*",
	"web/**/*",
}