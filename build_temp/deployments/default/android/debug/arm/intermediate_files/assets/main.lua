-- Developed by ByteArt
-- This is the main .lua file. It is the root file to the other parts of the app
require("game1")
require("pauseMenu")
require("subMenu")
require("mainMenu")
require("splash")

audio:playStream("audio/POL-spiritdance.mp3", true)

function switchToScene(scene_name)
	if (scene_name == "game") then
		director:moveToScene(game.gameScene, {transitionType="pageTurn", transitionTime=0.5})
	elseif (scene_name == "main") then
		director:moveToScene(menuScene, {transitionType="pageTurn", transitionTime=0.5})
	elseif (scene_name == "pause") then
		director:moveToScene(pauseScene, {transitionType="pageTurn", transitionTime=0.5})
	elseif (scene_name == "sub") then
		director:moveToScene(submenuScene)
	end
end

