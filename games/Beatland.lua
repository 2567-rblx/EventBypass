for i, item in pairs(workspace.Lib.Items.ItemSettings:GetChildren()) do
	coroutine.wrap(function()
		game:GetService("ReplicatedStorage").TGSItemShops_BuyItem:InvokeServer(item.Name, 0)
	end)()
end