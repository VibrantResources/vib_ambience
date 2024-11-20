fx_version 'cerulean'
game 'gta5'

description 'Ambient Surroundings'
author 'Vibrant Resources'
version '1.0'

shared_scripts {
    '@ox_lib/init.lua',
	'configs/*.lua',
}

server_scripts  {
	'server/*.lua'
}

client_scripts {
	'client/*.lua',
}

lua54 'yes'