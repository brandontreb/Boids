local Boid = require('Boid')

-- Define some limiting constants
MAX_FORCE = 1.75
MAX_SPEED = 2.0

-- Start our wanderer in the center

local wanderers = {}

function animate(event)	
	for i=1,#wanderers do
		local wanderer = wanderers[i]
		wanderer:wander()
		wanderer:run()
	end
end

function Main()
	math.randomseed( os.time() )
	
	for i=1,10 do
		local loc = Vector2D:new(display.contentWidth / 2,display.contentWidth / 2)
		local wanderer = Boid:new(loc,MAX_FORCE,MAX_SPEED)
		table.insert(wanderers,wanderer)
	end
	
	Runtime:addEventListener( "enterFrame", animate );
end

Main()