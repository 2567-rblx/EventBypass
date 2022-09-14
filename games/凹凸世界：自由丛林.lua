-- Getting Coins
for i=1, 50 do
	for i2, inst in pairs(workspace.obby.Badge:GetChildren()) do
		firetouch(client.Character.HumanoidRootPart, inst:FindFirstChildOfClass("MeshPart"))
	end
	task.wait()
end
task.wait(0.3)

-- Buying items
for i=1, 4 do
	game:GetService("ReplicatedStorage").Project.RemoteEvent.ControlMessageEvent:FireServer(2, {2, i})
end