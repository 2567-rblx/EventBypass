--[[
Game ID: 6704278765

Badges:
	2124918254; Out Of Orbit = 9128147114; Dolo Tonight Backpack
]]

-- Getting 2124918254
while true do
	for i, inst in pairs(workspace:GetChildren()) do
		if inst.Name == "Eye" then
			char.HumanoidRootPart.CFrame = inst.CFrame
			task.wait(0.1)
		end
	end
	task.wait()
end