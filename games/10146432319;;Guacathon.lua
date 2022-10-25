local char = client.Character or client.CharacterAdded:Wait()
local Network = require(game:GetService("ReplicatedStorage").NEXUS).GetModule("Network")

-- Badge: Concert Souvenir Item: Spaceship Companion
char:WaitForChild("HumanoidRootPart", 10).CFrame = workspace.XWing.Display.CFrame
task.wait(0.5)
fireproximityprompt(workspace.XWing.Display.ProximityPrompt)

-- Badges: Token Quests Items: Walkin' Poncho, Change the Ref TShirt, Sword Pack
Network:FireServer("REQ_HOOPS_REWARDS", 5000)
game:GetService("TeleportService"):Teleport(game.PlaceId)