for i, tbl in pairs(require(game:GetService("ReplicatedStorage").Config.Items).items) do
    game:GetService("ReplicatedStorage").RemoteEvent:FireServer("requestFreeBadge", tbl.id, true)
end