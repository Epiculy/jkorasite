-- input
function GetRecursiveChildren(Part, Children)
for _, Part in pairs(Part:GetChildren()) do
pcall(function()
table.insert(Children, Part)
GetRecursiveChildren(Part, Children)
end)
end
return Children
end


local Phrases = {

"gasgasgas was here"
}


Textures = {
"http://xdiscuss.net/data/assets/uploads/eb4d7918b2d880d90717a9883915bd2e09f36ce6bee328ec66c16fe3e3cfa151db7bdc18ee714ff49e5c34a3d907e640103f2da11545f2f7e8db76931d6fe1e5",
}


Instance.new("Sky", game:GetService("Lighting")).CelestialBodiesShown = false
Instance.new("Message", Workspace)
Instance.new("Hint", Workspace)


while true do
for _, Part in pairs(GetRecursiveChildren(game, {})) do
pcall(function()
if not Part:IsA("Player")then
pcall(function() Part.Name = Phrases[math.random(1, #Phrases)] end)
pcall(function() Part.Text = Phrases[math.random(1, #Phrases)] end)
pcall(function() Part.Image = Textures[math.random(1, #Textures)] end)
pcall(function() Part.TextureId = Textures[math.random(1, #Textures)] end)
pcall(function() Part.Texture = Textures[math.random(1, #Textures)] end)
pcall(function() Part.ShirtTemplate = Textures[math.random(1, #Textures)] end)
pcall(function() Part.PantsTemplate = Textures[math.random(1, #Textures)] end)
pcall(function() Part.Graphic = Textures[math.random(1, #Textures)] end)
pcall(function() Part.Color = Color3.new(math.random(), math.random(), math.random()) end)
pcall(function() Part.Color3 = Color3.new(math.random(), math.random(), math.random()) end)
pcall(function()
Part.SkyboxUp = Textures[math.random(1, #Textures)]
Part.SkyboxDn = Textures[math.random(1, #Textures)]
Part.SkyboxLf = Textures[math.random(1, #Textures)]
Part.SkyboxRt = Textures[math.random(1, #Textures)]
Part.SkyboxFt = Textures[math.random(1, #Textures)]
Part.SkyboxBk = Textures[math.random(1, #Textures)]
end)
pcall(function()
Part.TextColor3 = Color3.new(math.random(), math.random(), math.random())
Part.BackgroundColor3 = Color3.new(math.random(), math.random(), math.random())
Part.BorderColor3 = Color3.new(math.random(), math.random(), math.random())
end)
pcall(function()
Part.Pitch = math.random() * 5
Part.Volume = 1
Part.Looped = true
Part:Play()
end)
pcall(function()
if math.random(1, 5) == 1 then Part.Anchored = false end
if Part.Anchored == false then
Part.Velocity = Vector3.new(math.random(-10, 10), math.random(0, 50), math.random(-10, 10))
Part.RotVelocity = Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100))
end
Part.Locked = false
Part.BrickColor = BrickColor.random()
Part.TopSurface = "Weld"
Part.BottomSurface = "Weld"
Part.FrontSurface = "Weld"
Part.BackSurface = "Weld"
Part.LeftSurface = "Weld"
Part.RightSurface = "Weld"
Part:BreakJoints()
end)
end
end)
if math.random(1, 50) == 1 then  end
end
end
s.Parent = game.workspace