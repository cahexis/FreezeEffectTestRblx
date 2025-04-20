local freezepart = script.Parent
local db = 0
freezepart.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") then
		if db == 0 then
			db = 1
			hit.Parent.Effect.Value = 1
			wait(5)
			db = 0
			hit.Parent.Effect.Value = 0
		end
	end
end)
