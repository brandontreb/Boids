local Boid = require('Boid')

-- Define some limiting constants
MAX_FORCE = 1.75
MAX_SPEED = 2.0

-- Start our wanderer in the center
local loc = Vector2D:new(display.contentWidth / 2,display.contentWidth / 2)
local wanderer = Boid:new(loc,MAX_FORCE,MAX_SPEED)

function animate(event)	
	wanderer:wander()
	wanderer:run()
end

function Main()
	math.randomseed( os.time() )
	Runtime:addEventListener( "enterFrame", animate );
end

Main()