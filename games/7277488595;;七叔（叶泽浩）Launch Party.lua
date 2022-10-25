--[[
Badges:
	2124825676; Cyber Rider Outfit =
		7466099341; Cyber Rider Shirt
		7466105822; Cyber Rider Pants
	2124827224; Cyber Rider Helmet = 7466085838; Cyber Rider Helmet
	2124827226; Blue Space Buns = 7466083397; Blue Space Buns
	2124827225; Red Punk Mohawk = 7466081713; Red Punk Mohawk
]]

char.HumanoidRootPart.CFrame = workspace.ObstacleCourse.ObstacleEnd.Part.CFrame
task.wait(0.5)


while true do
	if tonumber(client.PlayerGui.Shop.Background.Counter.CoinCount.Text) > 3500 then break end

	firetouch(char.HumanoidRootPart, workspace.ObstacleCourse.ObstacleEntries.Part)
	firetouch(char.HumanoidRootPart, workspace.ObstacleCourse.ObstacleEnd.Part)
	task.wait(0.05)
end


-- Buying Items
while true do
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer("PurchaseWithCoins", "clothing1")-- 2124825676
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer("PurchaseWithCoins", "accessory12")-- 2124827225
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer("PurchaseWithCoins", "accessory13")-- 2124827226
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer("PurchaseWithCoins", "accessory14")-- 2124827224
	task.wait(0.25)
end