for i=1, 10 do
    game:GetService("ReplicatedStorage").minigameComm.__comm__.RE["end"]:FireServer()
end
task.wait(0.5)

-- Shoulder Plant
game:GetService("ReplicatedStorage").BuildClientComm.RF.Place:InvokeServer("Porto Outdoor Coffee Table")

-- Backpack; Hedphones
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.MerchShopPurchase.RF.CallPurchase:InvokeServer(1)
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.MerchShopPurchase.RF.CallPurchase:InvokeServer(2)

-- Sophisticated Glasses
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.MinigameService.RE.AddPlayer:FireServer("Obby")