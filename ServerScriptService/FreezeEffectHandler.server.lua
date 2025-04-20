local rep = game:GetService("ReplicatedStorage")
local remote = rep.ShowFreeze
local freezepart = Instance.new("Part")
freezepart.Size = Vector3.new(4.5, 6, 4.5)
freezepart.Color = Color3.new(0.520851, 0.908446, 1)
freezepart.Transparency = 0.5
local iceproperties = PhysicalProperties.new(1,0.01,1,100,1)
freezepart.CustomPhysicalProperties = iceproperties
local freezeweld = Instance.new("Weld")
remote.OnServerEvent:Connect(function(plr)
	local weldclone = freezeweld:Clone()
	local char = plr.Character
	local freezeclone = freezepart:Clone()
	local hrp = char:WaitForChild("HumanoidRootPart")
	local hum = char:WaitForChild("Humanoid")	
	hum.PlatformStand = true	
	freezeclone.Parent = workspace
	local animatescript = char:WaitForChild("Animate")
	local freezesound = hrp.Parent.FreezeSound
	local icebreak = hrp.Parent.IceBreak
	weldclone.Parent = hrp	
	weldclone.Part0 = hrp
	weldclone.Part1 = freezeclone
	print(plr.Name.."Is frozen")
	freezesound:Play()
	animatescript.Enabled = false
	wait(5)
	icebreak:Play()	
	animatescript.Enabled = true
	weldclone:Destroy()
	freezeclone.CanCollide = false
	hum.PlatformStand = false
end)
