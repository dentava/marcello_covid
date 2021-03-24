-- Classe relativa al personaggio marcello

local fx = require( "com.ponywolf.ponyfx" )
local composer = require( "composer" )


local marcello={}


-- Creazione di marcello è inserire i personaggi
function marcello.new(instance, options)
    local scene = composer.getScene( composer.getSceneName( "current" ) )
    instance.isVisible = false
	local parent = instance.parent
	local x, y = instance.x, instance.y
end