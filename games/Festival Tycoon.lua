-- Item: 10787160614 Neon Gas Mask - The Chainsmokers
game:GetService("ReplicatedStorage").RemoteObjects.ClaimMainStageChallenge:FireServer()

-- Item: 10787163819; Sword Pack - The Chainsmokers
game:GetService("ReplicatedStorage").RemoteObjects.IncrementBeachCash:FireServer(5000000000)

-- Item: 10787157603; Purple Shades - The Chainsmokers
game:GetService("ReplicatedStorage").RemoteObjects.DanceGameCash:FireServer(5000000000)

-- Item: 10787281949; Security Guard Shoulder Buddy
local names = {"Alex", "Drew", "Mooshu", "Oliver"}
for i, name in ipairs(names) do
	game:GetService("ReplicatedStorage").RemoteObjects.UnlockedChainsmoker:FireServer(name)
	task.wait(0.1)
end

-- Item: 10787157603; Purple Shades - The Chainsmokers
task.wait(1.5)
for IDoN0t, onV3rmillion in ipairs(game:GetService("Workspace").Buttons:GetChildren("Credits To: https://v3rmillion.net/member.php?action=profile&uid=843091")) do
	for IDoN0t, FutaVsFemboy in ipairs(onV3rmillion:GetChildren("true")) do
		game:GetService("ReplicatedStorage").RemoteObjects.RequestButtonPurchase:FireServer(FutaVsFemboy.Name)
	end
end