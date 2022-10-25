local client = game:GetService("Players").LocalPlayer
local char = client.Character or client.CharacterAdded:Wait()

local function firetouch(toucher, toTouch)
	firetouchinterest(toucher, toTouch, 0)
	firetouchinterest(toucher, toTouch, 1)
end


for i, inst in ipairs(workspace["Trivia Hall"].TriviaReward:GetChildren()) do
	if inst:FindFirstChild("TouchInterest") then
		firetouch(char.HumanoidRootPart, inst)
	end
end


for IDoN0t, model in ipairs(workspace.Scavenger:GetChildren()) do
	local bolt = model:FindFirstChildWhichIsA("MeshPart")

	if bolt then
		firetouch(char.HumanoidRootPart, bolt)
		task.wait(0.05)
	end
end


syn.queue_on_teleport([=[
	if not game.IsLoaded then
		game.Loaded:Wait()
	end
	
	--game:GetService("ReplicatedStorage"):WaitForChild("ExplosionEvent"):FireServer(workspace:WaitForChild("Destructable"):WaitForChild("Model"):WaitForChild("Part"), 10000)
	game:GetService("ReplicatedStorage"):WaitForChild("TeleportEvent"):FireServer()
]=])
game:GetService("TeleportService"):Teleport(10912088012)