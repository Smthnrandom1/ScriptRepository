local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local backpack = lp.Backpack

-- teleport the localplayer high up in the sky
if lp.Character and lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character.HumanoidRootPart.CFrame = CFrame.new(0, 999999999999999, 0)
elseif lp.Character and not lp.Character:FindFirstChild("HumanoidRootPart") then
	lp.Character:PivotTo(CFrame.new(0, 999999999999999, 0))
end

-- equip every tool inside the backpack
for i,v in pairs(backpack:GetChildren()) do
	if v:IsA("Tool") then
		v.Parent = lp.Character
	end
end

-- drop every tool inside the character but if it cant be dropped put it back in the backpack
for i,v in pairs(lp.Character:GetChildren()) do
	if v:IsA("Tool") and v.CanBeDropped == true then
		v.Parent = workspace
		
	elseif v:IsA("Tool") and v.CanBeDropped == false then
		v.Parent = backpack
		
	end
end
