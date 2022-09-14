--[[
Extra Info:
	Private Server is required

Badges:
	2124704923; Imagination Core = 6531967293; Imagination Core
	2124704922; Bloxy Builder’s Helmet =
		6531962725; Bloxy Builder’s Helmet
		6531997736; Construction Outfit Shirt
		6532001141; Construction Outfit Pants
	2124707995; JParty Plushie = 6555172461; JParty Plushie
	2124704925; Award-Winning Smile = 6531983163; Award-Winning Smile
]]

-- Get 2124704923
for i, scavItem in ipairs(workspace.Scenes.Lobby.Map.ScavengerHunt:GetChildren()) do
	client.Character.HumanoidRootPart.CFrame = scavItem:FindFirstChild(scavItem.Name).CFrame
	task.wait(0.25)
	game:GetService("ReplicatedStorage").Events.RemoteEvents.CollectedScavengerItem:FireServer(scavItem.Name, scavItem:FindFirstChild(scavItem.Name))
end

-- Get 2124704922
game:GetService("ReplicatedStorage").Events.RemoteEvents.CollectOutfit:FireServer()

-- Get 2124707995
for i=1, 100 do
	game:GetService("ReplicatedStorage").Events.RemoteEvents.ClawMachine:FireServer()
end

-- Get 2124704925
while true do
	client.Character.HumanoidRootPart.CFrame = workspace.Persistant.Elevator.CFrame
	game:GetService("ReplicatedStorage").Events.RemoteEvents.Elevator:FireServer(client.Character.HumanoidRootPart, true)

	repeat task.wait() until client.Character.Head.Transparency == 1
	repeat task.wait() until client.Character.Head.Transparency == 0

	task.wait(2)
end