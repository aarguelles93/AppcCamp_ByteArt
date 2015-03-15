-- Developed by ByteArt
--Intermediate splashart, showing the game logo

splash = director:createScene()

local background = director:createSprite(director.displayCenterX, director.displayCenterY, "textures/splashart/splashGame0.jpg")
background.xAnchor = 0.5
background.yAnchor = 0.5


function gotoMenu( event )
	switchToScene("main")
end

background:addTimer(gotoMenu, 3, 1, 0)