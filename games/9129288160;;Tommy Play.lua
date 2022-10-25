game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)
local Network = require(game:GetService("ReplicatedStorage"):WaitForChild("lib"):WaitForChild("Network"))

--- Brooklyn
if game.GameId == 3428694728 then
	---// Buying Store Items
	local tokenLimit = 2000-- Default: 2000
	local tokenTimeout = 2-- Default: 2 or 5

	local clientData, ownedItems; do
		for i, replicationTbl in pairs(require(game:GetService("ReplicatedStorage").vendor.ReplicaController)._replicas) do
			if replicationTbl.Class == "PlayerData" then
				clientData = replicationTbl.Data.Profile
				ownedItems = clientData.Inventory.TokenClothing
				break
			end
		end
	end

	-- Hooking the point / system update system so it's less laggy (fps)
	for i, replicationTbl in pairs(require(game:GetService("ReplicatedStorage").vendor.ReplicaController)._replicas) do
		if replicationTbl.Class == "PlayerData" then
			replicationTbl._table_listeners[1].Profile[1].Points[2][1] = function(...)
			end

			warn("Hooked: PlayerData.Points")
		end
	end

	local function GetBuyableItems()
		local items = {}
		local totalPrice = 0

		for name, tbl in pairs(require(game:GetService("ReplicatedStorage").lib.StoreItems).TokenClothing.Items) do
			if tbl.ForSale == true and tbl.LinkedBadge ~= nil and tbl.CurrencyType == "Tokens" and table.find(ownedItems, name) == nil then
				items[name] = tbl
				totalPrice += tbl.Price
			end
		end

		return items, totalPrice
	end

	local function GetTokens()
		-- Getting Points
		local bikeTrick = game:GetService("ReplicatedStorage").lib.Network["Bike Trick"]
		for i=1, tokenLimit do
			bikeTrick:FireServer("360")
			bikeTrick:FireServer("Flair")
			bikeTrick:FireServer("Tailwhip")
		end

		-- Turning Points into tokens
		local scoreTotalLabel = client.PlayerGui.Score.Frame.Total
		repeat task.wait() until scoreTotalLabel.TextTransparency == 0-- waiting until its visible
		repeat task.wait() until scoreTotalLabel.TextTransparency == 1-- waiting until its not visible (our points are ready to claim)

		for i=1, tokenLimit do
			game:GetService("ReplicatedStorage").lib.Network["Claim Tokens"]:FireServer()
		end
	end

	local function BuyItems()
		local cachedTokens = clientData.Tokens

		for name, tbl in pairs(GetBuyableItems()) do
			if cachedTokens >= tbl.Price then
				cachedTokens = cachedTokens - tbl.Price
				coroutine.wrap(function()
					game:GetService("ReplicatedStorage").lib.Network.ShopPurchaseItem:InvokeServer({
						"TokenClothing",
						name
					})
					print("Brought:", name)
				end)()
			end
		end
	end


	game:GetService("ReplicatedStorage").lib.Network["Equip Bike"]:FireServer(true)

	-- Buy Loop
	while true do
		local items, totalPrice = GetBuyableItems()
		print(string.format("Need %s Tokens", totalPrice - clientData.Tokens))
		if clientData.Tokens >= totalPrice then
			BuyItems()
			break
		else
			GetTokens()
		end

		task.wait(tokenTimeout)
	end
end

--- Bronx
if game.GameId == 3428694728 then
	client.Character:PivotTo(workspace.Bronx.PrideCollector.FoamHand.CFrame)
	task.wait(0.5)
	Network:Fire("LoveIsLove.CollectItem")

	-- Finish Pretzel Run
	local centerManProx = workspace.Bronx["Break Dance"].Characters.CenterMan.HumanoidRootPart.ProximityPrompt
	local questDict = {
		["Pretzel Run (0% done)"] = workspace.Bronx.BridgePretzel.ProximityPrompt,
		["Pretzel Run (20% done)"] = workspace.Bronx.ShowroomPretzel.Pretzel.ProximityPrompt,
		["Pretzel Run (40% done)"] = workspace.Bronx.ParkourParkPretzel.ProximityPrompt,
		["Pretzel Run (60% done)"] = workspace.Bronx.StadiumTrainPretzel.ProximityPrompt,
		["Pretzel Run (80% done)"] = workspace.Bronx.TightropePretzel.ProximityPrompt,
		["Pretzel Run (90% done)"] = centerManProx,
		["Pretzel Run (100% done)"] = centerManProx,
	}


	local function WaitForSpeech()
		repeat task.wait() until client.Character.Humanoid.WalkSpeed == 0
		warn("Started Talking")

		repeat task.wait() until client.Character.Humanoid.WalkSpeed == 16
		warn("Finished Talking")
	end


	local function InteractProxPrompt(proxPrompt)
		client.Character.HumanoidRootPart.CFrame = proxPrompt.Parent.CFrame
		task.wait(0.5)
		fireproximityprompt(proxPrompt)

		return proxPrompt
	end



	while true do
		InteractProxPrompt(centerManProx)
		WaitForSpeech()

		local questFrame = client.PlayerGui.Quests:FindFirstChild("QuestPane")
		if not questFrame then
			warn("No Quest; Rejoin")
			break
		end

		if InteractProxPrompt( questDict[questFrame.contents.wrapper.container.header.label.Text] ) == centerManProx then
			warn("Finished Quest")
			break
		end
	end
end

--- Getting basic badges
game:GetService("ReplicatedStorage").lib.Network.SubtaskProgress:FireServer("intro", 1, 1, 1)
game:GetService("ReplicatedStorage").lib.Network.SubtaskProgress:FireServer("intro", 2, 1, 1)

game:GetService("ReplicatedStorage").lib.Network.SecretTunnel:FireServer("Ritual")
game:GetService("ReplicatedStorage").lib.Network.SecretTunnel:FireServer("GinoGate")

game:GetService("ReplicatedStorage").lib.Network.SubtaskProgress:FireServer("ach_floatfeather", 1, 1, 1)
game:GetService("ReplicatedStorage").lib.Network.SubtaskProgress:FireServer("ach_spacelaunch", 1, 1, 1)

game:GetService("ReplicatedStorage").lib.Network["Freefall.ScoreResult"]:FireServer(100001 + math.random(100, 10000))