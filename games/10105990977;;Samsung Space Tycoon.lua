-- Credit: https://v3rmillion.net/member.php?action=profile&uid=2607090

local badges = {
	[2127224809] = "Shoulder-Mounted Wing",
	[2127224823] = "Lemonade Hat",
	[2127224806] = "Alien Parrot",
	[2127234743] = "Sparky Headset",
	[2127234749] = "Z Flip Backpack"
}

for badgeID, name in pairs(badges) do
	game:GetService("ReplicatedStorage").Shop.Remotes.Cosmetics.PurchaseCosmeticsRequest:FireServer({
		BadgeID = badgeID,
		Title = name,
		GoldCost = 0,
	})
end