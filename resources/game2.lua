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

module(..., package.seeall)

-- Global constants
maxgmw2Types = 1				-- Maximum different types of gmw2s
gmw2CountX = 2					-- Total columns in gmw2 grid
gmw2CountY = 2					-- Total rows in gmw2 grid
fontHeight = 15										-- Pixel height of font
fontDesignWidth = 480							-- Font was designed to be displayed on a 320 wide screen
graphicDesignWidth = 720					-- Graphics were designed to be displayed on a 768 wide screen

require("gridg2")

-- Font is correct size on 320 wide screen so we scale to match native screen size
fontScale = director.displayWidth / fontDesignWidth
-- Graphics are designed for 768 wide screen so we scale to native screen size
graphicsScale = director.displayWidth / graphicDesignWidth	
-- The actual pixel height of the font
actualFontHeight = fontHeight * fontScale


-- Create gmw2s grid
gmw2sGrid = gridg2.new(gmw2CountX, gmw2CountY, maxgmw2Types)

-- Touch event handler (called when the user touches the screen)
local touch = function(event)
	if (director:getCurrentScene() == gameScene and event.phase == "ended") then
		if (event.y < gmw2CountY * gmw2.gmw2ActualHeight) then
			-- Get tapped grid gmw2
			local tappedgmw2 = gmw2sGrid:getgmw2(event.x, event.y)
			-- Create a tween that scales the gmw2 up and down
			tween:to(tappedgmw2.sprite, {
				y=tappedgmw2.sprite.y + 10, 
				time=0.25, 
				mode="mirror"
				} )
		end
	end
end
-- Add system event touch handler
system:addEventListener("touch", touch)


-- Pause game event handler (called by pauselabel)
function pauseGame(event)
	if (event.phase == "ended") then
    -- Switch to the pause scene
    switchToScene("pause")
  end
end

-- Create pause menu sprite (docked to top of screen)
local pause_sprite = director:createSprite( {
  x = director.displayCenterX, y = 0, 
  xAnchor = 0.5, 
  xScale = graphicsScale, 
  yScale = graphicsScale, 
  source = "textures/pause_icon.png"
  } )
sprite_w, sprite_h = pause_sprite:getAtlas():getTextureSize()
pause_sprite.y = director.displayHeight - sprite_h * pause_sprite.yScale
pause_sprite:addEventListener("touch", pauseGame)

