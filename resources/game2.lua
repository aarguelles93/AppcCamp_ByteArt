-- Developed by ByteArt
-- Game2

game2Scene = director:createScene()

-- Create game background
local background = director:createSprite(director.displayCenterX, director.displayCenterY, "textures/backgrounds/backgroundG2.jpg")
background.xAnchor = 0.5
background.yAnchor = 0.5
-- Fit background to screen size
local bg_width, bg_height = background:getAtlas():getTextureSize()
background.xScale = director.displayWidth / bg_width
background.yScale = director.displayHeight / bg_height

function pauseGame2(event)
	if (event.phase == "ended") then
	    -- Switch to the pause scene
	    switchToScene("pause2")
    end
end

-- Create pause menu sprite (docked to top of screen)
local pause_sprite = director:createSprite( {
	x = director.displayCenterX*1.9, y = 0, 
	xAnchor = 0.5, 
	source = "textures/buttons/buttonPause2.png"
  })
sprite_w, sprite_h = pause_sprite:getAtlas():getTextureSize()
pause_sprite.y = director.displayHeight - sprite_h
pause_sprite:addEventListener("touch", pauseGame2)
print("Estoy en lvl 2")

-- Create Start Game1 button
local x_pos = director.displayWidth/2
local y_pos = director.displayHeight*0.75
imgWord = director:createSprite(x_pos, y_pos, "textures/buttons/skyscraper.png")
imgWord.xAnchor = 0.5
imgWord.yAnchor = 0.5
imgWord.xScale = 1
imgWord.yScale = 1

-- =====

-- Create Start Game1 button
x_pos = director.displayWidth*0.25
y_pos = director.displayHeight/2
imgWord = director:createSprite(x_pos, y_pos, "textures/buttons/w1.png")
imgWord.xAnchor = 0.5
imgWord.yAnchor = 0.5
imgWord.xScale = 1
imgWord.yScale = 1

-- Create Start Game1 button
x_pos = director.displayWidth*0.75
y_pos = director.displayHeight/2
imgWord = director:createSprite(x_pos, y_pos, "textures/buttons/w2.png")
imgWord.xAnchor = 0.5
imgWord.yAnchor = 0.5
imgWord.xScale = 1
imgWord.yScale = 1

-- Create Start Game1 button
x_pos = director.displayWidth*0.25
y_pos = director.displayHeight*1/4
imgWord = director:createSprite(x_pos, y_pos, "textures/buttons/w3.png")
imgWord.xAnchor = 0.5
imgWord.yAnchor = 0.5
imgWord.xScale = 1
imgWord.yScale = 1

-- Create Start Game1 button
x_pos = director.displayWidth*0.75
y_pos = director.displayHeight*1/4
imgWord = director:createSprite(x_pos, y_pos, "textures/buttons/w4.png")
imgWord.xAnchor = 0.5
imgWord.yAnchor = 0.5
imgWord.xScale = 1
imgWord.yScale = 1

