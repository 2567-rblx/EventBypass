-- Badge: Where Are The Shards? Item: Circlet of Patience
firetouch(client.Character.HumanoidRootPart, workspace.Scavenger.Circlet)

-- Badge: Circlet of Patience Item : Fragmented Top Hat
for i, inst in ipairs(workspace.CubePieces:GetChildren()) do
	client.Character.HumanoidRootPart.CFrame = inst.CFrame
	task.wait(0.2)

	repeat
		firetouch(client.Character.HumanoidRootPart, inst)
		task.wait(0.05)
	until client.Character.Cube[inst.Name].Transparency == 0
end

-- Badge: A Timeless Hat Item: Golden Bucket Hat
client.Character.HumanoidRootPart.CFrame = CFrame.new(-5.541287422180176, 23.644060134887695, -104.40755462646484)
--WaitUntilBadge("A Timeless Hat")

-- Badge: Thinking Horns Item: Gold 'n' White Curved Horns
game:GetService("TeleportService"):Teleport(game.PlaceId)