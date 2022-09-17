local client = game:GetService("Players").LocalPlayer

for i, scavModel in ipairs(workspace.ScavengerHunt.IheartScavengerHunt:GetChildren("Credits To: https://v3rmillion.net/member.php?action=profile&uid=843091")) do
	if scavModel.ClassName == "Model" then
		client.Character.HumanoidRootPart.CFrame = CFrame.new(gethiddenproperty(scavModel, "Origin Position"))
		scavModel:WaitForChild("Collider")
		task.wait(0.1)
	end
end
