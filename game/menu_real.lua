-- Includo le librerie che mi servono
local composer = require( "composer" )
local fx = require( "com.ponywolf.ponyfx" )
local tiled = require( "com.ponywolf.ponytiled" )
local json = require( "json" )

-- Creao la nuova scena
local scene=composer.newScene();


-- Funziona che porta al file contente il gioco
local function gotoGame()
	composer.gotoScene( "game.game", { time=800, effect="crossFade" } )
end

-- Funzione che porta al file contente i credits
local function gotoCredits()
	composer.gotoScene( "game.credits", { time=800, effect="crossFade" } )
end


-- Scena di creazione vieni avviate per prima
function scene:create( event ) 

        local sceneGroup=self.view
        local  start= display.newImageRect(sceneGroup,"image/menu/start.png",402,202); -- Caricamento dell'immagine start
		--Posizinamento dell'immagine start
        start.x = display.contentCenterX
	    start.y = display.contentCenterY

        local credits=display.newImageRect(sceneGroup,"image/menu/credits.png",402,202);-- Caricamento dell'immagine credits
		--Posizinamento dell'immagine Credits
        credits.x=display.contentCenterX
        credits.y=start.y+200
		
		start:addEventListener("tap",gotoGame) -- Permette di andare alla funzione gotoGame premendo sul tasto start
		credits:addEventListener("tap",gotoCredits)-- Permette di andare alla funzione gotoCredits premendo sul tasto credits
end 

-- show()
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is still off screen (but is about to come on screen)
		fx.fadeIn()

	elseif ( phase == "did" ) then
		-- Code here runs when the scene is entirely on screen

	end
end


-- hide()
function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is on screen (but is about to go off screen)

	elseif ( phase == "did" ) then
		-- Code here runs immediately after the scene goes entirely off screen

	end
end


-- destroy()
function scene:destroy( event )

	local sceneGroup = self.view
	-- Code here runs prior to the removal of scene's view

end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene

