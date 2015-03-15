-- Developed by ByteArt

submenuScene = director:createScene()

local play1Button
local play2Button

function playSound()
	audio:stopStream()
	--audio:playSound("audio/magic1.mp3",false)
end

function gotoGame1( event )
	print("Go to game1")
	playSound()
	switchToScene("game1")	
end
function gotoGame2( event )
	print("Go to game2")
	playSound()
	switchToScene("game2")	
end
function gotoGame3( event )
	print("Go to game3")
	playSound()
	switchToScene("game3")
end

-- Create game background
local background = director:createSprite(director.displayCenterX, director.displayCenterY, "textures/backgrounds/backgroundSubmenu.jpg")
background.xAnchor = 0.5
background.yAnchor = 0.5
-- Fit background to screen size
local bg_width, bg_height = background:getAtlas():getTextureSize()
background.xScale = director.displayWidth / bg_width
background.yScale = director.displayHeight / bg_height

-- Create Start Game1 button
local x_pos = director.displayWidth*7 / 10
local y_pos = director.displayHeight*4 / 5
play1Button = director:createSprite(x_pos, y_pos, "textures/buttons/buttonG1.png")
play1Button.xAnchor = 0.5
play1Button.yAnchor = 0.5
play1Button.xScale = 0.5
play1Button.yScale = 0.5
play1Button:addEventListener("touch", gotoGame1)

-- Create Start Game2 button
y_pos = director.displayHeight*5 / 10
play2Button = director:createSprite(director.displayCenterX, y_pos, "textures/buttons/buttonG2.png")
play2Button.xAnchor = 0.5
play2Button.yAnchor = 0.5
play2Button.xScale = 0.5
play2Button.yScale = 0.5
play2Button:addEventListener("touch", gotoGame2)

-- Create Start Game3 button
x_pos = director.displayWidth*3 / 10
y_pos = director.displayHeight*2 / 10
play2Button = director:createSprite(x_pos, y_pos, "textures/buttons/buttonG3.png")
play2Button.xAnchor = 0.5
play2Button.yAnchor = 0.5
play2Button.xScale = 0.5
play2Button.yScale = 0.5
play2Button:addEventListener("touch", gotoGame3)

