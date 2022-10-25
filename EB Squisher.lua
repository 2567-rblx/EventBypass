--[[
Info:
1. You don't need to use minification it will just be a bit bigger
2. You will need to copy the games folder into your workspace directory
3. This will only create the 'local games = {...}'
]]

local gameScripts = listfiles("./games")
local websock = syn.websocket.connect("ws://localhost:1638")

local function MinifyScript(script)
	websock:Send("minify;;" .. script)

	local minifyedScript
	local onMessage; onMessage = websock.OnMessage:Connect(function(msg)-- Waiting for message
		warn("Got Minifyed Script")
		onMessage:Disconnect()
		minifyedScript = msg
	end)

	repeat task.wait() until minifyedScript ~= nil
	return minifyedScript
end

warn("-- Starting --")
local games = {"{\n"}

for i, filePath in ipairs(gameScripts) do
	local gameId, gameName = string.match(filePath, "(%d*);;([^;]*)%.lua")-- Regex: (\d*);;([^;]*)\.lua

	print("Doing:", gameId, gameName)
	games[#games+1] = string.format("[%s] = {'%s', [===[%s]===]},\n",
		gameId,
		string.gsub(gameName, "'", "\\'"),
		MinifyScript(readfile(filePath))
	)
end


games[#games+1] = "\n}"
writefile("EB-Squished.lua", table.concat(games))
warn("-- Finished --")
