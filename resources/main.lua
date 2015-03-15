-- Developed by ByteArt
-- This is the main .lua file. It is the root file to the other parts of the app

-- Set up 'exit' event listener to allow Ctrl-R functionality
function exit(event)
	dbg.print("unrequiring")	
	unrequire("game1")
	unrequire("game2")
	unrequire("game3")
	unrequire("mainMenu")
	unrequire("pauseMenu")
end

system:addEventListener("exit", exit)


require("game1")
require("game2")
require("game3")
require("pauseMenu")
require("pauseMenu2")
require("pauseMenu3")
require("subMenu")
require("mainMenu")
require("splash")




function switchToScene(scene_name)
	if (scene_name == "game1") then
		director:moveToScene(game1Scene, {transitionType="fade", transitionTime=0.5})
	elseif (scene_name == "game2") then
		director:moveToScene(game2Scene, {transitionType="fade", transitionTime=0.5})	
	elseif (scene_name == "game3") then
		director:moveToScene(game3Scene, {transitionType="fade", transitionTime=0.5})
	elseif (scene_name == "main") then
		director:moveToScene(menuScene, {transitionType="fade", transitionTime=0.5})
	elseif (scene_name == "pause1") then
			director:moveToScene(pauseScene1, {transitionType="fade", transitionTime=0.5})
	elseif (scene_name == "pause2") then
		director:moveToScene(pauseScene2, {transitionType="fade", transitionTime=0.3})
		elseif (scene_name == "pause3") then
		director:moveToScene(pauseScene3, {transitionType="fade", transitionTime=0.3})
	elseif (scene_name == "sub") then
		director:moveToScene(submenuScene, {transitionType="fade", transitionTime=0.5})
	end
end

