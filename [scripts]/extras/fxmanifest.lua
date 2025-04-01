shared_script '@likizao_ac/client/library.lua'













fx_version "adamant"
game "gta5"

client_scripts {
"@vrp/lib/utils.lua",
"client.lua"
}

server_scripts {
"@vrp/lib/utils.lua",
"server.lua"
}

files {
"nui/**",
}

ui_page "nui/index.html"                            