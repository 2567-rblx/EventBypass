local backupBadgeIDs = {-- Made on 24.8.22
	2125130800,-- Thanks for playing!
	2125130804,-- Moonwalker
	2125130810,-- 5 Rebirths
	2125130812,-- 10 Rebirths
	2125747688,-- Beats Cosmophones
	2127210306,-- Easy Time Attack
	2127210319,-- Medium Time Attack
	2127210328,-- Hard Time Attack
	2127480708,-- Liberty Court Xbox Shutter Shades
	2127480711,-- Liberty Court Xbox Belt Bag
	2127480712,-- Rebel Edition Jersey by New York Liberty
}

print("Waiting on response on badge request")
local resp = syn.request({
	Method = "GET",
	Url = "https://badges.roblox.com/v1/universes/2974058674/badges?limit=100&sortOrder=Asc"
})

if resp.StatusCode == 200 then
	print("Using request's database")
	for i, tbl in ipairs(game:GetService("HttpService"):JSONDecode(resp.Body).data) do
		game:GetService("ReplicatedStorage"):WaitForChild("AwardBadge"):FireServer(tbl.id)
	end
else
	warn("Unexpected StatusCode:", resp.StatusCode)
	print("Using backup badge database")
	for i, tbl in ipairs(backupBadgeIDs) do
		game:GetService("ReplicatedStorage"):WaitForChild("AwardBadge"):FireServer(tbl.id)
	end
end