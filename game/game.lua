
local composer = require( "composer" )

local scene = composer.newScene()

-- Torna al menù principale
local function backHome()
    composer.gotoScene("game.menu_real", { time=800, effect="crossFade" });
end 

function scene:create( event)
    
    local sceneGroup=self.view

    local txt=display.newText(sceneGroup, "Non esiste alcuno gioco ,ma arriverà credi in Marcello",display.contentCenterX,display.contentCenterY)
    
    -- Torna al menu
    local buttonbackhome=display.newImageRect(sceneGroup,"image/menu/home_icon.png",70,70);
    buttonbackhome.x = (buttonbackhome.contentWidth/2) 
    buttonbackhome.y = (buttonbackhome.contentHeight/2)
    buttonbackhome:addEventListener("tap", backHome)
end

function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- Code here runs when the scene is still off screen (but is about to come on screen)

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