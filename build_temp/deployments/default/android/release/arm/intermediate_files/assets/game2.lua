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
