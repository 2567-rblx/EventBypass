local Badge = require(game:GetService("Workspace").Lib.BadgeSystem.Badges.EventBadges)
local PSettings = {} do
	local ps = require(workspace.Lib.TGSPersistentSettings)
	local statConnection = getconnections(game:GetService("ReplicatedStorage").StatUpdatedEvent.OnClientEvent)[1].Function
	PSettings = debug.getupvalue(statConnection, 2).PlayerData

	function PSettings.set(key, value)
		local keyData = PSettings.PlayerSettings[key] or 0

		if keyData < value then
			ps.SetSetting(nil, key, value)
		end
	end
end


local settings = {
	["MushroomUsedData"] = 15,-- Item: 9528286240; Annyeong (안녕)
	["TutorialStep"] = 5,-- Item: 9528291779; Hwaiting (화이팅)
	["Producer"] = 10,-- Item: 9529043053; Floating Boombox
	["PlayfulProducer"] = 10,-- Item: 9529043053; Floating Boombox
	["KparkParkoursDone"] = 20,-- Item: 9707955236; Screenshot Patchwork Jacket
}

for name, value in pairs(settings) do
	PSettings.set(name, value)
end


-- Item: 9529027385; 5-Petal Backpack
for i, inst in ipairs(workspace.LevelSections.Start.ScavangerHunt:GetChildren()) do
	firetouch(client.Character.HumanoidRootPart, inst.Collider)
end


-- Item: 10855443523; Screenshot Patchwork Session Hat
for i=1, 15 do
	game:GetService("ReplicatedStorage").ChallengeManager_StartChallenge:FireServer("Level_" .. i)
	game:GetService("ReplicatedStorage").ChallengeManager_EndChallenge:FireServer("Level_" .. i)
end


-- Item: 
for name, tbl in pairs(Badge.Badges) do
    Badge.GrantBadgeRemote:FireServer(name)
end