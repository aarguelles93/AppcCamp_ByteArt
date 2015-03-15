-- Developed by ByteArt
-- This is the main Menu

menuScene = director:createScene()

local playButton


audio:playStream("audio/POL-spiritdance.mp3", true)

function gotoSub(event)
	switchToScene("sub")	
end

-- Set Background
local background = director:createSprite(director.displayCenterX, director.displayCenterY, "textures/backgrounds/backgroundMenu.jpg")
background.xAnchor = 0.5
background.yAnchor = 0.5
-- Fit background to screen size
local bg_width, bg_height = background:getAtlas():getTextureSize()
background.xScale = director.displayWidth / bg_width
background.yScale = director.displayHeight / bg_height

playButton = director:createSprite(director.displayCenterX, director.displayCenterY, "textures/buttons/buttonStart.png")
playButton.xAnchor = 0.5
playButton.yAnchor = 0.5
playButton.xScale = 0.5
playButton.yScale = 0.5
playButton:addEventListener("touch", gotoSub)


-- Listener for exiting the game
system:addEventListener("exit", exit)
