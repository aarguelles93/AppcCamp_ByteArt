-- Developed by ByteArt

pauseScene2 = director:createScene()

local continueButton
local exitButton

function continueGame(event)
	-- Switch to game scene
	switchToScene("game2")
end
function exitGame(event)
	-- Switch to main men  scene
	switchToScene("sub")
end

-- Create game background
local background = director:createSprite(director.displayCenterX, director.displayCenterY, "textures/backgrounds/backgroundPause.jpg")
background.xAnchor = 0.5
background.yAnchor = 0.5
-- Fit background to screen size
local bg_width, bg_height = background:getAtlas():getTextureSize()
background.xScale = director.displayWidth / bg_width
background.yScale = director.displayHeight / bg_height

-- Create Continue Game button
continueButton = director:createSprite(director.displayCenterX, director.displayCenterY*1.3, "textures/buttons/botonPauseMenuCont.png")
local atlas = continueButton:getAtlas()
local atlas_w, atlas_h = atlas:getTextureSize()
continueButton.xAnchor = 0.5
continueButton.yAnchor = 0.5
continueButton.xScale = 1
continueButton.yScale = 1
continueButton:addEventListener("touch", continueGame)

exitButton = director:createSprite(director.displayCenterX, director.displayCenterY*0.7 , "textures/buttons/botonPauseMenuPause.png")
local atlas = exitButton:getAtlas()
local atlas_w, atlas_h = atlas:getTextureSize()
exitButton.xAnchor = 0.5
exitButton.yAnchor = 0.5
exitButton.xScale = 1
exitButton.yScale = 1
exitButton:addEventListener("touch", exitGame)