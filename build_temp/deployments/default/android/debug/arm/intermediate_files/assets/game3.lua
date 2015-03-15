-- Developed by ByteArt
-- Game 3


game3Scene = director:createScene()


-- Create game background
local background = director:createSprite(director.displayCenterX, director.displayCenterY, "textures/backgrounds/backgroundG3.jpg")
background.xAnchor = 0.5
background.yAnchor = 0.5
-- Fit background to screen size
local bg_width, bg_height = background:getAtlas():getTextureSize()
background.xScale = director.displayWidth / bg_width
background.yScale = director.displayHeight / bg_height


function pauseGame3(event)
	if (event.phase == "ended") then
	    -- Switch to the pause scene
	    switchToScene("pause3")
    end
end

-- Create pause menu sprite (docked to top of screen)
local pause_sprite = director:createSprite( {
	x = director.displayCenterX*1.9, y = 0, 
	xAnchor = 0.5, 
	source = "textures/buttons/buttonPause3.png"
  })
sprite_w, sprite_h = pause_sprite:getAtlas():getTextureSize()
pause_sprite.y = director.displayHeight - sprite_h
pause_sprite:addEventListener("touch", pauseGame3)