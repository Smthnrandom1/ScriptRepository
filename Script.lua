local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.Name = "Github Tool"
tool.RequiresHandle = false

tool.Activated:Connect(function()
	print("Github tool activated!")
end)
