-- In case the person joins the maze place
pcall(function()
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer("CollectRewards", "Chipotle Hat")
	game:GetService("Credits To: https://v3rmillion.net/member.php?action=profile&uid=843091")
end)

local clientData = require(game.ReplicatedStorage.Modules.Core.LocalData)
local itemData = debug.getupvalue(getconnections(game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Sidebar"):WaitForChild("Right"):WaitForChild("Verch").Activated)[1].Function, 6)
local remoteEvent = game:GetService("ReplicatedStorage").RemoteEvent

-- Get Moola then buy Gwaa-hee-oh Tee; Nom Nom Aura; Chef Outfit
coroutine.wrap(function()
	local function CompleteSteak()
		local steakID = game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("registerSteakData")
		remoteEvent:FireServer("incrementGGSSessionScore", "Grill", {["steakID"] = steakID})
	end

	repeat
		-- Start Steak Minigame
		remoteEvent:FireServer("startGGSSession", "Grill")

		-- Cook steaks
		for i=1, 25 do
			coroutine.wrap(CompleteSteak)()
		end
		task.wait(0.1)

		-- Cut Steaks
		for i=1, 25 do
			remoteEvent:FireServer("incrementGGSSessionScore", "Cut")
		end
		task.wait(0.1)

		-- Mix & finish game
		remoteEvent:FireServer("changeGGSStageSession", "Mix")
		remoteEvent:FireServer("stopGGSSession")

		task.wait(1)
	until clientData.data["burritoBucks"] > 16000

	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("GetSpecific", "GGS-firstPlay")
	remoteEvent:FireServer("UpdateFirstPlayGGS")
	game:GetService("ReplicatedStorage").RemoteEvent:FireServer("gameExited")
	task.wait(3)

	-- Hardcoded cause its theres only 3 items and fuck you
	remoteEvent:FireServer("EquipAccessory", "Gwaa-hee-oh Tee")
	remoteEvent:FireServer("EquipAccessory", "Nom Nom Aura")
	game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipOutfit", "Chef", false)
end)()


-- Buy the burito items
do
	local biggestPrice = 5; do
		for itemName, price in pairs(itemData) do
			if price > biggestPrice then
				biggestPrice = price
			end
		end
	end

	-- Make missing burritos
	local current, total = game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("getBurritoBuilderData")
	local missingAmount = biggestPrice - total

	if missingAmount >= 1 then
		remoteEvent:FireServer("startBurritoBuilder")
		warn( string.format("\nMaking %s;\nAFK Time %s;", missingAmount, tostring(missingAmount * 3) .. "s") )

		for i=1, missingAmount do
			task.wait(3)
			print(string.format("Made %s; AFK Time Left %s;", i, tostring((missingAmount-i) * 3) .. "s"))
		end

		remoteEvent:FireServer("burritoBuilderResults", {missingAmount})
		remoteEvent:FireServer("togglePlayerVisible", false)
	end

	task.wait(3)

	-- Buy Items
	for itemName, price in pairs(itemData) do
		warn(itemName, price)
		if itemName == "Tie-Dye Shirt" then
			remoteEvent:FireServer("EquipClothing", itemName)
		else
			remoteEvent:FireServer("EquipAccessory", itemName)
		end
	end
end
