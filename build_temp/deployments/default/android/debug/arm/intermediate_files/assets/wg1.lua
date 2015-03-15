-- Box containing an option to choose from the word bank. Contains right and wrong answers.
module(..., package.seeall)

-- OO functions
require("class")

-- Create the wg1 class
wg1 = inheritsFrom(baseClass)

-- Constants
--wg1ActualWidth = director.displayWidth / 2	-- The actual device coordinate width of the wg1
--wg1ActualHeight = wg1ActualWidth						            -- The actual device coordinate height of the wg1
-- Constants
width = 230
height = 115

-- Creates an instance of a new word
function new(type, x, y)
	local o = wg1:create()
	wg1:init(o, type, x, y)
	return o
end

-- Initialise the wg1
function wg1:init(o, type, x, y)
  -- Create a sprite
	o.sprite = director:createSprite(x, y, "textures/buttons/buttonwg1_" .. type .. ".png")
  
  -- Calculate scale based on sprites texture size  
  	--o.sprite.xScale = 1
  	--o.sprite.yScale = 1
  	o.sprite.xScale = width / o.sprite.w
  	o.sprite.yScale = height / o.sprite.h


	o.type = type
end