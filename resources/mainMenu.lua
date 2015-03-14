-- Developed by ByteArt
-- This is the main Menu

menuScene = director:createScene()

function gotoGame(event)
	switchToScene("sub")
end

-- Set Background
background = director:createSprite(director.displayCenterX, director.displayCenterY, "textures/backgrounds/backgroundMenu.jpg")
background.xAnchor = 0.5
background.yAnchor = 0.5
-- Fit background to screen size
local bg_width, bg_height = background:getAtlas():getTextureSize()
background.xScale = director.displayWidth / bg_width
background.yScale = director.displayHeight / bg_height



local y_pos = director.displayHeight / 3
playButton = director:createSprite(director.displayCenterX, director.displayCenterY, "textures/play.png")
playButton.xAnchor = 0.5
playButton.yAnchor = 0.5


playButton:addEventListener("touch", gotoGame)


-- Listener for exiting the game
system:addEventListener("exit", exit)
