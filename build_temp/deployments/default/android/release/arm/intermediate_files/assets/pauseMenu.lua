-- Developed by ByteArt

pauseScene1 = director:createScene()

local continueButton
local exitButton

function continueGame(event)
	-- Switch to game scene
	switchToScene("game1")
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
continueButton = director:createSprite(director.displayCenterX, director.displayCenterY + 100, "textures/buttons/botonPauseMenuCont.png")
local atlas = continueButton:getAtlas()
local atlas_w, atlas_h = atlas:getTextureSize()
continueButton.xAnchor = 0.5
continueButton.yAnchor = 0.5
continueButton.xScale = 0.5
continueButton.yScale = 0.5
continueButton:addEventListener("touch", continueGame)

exitButton = director:createSprite(director.displayCenterX, director.displayCenterY , "textures/buttons/botonPauseMenuPause.png")
local atlas = exitButton:getAtlas()
local atlas_w, atlas_h = atlas:getTextureSize()
exitButton.xAnchor = 0.5
exitButton.yAnchor = 0.5
exitButton.xScale = 0.5
exitButton.yScale = 0.5
exitButton:addEventListener("touch", exitGame)