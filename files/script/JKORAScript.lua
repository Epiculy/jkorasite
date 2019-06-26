setsky = function(sky,tex)
	sky.SkyboxBk = tex
	sky.SkyboxDn = tex
	sky.SkyboxFt = tex
	sky.SkyboxRt = tex
	sky.SkyboxLf = tex
	sky.SkyboxUp = tex
end

for i,v in pairs(game.Lighting:GetChildren()) do
	if tostring(v.className) == "Sky" then
		setsky(v,"http://www.roblox.com/asset/?id=2897145648")
	end
end


local a = 0
recursion = function(child)
	for i,v in pairs(child:GetChildren()) do
		if tostring(v.className) == "Part" or tostring(v.className) == "SpawnLocation" or tostring(v.className) == "TrussPart" then
			v.CanCollide = false
			v.Anchored = true
			v.BrickColor = BrickColor.new(Color3.new(math.random(),math.random(),math.random()))
			v.CFrame = v.CFrame * CFrame.Angles(.1,.1,.1) * CFrame.new(math.sin(a*5)*40,math.cos(a*5)*40,math.sin(a*5)*40)
			v.CFrame = v.CFrame * CFrame.new(v.Position.Unit * (math.sin(a*1)*30) )
		elseif tostring(v.className) == "Sound" then
			v.Pitch = math.random() + .5
			v.Volume = math.random()
			v.Parent = game.Workspace
			v:Play()                
		end
		recursion(v)
	end
end

while wait(.1) do
	a = a + .1
    recursion(game.Workspace)
end