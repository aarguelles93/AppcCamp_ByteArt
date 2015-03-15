--[[
A grid game object
--]]

module(..., package.seeall)

require("class")
require("wg2")

-- Create the grid class
grid = inheritsFrom(baseClass)

-- Creates an instance of a new grid
function new(wg2s_wide, wg2s_high, max_wg2_types)
	local o = grid:create()
	grid:init(o, wg2s_wide, wg2s_high, max_wg2_types)
	return o
end

-- Initialise the grid
function grid:init(o, wg2s_wide, wg2s_high, max_wg2_types)
	-- Create grid of wg2 objects
	o.wg2sGrid = {}
	for x = 1, wg2s_wide do
		o.wg2sGrid[x] = {}
		for y = 1, wg2s_high do
			o.wg2sGrid[x][y] = wg2.new(math.random(max_wg2_types), (x - 1) * wg2.wg2ActualWidth, (y - 1) * wg2.wg2ActualHeight)
		end
	end	
end

-- Convert screen x, y to grid pos
function grid:screenToGrid(x, y)
	local grid_x = math.floor(x / wg2.wg2ActualWidth)
	local grid_y = math.floor(y / wg2.wg2ActualHeight)
	return grid_x + 1, grid_y + 1
end

-- Get wg2 at screen x, y
function grid:getwg2(x, y)
	local grid_x, grid_y = self:screenToGrid(x, y)
	return self.wg2sGrid[grid_x][grid_y]
end