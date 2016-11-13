---------------------------------s--------------------------------------------------------
--
-- main.lua





local Physics = require("physics")


Physics.start()




local sky = display.newImage( "sky.jpg", 250, 75 )
sky:scale( 1.5, 1.5 )


local grass = display.newImage( "grass.png", 197, 300)


local ninja = display.newImageRect("Ninja.JPG", 60 , 80)
ninja.x = 75
ninja.y = 260

Physics.addBody(grass, "static", {bounce = 0})

--giving ninja a physical body...
Physics.addBody(ninja, "dynamic", {radius = 20, bounce = 0})




local greenGuysheet = graphics.newImageSheet( "greenman.png", { width=128, height=128, numFrames=15 } )

-- play 15 frames every 500 ms
local instance2 = display.newSprite( greenGuysheet, {start=1, count=15, time=500 } )
instance2.x = 200
instance2.y = 260
instance2:play()





local function Jump()

	--work on decreasing air time by increasing gravity...
	ninja:applyLinearImpulse(0, -0.075, ninja.x, ninja.y)
	--Applying 0 force in the X direction and -0.75 in the Y direction. Y is negative because down is considered positive by the physics engine.
	--Apply force to the center of the ninja, hence ninja.x & ninja.y
end



ninja:addEventListener("tap", Jump)











