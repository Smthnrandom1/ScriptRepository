for i,v in pairs(workspace.Regen:GetChildren()) do
	if v:IsA("Model") and v:FindFirstChildOfClass("Tool") then
		local v = v:FindFirstChildOfClass("Tool")
		
		if v:FindFirstChild("Handle") then
			firetouchinterest(v.Handle, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
			wait(0.1)
			firetouchinterest(v.Handle, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
		end
	end
end

print("done")
