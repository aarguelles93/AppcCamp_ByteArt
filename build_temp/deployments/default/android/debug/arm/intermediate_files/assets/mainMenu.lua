-- Developed by ByteArt
-- This is the main Menu

menuScene = director:createScene()

local label= director:createLabel(director.displayCenterX, (director.displayHeight - 20), 'mainMenu')
print(director.displayHeight - label.yText)
local playButton


function gotoGame(event)
	switchToScene("sub")
end

local y_pos = director.displayHeight / 3
playButton = director:createSprite(director.displayCenterX, director.displayCenterY, "textures/play.png")
playButton.xAnchor = 0.5
playButton.yAnchor = 0.5


playButton:addEventListener("touch", gotoGame)
