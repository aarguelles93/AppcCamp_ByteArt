-- Developed by ByteArt
-- This is the main .lua file. It is the root file to the other parts of the app

-- Set up 'exit' event listener to allow Ctrl-R functionality
function exit(event)
	dbg.print("unrequiring")	
	unrequire("game1")	
	unrequire("mainMenu")
	unrequire("pauseMenu")
end

system:addEventListener("exit", exit)


require("game1")
require("pauseMenu")
require("subMenu")
require("mainMenu")
require("splash")



function switchToScene(scene_name)
	if (scene_name == "game1") then
		director:moveToScene(game1Scene, {transitionType="pageTurn", transitionTime=1})
	elseif (scene_name == "game2") then
		director:moveToScene(game2Scene, {transitionType="pageTurn", transitionTime=1})	
	elseif (scene_name == "game3") then
		director:moveToScene(game3Scene, {transitionType="pageTurn", transitionTime=1})
	elseif (scene_name == "main") then
		director:moveToScene(menuScene, {transitionType="pageTurn", transitionTime=1})
	elseif (scene_name == "pause") then
		director:moveToScene(pauseScene, {transitionType="fade", transitionTime=0.3})
	elseif (scene_name == "sub") then
		director:moveToScene(submenuScene, {transitionType="fade", transitionTime=1})
	end
end

