--[[
	Join this group to play the game; https://www.roblox.com/groups/14460818/Logitech-Song-Breaker-Awards#!/about
]]


-- Item: (GOLD) POP Keys Hat - Logitech
do
	local startFunc = require(game:GetService("ReplicatedStorage").Modules.World.Interactables.CoinHandler).Start
	local collectFunc = debug.getupvalue(startFunc, 3).Collect
	local coins = debug.getupvalue(startFunc, 4)

	for name, tbl in pairs(coins) do
		if tbl.obj and tbl.obj.Parent then
			collectFunc(tbl)
		end
	end
end


-- Item: (GOLD) Blue Yeti Shoulder Microphone - Logitech
for i, npc in ipairs(game:GetService("ReplicatedStorage")["Honoree_Hunt"].Hidden:GetChildren()) do-- So you are able to collect everyone
	npc.Parent = workspace["Honoree_Hunt"].Hidden
end

for i, npc in ipairs(workspace["Honoree_Hunt"].Hidden:GetChildren()) do
	local head = npc:FindFirstChild("Head", true)-- the head instance can move around

	client.Character.HumanoidRootPart.CFrame = head.CFrame
	task.wait(client:GetNetworkPing() + 0.1)
	fireproximityprompt(head:FindFirstChild("ProximityPrompt", true))
end


-- Item: (GOLD) Logitech StreamCam
for i, inst in ipairs(workspace.Interactables.SelfieCam:GetChildren()) do-- Remove players so it's easy to tell once a selfie has been taken
	if inst.Name == "Player" then
		inst:Destroy()
	end
end

client.Character.HumanoidRootPart.CFrame = workspace.Interactables.SelfieCam.Hitbox.CFrame
repeat-- Wait until a selfie has been taken
	task.wait()
until workspace.Interactables.SelfieCam:FindFirstChild("Player")


-- Item: (GOLD) Litra Glow Wingsuit - Logitech
local Network = require(game:GetService("ReplicatedStorage").SharedModules.Global).Network

for i, inst in ipairs(workspace.Interactables.CoasterCarts:GetDescendants()) do
	if inst.Name == "Seat" then
		client.Character.HumanoidRootPart.CFrame = inst.Parent.CFrame
		Network:FireServer("RollercoasterSit", inst)
	end
end