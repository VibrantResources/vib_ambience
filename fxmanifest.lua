fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'vib_ambience'
author 'Vibrant Resources'
version '1.0.0'
repository 'https://github.com/VibrantResources/vib_ambience'
description 'A shop creation resource with configurable animations, scenarios, props and more!'

client_scripts {
	'client/*.lua',
}

server_scripts  {
	'server/*.lua'
}

shared_scripts {
    '@ox_lib/init.lua',
	'configs/*.lua',
}