-- Box containing an option to choose from the word bank. Contains right and wrong answers.

module(..., package.seeall)

-- OO functions
require("class")
require("game")

-- Create the wg2 class
wg2 = inheritsFrom(baseClass)

-- Constants
wg2ActualWidth = director.displayWidth / game.wg2CountX	-- The actual device coordinate width of the wg2
wg2ActualHeight = wg2ActualWidth						            -- The actual device coordinate height of the wg2

-- Creates an instance of a new word
function new(type, x, y)
	local o = wg2:create()
	wg2:init(o, type, x, y)
	return o
end

-- Initialise the wg2
function wg2:init(o, type, x, y)
  -- Create a sprite
	o.sprite = director:createSprite(x, y, "textures/wg2" .. type .. ".png")
  
  -- Calculate scale based on sprites texture size
  o.sprite.xScale = wg2ActualWidth / o.sprite.w
  o.sprite.yScale = wg2ActualHeight / o.sprite.h
	o.type = type
end