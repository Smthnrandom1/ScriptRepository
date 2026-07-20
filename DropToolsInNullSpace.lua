local Players = game:GetService("Players")
local lp = Players.LocalPlayer
local backpack = lp.Backpack

-- equip every tool inside the backpack
for i,v in pairs(backpack:GetChildren()) do
	if v:IsA("Tool") then
		v.Parent = lp.Character
	end
end

for i,v in pairs(lp.Character:GetChildren()) do
	if v:IsA("Tool") and v.CanBeDropped == true then
		v.Parent = workspace
		
	elseif v:IsA("Tool") and v.CanBeDropped == false then
		v.Parent = backpack
		
	end
end
