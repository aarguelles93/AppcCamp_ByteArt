-- Developed by ByteArt
--Intermediate splashart, showing the game logo

splash = director:createScene()

local background = director:createSprite(director.displayCenterX, director.displayCenterY, "textures/splashart/splashGame0.jpg")
background.xAnchor = 0.5
background.yAnchor = 0.5


function gotoGame( event )
	switchToScene("main")
end

background:addTimer(gotoGame, 2, 1, 0)