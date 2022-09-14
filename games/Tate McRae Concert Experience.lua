local events = game:GetService("ReplicatedStorage").OrchestraScenes.PSV.Events

events.AwardBadge:FireServer("Skydive")
events.AwardBadge:FireServer("Runner")
events.AwardBadge:FireServer("SONY")

events.LogFace:FireServer("Coy")
events.LogFace:FireServer("Red")
events.LogFace:FireServer("Unr")
events.LogFace:FireServer("Cap")

for i, inst in pairs(workspace:GetChildren()) do
	if string.find(inst.Name, "Token") then
		firetouch(client.Character.HumanoidRootPart, inst["Meshes/Token_Token_Base"])
	end
end