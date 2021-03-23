--[[

- MAIN -

Il nostro main serve solamente per impostare le variabili e impostazioni iniziali,
sucessivamente utilizziamo composer per avviare le schermate di menu e di gioco.

--]]

local composer = require( "composer" )

-- Tolgo la barra di stato di IOS
display.setStatusBar( display.HiddenStatusBar ) 

-- Tolgo la barra di navigazione di Android
native.setProperty( "androidSystemUiVisibility", "immersiveSticky" ) 

-- Imposto la variabile mobile
local isMobile = ( "ios" == system.getInfo("platform") ) or ( "android" == system.getInfo("platform") )


-- Ponywolf aggiunge i joistick virtuali e adatta i comandi da tastiera
system.activate("multitouch")
if isMobile or isSimulator then
	local vjoy = require( "com.ponywolf.vjoy" )
	local stick = vjoy.newStick()
	stick.x, stick.y = 128, display.contentHeight - 128
	local button = vjoy.newButton()
	button.x, button.y = display.contentWidth - 128, display.contentHeight - 128
end

-- Imposta il canale audio e carica il menu
audio.reserveChannels(1)
composer.gotoScene( "game.menu_real")