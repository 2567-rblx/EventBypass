for i, inst in ipairs(workspace.ScavengerHunt.Step1.Objects:GetChildren()) do
	if inst.ClassName == "Model" then
		firetouch(client.Character.HumanoidRootPart, inst.Root)
	end
end