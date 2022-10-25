local games = {
	[10057963710] = {'George Ezra’s Gold Rush Kid Experience', [===[for a,b in ipairs(game:GetService("Workspace").Hub.Puzzle.Pieces:GetChildren())do game:GetService("ReplicatedStorage").RemoteEvent:FireServer("PickupItem",tostring(b.Name))end;game:GetService("ReplicatedStorage").RemoteEvent:FireServer("awardTimeTrail")game:GetService("ReplicatedStorage").RemoteEvent:FireServer("awardTimeTrail")game:GetService("ReplicatedStorage").RemoteEvent:FireServer("awardTimeTrail")client.Character.HumanoidRootPart.CFrame=workspace.VerchShop.GuitarStand.Model[3].UpperTorso.CFrame;task.wait(0.5)fireproximityprompt(workspace.VerchShop.GuitarStand.Model[3].UpperTorso.ProximityPrompt)firetouch(client.Character.HumanoidRootPart,workspace.Hub.VerchEntrance)]===]},
	[10085978574] = {'My Little Pony', [===[local a=require(game:GetService("ReplicatedStorage").Modules.SharedFunctions).Activate(game:GetService("Players").LocalPlayer)local function b(c,d)game:GetService("ReplicatedStorage").RemoteEvents.Gameplay:FireServer(c,"FTUE",true)game:GetService("ReplicatedStorage").RemoteEvents.Gameplay:FireServer(c,"Round",1)for e=1,20 do game:GetService("ReplicatedStorage").RemoteEvents.Gameplay:FireServer(c,d,tostring(e))end end;for e=1,3 do game:GetService("ReplicatedStorage").RemoteEvents.CollectibleInteraction:FireServer({["Chimp"]=""},a,tostring(e))end;for f=1,3 do game:GetService("ReplicatedStorage").RemoteEvents.Gameplay:FireServer("Pipp","Progress",69696969)task.wait(0.1)game:GetService("ReplicatedStorage").RemoteEvents.Gameplay:FireServer("Zipp","Progress",69696969)task.wait(0.1)game:GetService("ReplicatedStorage").RemoteEvents.Gameplay:FireServer("Sunny","Progress",69696969)task.wait(0.1)b("Hitch","CrittersCollected")task.wait(0.1)b("Izzy","ItemsCollected")task.wait(0.1)end]===]},
	[10105990977] = {'Samsung Space Tycoon', [===[local a={[2127224809]="Shoulder-Mounted Wing",[2127224823]="Lemonade Hat",[2127224806]="Alien Parrot",[2127234743]="Sparky Headset",[2127234749]="Z Flip Backpack"}for b,c in pairs(a)do game:GetService("ReplicatedStorage").Shop.Remotes.Cosmetics.PurchaseCosmeticsRequest:FireServer({BadgeID=b,Title=c,GoldCost=0})end]===]},
	[10146432319] = {'Guacathon', [===[local a=client.Character or client.CharacterAdded:Wait()local b=require(game:GetService("ReplicatedStorage").NEXUS).GetModule("Network")a:WaitForChild("HumanoidRootPart",10).CFrame=workspace.XWing.Display.CFrame;task.wait(0.5)fireproximityprompt(workspace.XWing.Display.ProximityPrompt)b:FireServer("REQ_HOOPS_REWARDS",5000)game:GetService("TeleportService"):Teleport(game.PlaceId)]===]},
	[10204556059] = {'NARS Color Quest', [===[local a={"LOOKBOOK","10KLIKES","18KLIKES","30KLIKES"}for b,c in ipairs(a)do coroutine.wrap(function()game:GetService("ReplicatedStorage").Common.remote.PromoCodes:InvokeServer(c)end)()end;local d=require(game:GetService("ReplicatedStorage").Common.gameplay.data)local function e()return debug.getupvalue(d.resetPlayerData,1)[game.Players.LocalPlayer]end;game:GetService("ReplicatedStorage").Common.remote.ConversationTag:FireServer("mrNars")game:GetService("ReplicatedStorage").Common.remote.speakWith:FireServer(workspace.AlwaysScreenshot.MrNarsRig)local function f(g,h)for b=0,h do game:GetService("ReplicatedStorage").Common.remote.addChallengePoint:FireServer(g,"nil")task.wait(0.08)end end;for g,i in pairs(e().challengesData)do coroutine.wrap(function()repeat f(g,i.PointsNeeded-i.CurrentPoints)until e().challengesData[g].Completed==true;task.wait(0.1)game:GetService("ReplicatedStorage").Common.remote.giveSandDollars:FireServer(g,i.SandDollarReward)warn("Completed:",g)end)()end;while true do task.wait(0.2)local j=0;for g,i in pairs(e().challengesData)do if i.Completed==false then j=j+1 end end;if j==0 then break end end;for g,i in pairs(require(game:GetService("ReplicatedStorage").Common.gameplay.shopItems))do if-i.SandDollarsPrice and i.Type=="UGC"then coroutine.wrap(function()game:GetService("ReplicatedStorage").Common.remote.purchaseItem:InvokeServer(g)end)()end end]===]},
	[10319501620] = {'School of Sport', [===[game:GetService("ReplicatedStorage").RemoteFunctions.PlayerCollectionAdd:InvokeServer("QuestFinished","CollectStickers")game:GetService("ReplicatedStorage").RemoteFunctions.PlayerCollectionAdd:InvokeServer("QuestFinished","Obtain10Clothes")game:GetService("ReplicatedStorage").RemoteFunctions.PlayerCollectionAdd:InvokeServer("QuestFinished","Obtain20Clothes")]===]},
	[10895555747] = {'Walmart Land', [===[while true do client.Character.HumanoidRootPart.CFrame=workspace.FerrisModel9000.Base.plataformStopFerrisWheel.CFrame;task.wait(0.1)fireproximityprompt(workspace.FerrisModel9000.Base.plataformStopFerrisWheel.ProximityPrompt)end]===]},
	[10905680506] = {'Welcome to TechQuest by Computer History Museum', [===[if not game.IsLoaded then game.Loaded:Wait()end;local function a(b)if isfolder(b)==false then makefolder(b)end end;a("./EventBypass")a("./EventBypass/TechQuest")writefile("./EventBypass/TechQuest/Hub.lua",[=[
		-- PlaceId: 10905680506
	
		if not game.IsLoaded then
			game.Loaded:Wait()
		end
	
		local Network = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Core"):WaitForChild("Network"))
		task.wait(0.5)
	
		Network:FireServer("PurchaseItem", "Pets", 1)
		Network:FireServer("ChallengeCheck", "Merch")
		Network:FireServer("ChallengeCheck", "Pet")
	
		delfolder("./EventBypass/TechQuest")
		--[[
		syn.queue_on_teleport(readfile("./EventBypass/TechQuest/Community.lua"))
		Teleport(10913336500)
		]]
	]=])writefile("./EventBypass/TechQuest/Community.lua",[=[
		-- PlaceId: 10913336500
	
		if not game.IsLoaded then
			game.Loaded:Wait()
		end
		
		local Network = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Core"):WaitForChild("Network"))
		task.wait(0.5)
		
		for i, task in ipairs(game:GetService("ReplicatedStorage").Modules.TaskHandler.Tasks:GetChildren()) do
			Network:FireServer("TaskCompleted", task.Name)
		end
		
		syn.queue_on_teleport(readfile("./EventBypass/TechQuest/Ocean.lua"))
		game:GetService("TeleportService"):Teleport(10913281132)
	]=])writefile("./EventBypass/TechQuest/Ocean.lua",[=[
		-- PlaceId: 10913281132
	
		if not game.IsLoaded then
			game.Loaded:Wait()
		end
	
		local Network = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Core"):WaitForChild("Network"))
		task.wait(0.5)
	
		for i, task in ipairs(game:GetService("ReplicatedStorage").Modules.TaskHandler.Tasks:GetChildren()) do
			Network:FireServer("TaskCompleted", task.Name)
		end
		Network:FireServer("RequestBadge")
	
		syn.queue_on_teleport(readfile("./EventBypass/TechQuest/Rainforest.lua"))
		game:GetService("TeleportService"):Teleport(10913378955)
	]=])writefile("./EventBypass/TechQuest/Rainforest.lua",[=[
		-- PlaceId: 10913378955
	
		if not game.IsLoaded then
			game.Loaded:Wait()
		end
	
		local Network = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Core"):WaitForChild("Network"))
		task.wait(0.5)
	
		for i, task in ipairs(game:GetService("ReplicatedStorage").Modules.TaskHandler.Tasks:GetChildren()) do
			Network:FireServer("TaskCompleted", task.Name)
		end
	
		syn.queue_on_teleport(readfile("./EventBypass/TechQuest/Hub.lua"))
		game:GetService("TeleportService"):Teleport(10905680506)
	]=])syn.queue_on_teleport(readfile("./EventBypass/TechQuest/Community.lua"))game:GetService("TeleportService"):Teleport(10913336500)]===]},
	[10912060909] = {'Black Adam Experience', [===[local a=game:GetService("Players").LocalPlayer;local b=a.Character or a.CharacterAdded:Wait()local function c(d,e)firetouchinterest(d,e,0)firetouchinterest(d,e,1)end;for f,g in ipairs(workspace["Trivia Hall"].TriviaReward:GetChildren())do if g:FindFirstChild("TouchInterest")then c(b.HumanoidRootPart,g)end end;for h,i in ipairs(workspace.Scavenger:GetChildren())do local j=i:FindFirstChildWhichIsA("MeshPart")if j then c(b.HumanoidRootPart,j)task.wait(0.05)end end;syn.queue_on_teleport([=[
		if not game.IsLoaded then
			game.Loaded:Wait()
		end
		
		--game:GetService("ReplicatedStorage"):WaitForChild("ExplosionEvent"):FireServer(workspace:WaitForChild("Destructable"):WaitForChild("Model"):WaitForChild("Part"), 10000)
		game:GetService("ReplicatedStorage"):WaitForChild("TeleportEvent"):FireServer()
	]=])game:GetService("TeleportService"):Teleport(10912088012)]===]},
	[5306359293] = {'Island of Move', [===[game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("StrikeAPose")game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("SettingTheStage")game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("DIY")game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("GetMoving")game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("VictoryLap")]===]},
	[6225076142] = {'8th Annual Bloxy Awards', [===[for a,b in ipairs(workspace.Scenes.Lobby.Map.ScavengerHunt:GetChildren())do client.Character.HumanoidRootPart.CFrame=b:FindFirstChild(b.Name).CFrame;task.wait(0.25)game:GetService("ReplicatedStorage").Events.RemoteEvents.CollectedScavengerItem:FireServer(b.Name,b:FindFirstChild(b.Name))end;game:GetService("ReplicatedStorage").Events.RemoteEvents.CollectOutfit:FireServer()for a=1,100 do game:GetService("ReplicatedStorage").Events.RemoteEvents.ClawMachine:FireServer()end;while true do client.Character.HumanoidRootPart.CFrame=workspace.Persistant.Elevator.CFrame;game:GetService("ReplicatedStorage").Events.RemoteEvents.Elevator:FireServer(client.Character.HumanoidRootPart,true)repeat task.wait()until client.Character.Head.Transparency==1;repeat task.wait()until client.Character.Head.Transparency==0;task.wait(2)end]===]},
	[6366043734] = {'Why Don\'t We Launch Party', [===[for a,b in pairs(require(game:GetService("ReplicatedStorage").Config.Items).items)do game:GetService("ReplicatedStorage").RemoteEvent:FireServer("requestFreeBadge",b.id)end]===]},
	[6656109940] = {'Zara Larsson Launch Party', [===[for a,b in pairs(require(game:GetService("ReplicatedStorage").Config.Items).items)do game:GetService("ReplicatedStorage").RemoteEvent:FireServer("requestFreeBadge",b.id,true)end]===]},
	[6704278765] = {'Dolo Tonight Concert Experience', [===[while true do for a,b in pairs(workspace:GetChildren())do if b.Name=="Eye"then char.HumanoidRootPart.CFrame=b.CFrame;task.wait(0.1)end end;task.wait()end]===]},
	[6901029464] = {'Mansion of Wonder', [===[game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("Boardwalk")game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("FXArtist")game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("ParticleWizard")game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("ThingsGoBoom")game:GetService("ReplicatedStorage").Events.RedeemCode:FireServer("Glimmer")]===]},
	[7277488595] = {'七叔（叶泽浩）Launch Party', [===[char.HumanoidRootPart.CFrame=workspace.ObstacleCourse.ObstacleEnd.Part.CFrame;task.wait(0.5)while true do if tonumber(client.PlayerGui.Shop.Background.Counter.CoinCount.Text)>3500 then break end;firetouch(char.HumanoidRootPart,workspace.ObstacleCourse.ObstacleEntries.Part)firetouch(char.HumanoidRootPart,workspace.ObstacleCourse.ObstacleEnd.Part)task.wait(0.05)end;while true do game:GetService("ReplicatedStorage").RemoteEvent:FireServer("PurchaseWithCoins","clothing1")game:GetService("ReplicatedStorage").RemoteEvent:FireServer("PurchaseWithCoins","accessory12")game:GetService("ReplicatedStorage").RemoteEvent:FireServer("PurchaseWithCoins","accessory13")game:GetService("ReplicatedStorage").RemoteEvent:FireServer("PurchaseWithCoins","accessory14")task.wait(0.25)end]===]},
	[7541759836] = {'凹凸世界：自由丛林', [===[for a=1,50 do for b,c in pairs(workspace.obby.Badge:GetChildren())do firetouch(char.HumanoidRootPart,c:FindFirstChildOfClass("MeshPart"))end;task.wait()end;task.wait(0.3)for a=1,4 do game:GetService("ReplicatedStorage").Project.RemoteEvent.ControlMessageEvent:FireServer(2,{2,a})end]===]},
	[7603178367] = {'Chipotle Burrito Builder', [===[pcall(function()game:GetService("ReplicatedStorage").RemoteEvent:FireServer("CollectRewards","Chipotle Hat")game:GetService("Credits To: https://v3rmillion.net/member.php?action=profile&uid=843091")end)local a=require(game.ReplicatedStorage.Modules.Core.LocalData)local b=debug.getupvalue(getconnections(game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Sidebar"):WaitForChild("Right"):WaitForChild("Verch").Activated)[1].Function,6)local c=game:GetService("ReplicatedStorage").RemoteEvent;coroutine.wrap(function()local function d()local e=game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("registerSteakData")c:FireServer("incrementGGSSessionScore","Grill",{["steakID"]=e})end;repeat c:FireServer("startGGSSession","Grill")for f=1,25 do coroutine.wrap(d)()end;task.wait(0.1)for f=1,15 do c:FireServer("incrementGGSSessionScore","Cut")end;task.wait(0.1)c:FireServer("changeGGSStageSession","Mix")c:FireServer("stopGGSSession")task.wait(1)until a.data["burritoBucks"]>16000;game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("GetSpecific","GGS-firstPlay")c:FireServer("UpdateFirstPlayGGS")c:FireServer("gameExited")task.wait(3)c:FireServer("EquipAccessory","Gwaa-hee-oh Tee")c:FireServer("EquipAccessory","Nom Nom Aura")game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("EquipOutfit","Chef",false)end)()do local g=5;do for h,i in pairs(b)do if i>g then g=i end end end;local j,k=game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer("getBurritoBuilderData")local l=g-k;if l>=1 then c:FireServer("startBurritoBuilder")warn(string.format("\nMaking %s;\nAFK Time %s;",l,tostring(l*3).."s"))for f=1,l do task.wait(3)print(string.format("Made %s; AFK Time Left %s;",f,tostring((l-f)*3).."s"))end;c:FireServer("burritoBuilderResults",{l})c:FireServer("togglePlayerVisible",false)else warn("Already have enough burritos: buying items")for h,i in pairs(b)do if h=="Tie-Dye Shirt"then c:FireServer("EquipClothing",h)else c:FireServer("EquipAccessory",h)end end end;task.wait(3)if l>=1 then local m=[=[
				if not game:IsLoaded() then
					game.Loaded:Wait()
				end
	
				local remoteEvent = game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent")
				local thing = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Sidebar"):WaitForChild("Right"):WaitForChild("Verch")
				task.wait(3)
				local itemData = debug.getupvalue(getconnections(thing.Activated)[1].Function, 6)
	
				for itemName, price in pairs(itemData) do
					if itemName == "Tie-Dye Shirt" then
						remoteEvent:FireServer("EquipClothing", itemName)
					else
						remoteEvent:FireServer("EquipAccessory", itemName)
					end
				end
			]=]local queue_on_teleport=syn and syn.queue_on_teleport or queue_on_teleport or nil;if queue_on_teleport then queue_on_teleport(m)game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId)else warn("Couldn't find 'queue_on_teleport' function rejoin")game:GetService("StarterGui"):SetCore("SendNotification",{Title="Exploit Error",Text="Couldn't find 'queue_on_teleport' function rejoin",Duration=60})loadstring(m)()end end end]===]},
	[7655745946] = {'Dunking Simulator', [===[local a={2125130800,2125130804,2125130810,2125130812,2125747688,2127210306,2127210319,2127210328,2127480708,2127480711,2127480712}print("Waiting on response on badge request")local b=syn.request({Method="GET",Url="https://badges.roblox.com/v1/universes/2974058674/badges?limit=100&sortOrder=Asc"})if b.StatusCode==200 then print("Using request's database")for c,d in ipairs(game:GetService("HttpService"):JSONDecode(b.Body).data)do game:GetService("ReplicatedStorage"):WaitForChild("AwardBadge"):FireServer(d.id)end else warn("Unexpected StatusCode:",b.StatusCode)print("Using backup badge database")for c,d in ipairs(a)do game:GetService("ReplicatedStorage"):WaitForChild("AwardBadge"):FireServer(d.id)end end]===]},
	[8209480473] = {'Spotify Island', [===[local a=require(game:GetService("Workspace").Lib.BadgeSystem.Badges.EventBadges)local b={}do local c=require(workspace.Lib.TGSPersistentSettings)local d=getconnections(game:GetService("ReplicatedStorage").StatUpdatedEvent.OnClientEvent)[1].Function;b=debug.getupvalue(d,2).PlayerData;function b.set(e,f)local g=b.PlayerSettings[e]or 0;if g<f then c.SetSetting(nil,e,f)end end end;local h={["MushroomUsedData"]=15,["TutorialStep"]=5,["Producer"]=10,["PlayfulProducer"]=10,["KparkParkoursDone"]=20}for i,f in pairs(h)do b.set(i,f)end;for j,k in ipairs(workspace.LevelSections.Start.ScavangerHunt:GetChildren())do firetouch(client.Character.HumanoidRootPart,k.Collider)end;for j=1,15 do game:GetService("ReplicatedStorage").ChallengeManager_StartChallenge:FireServer("Level_"..j)game:GetService("ReplicatedStorage").ChallengeManager_EndChallenge:FireServer("Level_"..j)end;for i,l in pairs(a.Badges)do a.GrantBadgeRemote:FireServer(i)end]===]},
	[8526353932] = {'McLaren F1 Racing Experience', [===[game:GetService("ReplicatedStorage").UGCTimedUnlock_ClaimItem:InvokeServer("OpenVisor")game:GetService("ReplicatedStorage").UGCTimedUnlock_ClaimItem:InvokeServer("ClosedVisor")]===]},
	[8528736393] = {'Beatland', [===[for a,b in pairs(workspace.Lib.Items.ItemSettings:GetChildren())do coroutine.wrap(function()game:GetService("ReplicatedStorage").TGSItemShops_BuyItem:InvokeServer(b.Name,0)end)()end]===]},
	[9129288160] = {'Tommy Play', [===[game:GetService("NetworkClient"):SetOutgoingKBPSLimit(math.huge)local a=require(game:GetService("ReplicatedStorage"):WaitForChild("lib"):WaitForChild("Network"))if game.GameId==3428694728 then local b=2000;local c=2;local d,e;do for f,g in pairs(require(game:GetService("ReplicatedStorage").vendor.ReplicaController)._replicas)do if g.Class=="PlayerData"then d=g.Data.Profile;e=d.Inventory.TokenClothing;break end end end;for f,g in pairs(require(game:GetService("ReplicatedStorage").vendor.ReplicaController)._replicas)do if g.Class=="PlayerData"then g._table_listeners[1].Profile[1].Points[2][1]=function(...)end;warn("Hooked: PlayerData.Points")end end;local function h()local i={}local j=0;for k,l in pairs(require(game:GetService("ReplicatedStorage").lib.StoreItems).TokenClothing.Items)do if l.ForSale==true and l.LinkedBadge~=nil and l.CurrencyType=="Tokens"and table.find(e,k)==nil then i[k]=l;j=j+l.Price end end;return i,j end;local function m()local n=game:GetService("ReplicatedStorage").lib.Network["Bike Trick"]for f=1,b do n:FireServer("360")n:FireServer("Flair")n:FireServer("Tailwhip")end;local o=client.PlayerGui.Score.Frame.Total;repeat task.wait()until o.TextTransparency==0;repeat task.wait()until o.TextTransparency==1;for f=1,b do game:GetService("ReplicatedStorage").lib.Network["Claim Tokens"]:FireServer()end end;local function p()local q=d.Tokens;for k,l in pairs(h())do if q>=l.Price then q=q-l.Price;coroutine.wrap(function()game:GetService("ReplicatedStorage").lib.Network.ShopPurchaseItem:InvokeServer({"TokenClothing",k})print("Brought:",k)end)()end end end;game:GetService("ReplicatedStorage").lib.Network["Equip Bike"]:FireServer(true)while true do local i,j=h()print(string.format("Need %s Tokens",j-d.Tokens))if d.Tokens>=j then p()break else m()end;task.wait(c)end end;if game.GameId==3428694728 then client.Character:PivotTo(workspace.Bronx.PrideCollector.FoamHand.CFrame)task.wait(0.5)a:Fire("LoveIsLove.CollectItem")local r=workspace.Bronx["Break Dance"].Characters.CenterMan.HumanoidRootPart.ProximityPrompt;local s={["Pretzel Run (0% done)"]=workspace.Bronx.BridgePretzel.ProximityPrompt,["Pretzel Run (20% done)"]=workspace.Bronx.ShowroomPretzel.Pretzel.ProximityPrompt,["Pretzel Run (40% done)"]=workspace.Bronx.ParkourParkPretzel.ProximityPrompt,["Pretzel Run (60% done)"]=workspace.Bronx.StadiumTrainPretzel.ProximityPrompt,["Pretzel Run (80% done)"]=workspace.Bronx.TightropePretzel.ProximityPrompt,["Pretzel Run (90% done)"]=r,["Pretzel Run (100% done)"]=r}local function t()repeat task.wait()until client.Character.Humanoid.WalkSpeed==0;warn("Started Talking")repeat task.wait()until client.Character.Humanoid.WalkSpeed==16;warn("Finished Talking")end;local function u(v)client.Character.HumanoidRootPart.CFrame=v.Parent.CFrame;task.wait(0.5)fireproximityprompt(v)return v end;while true do u(r)t()local w=client.PlayerGui.Quests:FindFirstChild("QuestPane")if not w then warn("No Quest; Rejoin")break end;if u(s[w.contents.wrapper.container.header.label.Text])==r then warn("Finished Quest")break end end end;game:GetService("ReplicatedStorage").lib.Network.SubtaskProgress:FireServer("intro",1,1,1)game:GetService("ReplicatedStorage").lib.Network.SubtaskProgress:FireServer("intro",2,1,1)game:GetService("ReplicatedStorage").lib.Network.SecretTunnel:FireServer("Ritual")game:GetService("ReplicatedStorage").lib.Network.SecretTunnel:FireServer("GinoGate")game:GetService("ReplicatedStorage").lib.Network.SubtaskProgress:FireServer("ach_floatfeather",1,1,1)game:GetService("ReplicatedStorage").lib.Network.SubtaskProgress:FireServer("ach_spacelaunch",1,1,1)game:GetService("ReplicatedStorage").lib.Network["Freefall.ScoreResult"]:FireServer(100001+math.random(100,10000))]===]},
	[9230434873] = {'Logitech Song Breaker Awards', [===[do local a=require(game:GetService("ReplicatedStorage").Modules.World.Interactables.CoinHandler).Start;local b=debug.getupvalue(a,3).Collect;local c=debug.getupvalue(a,4)for d,e in pairs(c)do if e.obj and e.obj.Parent then b(e)end end end;for f,g in ipairs(game:GetService("ReplicatedStorage")["Honoree_Hunt"].Hidden:GetChildren())do g.Parent=workspace["Honoree_Hunt"].Hidden end;for f,g in ipairs(workspace["Honoree_Hunt"].Hidden:GetChildren())do local h=g:FindFirstChild("Head",true)client.Character.HumanoidRootPart.CFrame=h.CFrame;task.wait(client:GetNetworkPing()+0.1)fireproximityprompt(h:FindFirstChild("ProximityPrompt",true))end;for f,i in ipairs(workspace.Interactables.SelfieCam:GetChildren())do if i.Name=="Player"then i:Destroy()end end;client.Character.HumanoidRootPart.CFrame=workspace.Interactables.SelfieCam.Hitbox.CFrame;repeat task.wait()until workspace.Interactables.SelfieCam:FindFirstChild("Player")local j=require(game:GetService("ReplicatedStorage").SharedModules.Global).Network;for f,i in ipairs(workspace.Interactables.CoasterCarts:GetDescendants())do if i.Name=="Seat"then client.Character.HumanoidRootPart.CFrame=i.Parent.CFrame;j:FireServer("RollercoasterSit",i)end end]===]},
	[9377039667] = {'Roblox Innovation Awards', [===[firetouch(client.Character.HumanoidRootPart,workspace.Scavenger.Circlet)for a,b in ipairs(workspace.CubePieces:GetChildren())do client.Character.HumanoidRootPart.CFrame=b.CFrame;task.wait(0.2)repeat firetouch(client.Character.HumanoidRootPart,b)task.wait(0.05)until client.Character.Cube[b.Name].Transparency==0 end;client.Character.HumanoidRootPart.CFrame=CFrame.new(-5.541287422180176,23.644060134887695,-104.40755462646484)game:GetService("TeleportService"):Teleport(game.PlaceId)]===]},
	[9524757503] = {'IHeartLand Music Tycoon', [===[for a,b in ipairs(workspace.ScavengerHunt:GetChildren())do pcall(function()for c,d in ipairs(b:GetChildren("Credits To: https://v3rmillion.net/member.php?action=profile&uid=843091"))do if d.ClassName=="Model"then client.Character.HumanoidRootPart.CFrame=CFrame.new(gethiddenproperty(d,"Origin Position"))d:WaitForChild("Collider")task.wait(0.1)end end end)end]===]},
	[9557222597] = {'Clarks\' CICAVERSE', [===[local a=require(game:GetService("ReplicatedStorage").Modules.Core.Network)for b,c in ipairs(workspace.ScavengerHunt:GetDescendants())do if c:IsA("MeshPart")then firetouch(client.Character.HumanoidRootPart,c)end end;for b=1,20 do a:FireServer("BreakdanceHit",true,false)end;a:FireServer("PARKOUR_QUICK_START")a:FireServer("updateMinigameStateOnServer",2)a:FireServer("updateMinigameStateOnServer",1)task.wait(1)a:FireServer("ExitCourse")a:FireServer("breakdanceEnd",50000)for b=1,6 do a:FireServer("BMX_REQUEST_QUICK_START")task.wait(2.5)end;local d;do repeat for b,e in ipairs(workspace.BikeSystem.Characters:GetChildren())do if e:FindFirstChildOfClass("Part").Name==client.Name then d=e:FindFirstChildOfClass("Part")break end end;task.wait()until d~=nil end;task.wait(7)for f=1,3 do warn(f)for g=1,#workspace.BikeSystem.Checkpoints:GetChildren()do firetouch(d,workspace.BikeSystem.Checkpoints[g])print(g)task.wait(0.1)end;firetouch(d,workspace.BikeSystem.Checkpoints[1])end]===]},
	[9604473769] = {'Tate McRae Concert Experience', [===[local a=game:GetService("ReplicatedStorage").OrchestraScenes.PSV.Events;a.AwardBadge:FireServer("Skydive")a.AwardBadge:FireServer("Runner")a.AwardBadge:FireServer("SONY")a.LogFace:FireServer("Coy")a.LogFace:FireServer("Red")a.LogFace:FireServer("Unr")a.LogFace:FireServer("Cap")for b,c in pairs(workspace:GetChildren())do if string.find(c.Name,"Token")then firetouch(client.Character.HumanoidRootPart,c["Meshes/Token_Token_Base"])end end]===]},
	[9680886326] = {'West Elm Home Design', [===[for a=1,10 do game:GetService("ReplicatedStorage").minigameComm.__comm__.RE["end"]:FireServer()end;task.wait(0.5)game:GetService("ReplicatedStorage").BuildClientComm.RF.Place:InvokeServer("Porto Outdoor Coffee Table")game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.MerchShopPurchase.RF.CallPurchase:InvokeServer(1)game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.MerchShopPurchase.RF.CallPurchase:InvokeServer(2)game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.MinigameService.RE.AddPlayer:FireServer("Obby")]===]},
	[9291030453] = {'The Chainsmokers Concert Experience', [===[local function a(b)for c,d in ipairs(b:GetChildren("Credits To: https://v3rmillion.net/member.php?action=profile&uid=843091"))do game:GetService("ReplicatedStorage").Events.UpdateData:FireServer(d.Name)end end;a(game:GetService("ReplicatedStorage")["VenueUI_PlayerData"].LettersVenue)a(game:GetService("ReplicatedStorage")["VenueUI_PlayerData"].LettersConcert)]===]},
	[9648883891] = {'Festival Tycoon', [===[game:GetService("ReplicatedStorage").RemoteObjects.ClaimMainStageChallenge:FireServer()game:GetService("ReplicatedStorage").RemoteObjects.IncrementBeachCash:FireServer(5000000000)game:GetService("ReplicatedStorage").RemoteObjects.DanceGameCash:FireServer(5000000000)local a={"Alex","Drew","Mooshu","Oliver"}for b,c in ipairs(a)do game:GetService("ReplicatedStorage").RemoteObjects.UnlockedChainsmoker:FireServer(c)task.wait(0.1)end;task.wait(1.5)for d,e in ipairs(game:GetService("Workspace").Buttons:GetChildren("Credits To: https://v3rmillion.net/member.php?action=profile&uid=843091"))do for d,f in ipairs(e:GetChildren("true"))do game:GetService("ReplicatedStorage").RemoteObjects.RequestButtonPurchase:FireServer(f.Name)end end]===]},
	[1871632192] = {'Roblox Creator Challenge', [===[for a=1,10 do game:GetService("ReplicatedStorage").Events.FinishQuiz:InvokeServer("Lesson"..tostring(a))end]===]},
	[2546610365] = {'Roblox Creator Challenge (Libary)', [===[for a=1,10 do game:GetService("ReplicatedStorage").Events.FinishQuiz:InvokeServer("Lesson"..tostring(a))end]===]},
	[3204381131] = {'Roblox Creator Quiz', [===[for a=1,10 do game:GetService("ReplicatedStorage").Events.FinishQuiz:InvokeServer("Lesson"..tostring(a))end]===]},
	[4201429814] = {'Roblox Creator Challenge (Space)', [===[for a=1,10 do game:GetService("ReplicatedStorage").Events.FinishQuiz:InvokeServer("Lesson"..tostring(a))end]===]},
	[9486506804] = {"FIFA World", [===[for a,b in ipairs(workspace.ScavengerHunt.Step1.Objects:GetChildren())do if b.ClassName=="Model"then firetouch(client.Character.HumanoidRootPart,b.Root)end end]===]}
}

local genv = getgenv()
genv.client = game:GetService("Players").LocalPlayer

function genv.firetouch(toucher, totouch)
	firetouchinterest(toucher, totouch, 0)
	firetouchinterest(toucher, totouch, 1)
end

warn("[EventBypass] Launching:", games[game.PlaceId][1])
loadstring(games[game.PlaceId][2])("Credits: https://v3rmillion.net/member.php?action=profile&uid=843091")
