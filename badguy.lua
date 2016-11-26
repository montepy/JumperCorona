local badguy = {}

local Physics = require("physics")
Physics.start()






function badguy.hello()
	print("badguy - hello...")
end


function badguy.drawBadGuy()

	obstacle = {}

	obstacle[1] = display.newImage( "asteroid.png")
	obstacle[1].x = 300
	obstacle[1].y = 275 
	obstacle[1]:scale(.7, .7)
	Physics.addBody(obstacle[1], "dynamic", {radius = 20, bounce = 0})

	obstacle[2] = display.newImage( "asteroid.png")
	obstacle[2].x = 400
	obstacle[2].y = 275
	obstacle[2]:scale(.7, .7)
	Physics.addBody(obstacle[2], "dynamic", {radius = 20, bounce = 0})

	obstacle[3] = display.newImage( "asteroid.png")
	obstacle[3].x = 500
	obstacle[3].y = 275
	obstacle[3]:scale(.7, .7)
	Physics.addBody(obstacle[3], "dynamic", {radius = 20, bounce = 0})


end



function badguy.move()

--get badguy to spawn back at start after they cross a certain x value and
--game should restart upon contact	
	

	for i = 1, #obstacle, 1 do
		if(obstacle[i].x > 100) then
			obstacle[i]:setLinearVelocity( -100, 0 )
		else
			obstacle[i]:setLinearVelocity( 0, 0 )
		end
	end
end




function badguy.sayHello()
	print("badguy - Hello....")
end


return badguy