local Network = require(game:GetService("ReplicatedStorage").Modules.Core.Network)

-- Doesn't give anything I think but eh
for i, inst in ipairs(workspace.ScavengerHunt:GetDescendants()) do
	if inst:IsA("MeshPart") then
		firetouch(client.Character.HumanoidRootPart, inst)
	end
end


-- Badge: Fancy Feet Item: Cica Gold Jetpack
for i=1, 20 do
	Network:FireServer("BreakdanceHit", true, false)
end


-- Badge: Parkour Master Item: Desert Boot Headphones
Network:FireServer("PARKOUR_QUICK_START")
Network:FireServer("updateMinigameStateOnServer", 2)
Network:FireServer("updateMinigameStateOnServer", 1)
task.wait(1)
Network:FireServer("ExitCourse")


-- Badge: Cicaverse Champion Item: Clarks Shoelace Wings
Network:FireServer("breakdanceEnd", 50000)


-- Badge: BMX Enthusiast Item: Shoebox Backpack
for i=1, 6 do
	Network:FireServer("BMX_REQUEST_QUICK_START")
	task.wait(2.5)
end
local bmxChar; do
	repeat
		for i, char in ipairs(workspace.BikeSystem.Characters:GetChildren()) do
			if char:FindFirstChildOfClass("Part").Name == client.Name then
				bmxChar = char:FindFirstChildOfClass("Part")
				break
			end
		end
		task.wait()
	until bmxChar ~= nil
end

task.wait(7)-- waiting for race to start
for lap=1, 3 do-- loop through checkpoints for 3 laps
	warn(lap)
	for cp=1, #workspace.BikeSystem.Checkpoints:GetChildren() do-- checkpoints
		firetouch(bmxChar, workspace.BikeSystem.Checkpoints[cp])
		print(cp)
		task.wait(0.1)
	end

	firetouch(bmxChar, workspace.BikeSystem.Checkpoints[1])
end