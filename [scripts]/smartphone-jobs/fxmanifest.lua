shared_script '@likizao_ac/client/library.lua'




lua54 'yes'




fx_version 'adamant'
game 'gta5'

shared_script '@vrp/lib/utils.lua'

server_scripts {
  'server/*'
}

client_scripts {
  'client/*'
}

files {
  'build/**/*',
  'config.json',
  'images/*.png'
}                            