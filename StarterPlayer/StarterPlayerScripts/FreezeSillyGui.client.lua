local player = game:GetService("Players")
local plr = player.LocalPlayer
local plrgui = plr:WaitForChild("PlayerGui")
local effectgui = plrgui:WaitForChild("FreezeEffectUi")
local rep = game:GetService("ReplicatedStorage")
local remote = rep.ShowFreeze
local char = plr.Character
local effectcheck = char:WaitForChild("Effect")

effectcheck.Changed:Connect(function()
	if effectcheck.Value == 1 then
		effectgui.Enabled = true
		remote:FireServer()
	else
		effectgui.Enabled = false
	end
end)
