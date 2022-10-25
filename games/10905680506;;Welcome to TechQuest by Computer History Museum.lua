-- Using file system since it's alot easier than strings
if not game.IsLoaded then game.Loaded:Wait() end


local function CreateFolder(path)
	if isfolder(path) == false then
		makefolder(path)
	end
end

CreateFolder("./EventBypass")
CreateFolder("./EventBypass/TechQuest")


-- 10905680506
writefile("./EventBypass/TechQuest/Hub.lua", [=[
	-- PlaceId: 10905680506

	if not game.IsLoaded then
		game.Loaded:Wait()
	end

	local Network = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Core"):WaitForChild("Network"))
	task.wait(0.5)


	Network:FireServer("PurchaseItem", "Pets", 1)
	Network:FireServer("ChallengeCheck", "Merch")
	Network:FireServer("ChallengeCheck", "Pet")

	delfolder("./EventBypass/TechQuest")
	--[[
	syn.queue_on_teleport(readfile("./EventBypass/TechQuest/Community.lua"))
	Teleport(10913336500)
	]]
]=])

-- 10913336500
writefile("./EventBypass/TechQuest/Community.lua", [=[
	-- PlaceId: 10913336500

	if not game.IsLoaded then
		game.Loaded:Wait()
	end
	
	local function GetPossibleServer(placeId)
		local response = syn.request({
			Url = "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?limit=100"
		})
	
		local data = game:GetService("HttpService"):JSONDecode(response.Body).data
	
		for i, serverData in ipairs(data) do
			if serverData.maxPlayers > serverData.playing then
				return serverData.id
			end
		end
	end
	
	local function Teleport(placeId)
		game:GetService("TeleportService"):TeleportToPlaceInstance(placeId, GetPossibleServer(placeId))
	end
	
	local Network = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Core"):WaitForChild("Network"))
	task.wait(0.5)
	
	
	
	for i, task in ipairs(game:GetService("ReplicatedStorage").Modules.TaskHandler.Tasks:GetChildren()) do
		Network:FireServer("TaskCompleted", task.Name)
	end
	
	syn.queue_on_teleport(readfile("./EventBypass/TechQuest/Ocean.lua"))
	Teleport(10913281132)
]=])

-- 10913281132
writefile("./EventBypass/TechQuest/Ocean.lua", [=[
	-- PlaceId: 10913281132

	if not game.IsLoaded then
		game.Loaded:Wait()
	end

	local function GetPossibleServer(placeId)
		local response = syn.request({
			Url = "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?limit=100"
		})

		local data = game:GetService("HttpService"):JSONDecode(response.Body).data

		for i, serverData in ipairs(data) do
			if serverData.maxPlayers > serverData.playing then
				return serverData.id
			end
		end
	end

	local function Teleport(placeId)
		game:GetService("TeleportService"):TeleportToPlaceInstance(placeId, GetPossibleServer(placeId))
	end

	local Network = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Core"):WaitForChild("Network"))
	task.wait(0.5)



	for i, task in ipairs(game:GetService("ReplicatedStorage").Modules.TaskHandler.Tasks:GetChildren()) do
		Network:FireServer("TaskCompleted", task.Name)
	end
	Network:FireServer("RequestBadge")

	syn.queue_on_teleport(readfile("./EventBypass/TechQuest/Rainforest.lua"))
	Teleport(10913378955)
]=])

-- 10913378955
writefile("./EventBypass/TechQuest/Rainforest.lua", [=[
	-- PlaceId: 10913378955

	if not game.IsLoaded then
		game.Loaded:Wait()
	end

	local function GetPossibleServer(placeId)
		local response = syn.request({
			Url = "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?limit=100"
		})

		local data = game:GetService("HttpService"):JSONDecode(response.Body).data

		for i, serverData in ipairs(data) do
			if serverData.maxPlayers > serverData.playing then
				return serverData.id
			end
		end
	end

	local function Teleport(placeId)
		game:GetService("TeleportService"):TeleportToPlaceInstance(placeId, GetPossibleServer(placeId))
	end

	local Network = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Core"):WaitForChild("Network"))
	task.wait(0.5)



	for i, task in ipairs(game:GetService("ReplicatedStorage").Modules.TaskHandler.Tasks:GetChildren()) do
		Network:FireServer("TaskCompleted", task.Name)
	end

	syn.queue_on_teleport(readfile("./EventBypass/TechQuest/Hub.lua"))
	Teleport(10905680506)
]=])


local function GetPossibleServer(placeId)
	local response = syn.request({
		Url = "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?limit=100"
	})

	local data = game:GetService("HttpService"):JSONDecode(response.Body).data

	for i, serverData in ipairs(data) do
		if serverData.maxPlayers > serverData.playing then
			return serverData.id
		end
	end
end

local function Teleport(placeId)
	game:GetService("TeleportService"):TeleportToPlaceInstance(placeId, GetPossibleServer(placeId))
end


syn.queue_on_teleport(readfile("./EventBypass/TechQuest/Community.lua"))
Teleport(10913336500)