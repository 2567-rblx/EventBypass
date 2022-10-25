-- Badge: Gold Rush Kid Item: Denim Jacket - George Ezra
for i, inst in ipairs(game:GetService("Workspace").Hub.Puzzle.Pieces:GetChildren()) do
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer("PickupItem", tostring(inst.Name))
end

-- Badge: Time Flies By Item: Album Shirt - George Ezra
game:GetService("ReplicatedStorage").RemoteEvent:FireServer("awardTimeTrail")
game:GetService("ReplicatedStorage").RemoteEvent:FireServer("awardTimeTrail")
game:GetService("ReplicatedStorage").RemoteEvent:FireServer("awardTimeTrail")

-- Badge: George's Guitar Item: Guitar I - George Ezra
client.Character.HumanoidRootPart.CFrame = workspace.VerchShop.GuitarStand.Model[3].UpperTorso.CFrame
task.wait(0.5)
fireproximityprompt(workspace.VerchShop.GuitarStand.Model[3].UpperTorso.ProximityPrompt)

-- Badge: Welcome Aboard Item: The Conductor - George Ezra
firetouch(client.Character.HumanoidRootPart, workspace.Hub.VerchEntrance)