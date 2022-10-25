for i, scavengerHunt in ipairs(workspace.ScavengerHunt:GetChildren()) do
	pcall(function()-- Cause I can't be fucked to check if it still works
		for i2, scavModel in ipairs(scavengerHunt:GetChildren("Credits To: https://v3rmillion.net/member.php?action=profile&uid=843091")) do
			if scavModel.ClassName == "Model" then
				client.Character.HumanoidRootPart.CFrame = CFrame.new(gethiddenproperty(scavModel, "Origin Position"))
				scavModel:WaitForChild("Collider")
				task.wait(0.1)
			end
		end
	end)
end