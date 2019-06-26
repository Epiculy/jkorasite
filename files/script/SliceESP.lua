-- by slice

local MainParent = game.CoreGui
local LineFrame = Instance.new("ScreenGui",MainParent)
LineFrame.Name = "Lines"


local Spotted = {};
local CharacterMotors = {}
CharacterMotors.GetMotors = function(char)
	local Motors = {}
		for i,v in pairs(char:GetDescendants()) do
			if v:IsA("Motor6D") then
				if v.Part0 and v.Part1 then--and v.Part0.Name ~= "HumanoidRootPart" and v.Part1.Name ~= "HumanoidRootPart" then
					table.insert(Motors,{v.Part0,v.Part1})
				end
			end
		end
	table.insert(Motors,{char:FindFirstChild("Head") or char.PrimaryPart,"Camera"})
	CharacterMotors[char] = Motors
	return CharacterMotors[char]
end
		
lerp = function(a, b, t)
	return a + (b - a) * t
end

local ESP = {Characters = {}}
ESP.Init = function(char,plr)
	if (game:GetService("Players").LocalPlayer.Team == nil or plr.Team ~= game:GetService("Players").LocalPlayer.Team) then
		char.DescendantAdded:Connect(function()
			CharacterMotors.GetMotors(char)
		end)
		
		local BillboardUi = Instance.new("BillboardGui")
		BillboardUi.AlwaysOnTop = true
		BillboardUi.Size = UDim2.new(3,60,1,30)
		BillboardUi.StudsOffsetWorldSpace = Vector3.new(0,-4.5,0)
		BillboardUi.Adornee = char:WaitForChild("HumanoidRootPart")
		
		local PlayerName = Instance.new("TextLabel",BillboardUi)
		PlayerName.BackgroundTransparency = 1
		PlayerName.TextColor3 = (game:GetService("Players"):GetPlayerFromCharacter(char)).TeamColor.Color
		PlayerName.Size = UDim2.new(1,0,.3,0)
		PlayerName.ZIndex = 2
		PlayerName.Text = char.Name
		PlayerName.TextScaled = true
		PlayerName.TextStrokeTransparency = .5
		PlayerName.Font = Enum.Font.GothamBold
		PlayerName.TextStrokeColor3 = Color3.fromRGB(33, 33, 33)
		
		local Distance = PlayerName:Clone()
		Distance.Parent = BillboardUi
		Distance.Font = Enum.Font.Gotham
		Distance.TextColor3 = Color3.new(1,1,1)
		Distance.Position = UDim2.new(0,0,.3,0)
		
		local Health = PlayerName:Clone()
		Health.Parent = BillboardUi
		Health.Font = Enum.Font.Gotham
		Health.Position = UDim2.new(0,0,.6,0)
		
		ESP.Characters[char] = {PlayerName,Distance,Health,BillboardUi}
	end
end
ESP.Render = function()
	
	for i,v in pairs(ESP.Characters) do
		pcall(function()
			local shrink = ((((game.Workspace.CurrentCamera.CFrame.p) - i.HumanoidRootPart.Position).Magnitude)/1500)+1
			v[2].Text = math.floor(((game.Workspace.CurrentCamera.CFrame.p) - i.HumanoidRootPart.Position).Magnitude+.5)
			v[3].Text = math.floor(((i.Humanoid.Health/i.Humanoid.MaxHealth)*100)+.5).."%"
			v[3].TextColor3 = Color3.fromHSV((i.Humanoid.Health/i.Humanoid.MaxHealth) * (80/255),1,1)
			if not Spotted[i] then
				v[1].TextTransparency = lerp(v[1].TextTransparency,.6,0.05)
			else
				v[1].TextTransparency = lerp(v[1].TextTransparency,0,0.1)
			end
			v[1].TextColor3 = (game:GetService("Players"):GetPlayerFromCharacter(i)).TeamColor.Color
			v[1].TextStrokeTransparency = 1-((1-v[1].TextTransparency)/2)
			v[2].TextTransparency = v[1].TextTransparency
			v[2].TextStrokeTransparency = v[1].TextStrokeTransparency
			v[3].TextTransparency = v[1].TextTransparency
			v[3].TextStrokeTransparency = v[1].TextStrokeTransparency
			v[4].Size = UDim2.new(3,60/shrink,1,30/shrink)
			v[4].Parent = MainParent
		end)
	end
	
end

local Perspective = {}
Perspective.CalculatePoint = function(position,cam)
	local vector, onScreen = cam:WorldToScreenPoint(position)
	return Vector2.new(vector.X, vector.Y),vector.Z,onScreen
end

local Draw = {UsedLines = {}}
Draw.Line = function(a,b,line,width)
	if a and b then	
		local lerp = a:Lerp(b,.5)
		local Magnitude = (a-b).Magnitude
		line.AnchorPoint = Vector2.new(0.5,.5)
		line.Position = UDim2.new(lerp.X/game.Workspace.CurrentCamera.ViewportSize.X,0,(lerp.Y/(game.Workspace.CurrentCamera.ViewportSize.Y-36)),36/2)
		line.Size = UDim2.new(Magnitude/line.Parent.AbsoluteSize.X,0,0,width)
		line.Rotation = math.deg(math.atan2(a.y - b.y, a.x - b.x))
	else
		line:Destroy()
	end
end


Draw.Character = function(player,lines,cam)
	local Motors = CharacterMotors[player]
	if not Motors then
		Motors = CharacterMotors.GetMotors(player)
	end

	for i,v in pairs(Motors) do
		if v[1] and v[2] then
			local FoundLine = nil
			for i,v in pairs(lines:GetChildren()) do
				if Draw.UsedLines[v] == nil then
					Draw.UsedLines[v] = true
					FoundLine = v
					break
				end
			end
			local a2d,az,screen = Perspective.CalculatePoint(v[1].Position,cam)
			local b2d,bz,screen2
			local v2pos = v[2].Position
			Spotted[player] = false
			if v[2] == "Camera" then
				local ray = Ray.new(v[1].Position, (cam.CFrame.p - v[1].Position).unit * (cam.CFrame.p - v[1].Position).Magnitude)
				local part, position = workspace:FindPartOnRayWithIgnoreList(ray, {game:GetService("Players").LocalPlayer.Character,player}, false, true)
				if part then
					screen = false
					screen2 = false
				else
					Spotted[player] = true
					b2d,bz,screen2 = Vector2.new(cam.ViewportSize.x/2, cam.ViewportSize.y),0,true	
					screen = true
				end
				v2pos = v[1].Position
			else
				b2d,bz,screen2 = Perspective.CalculatePoint(v[2].Position,cam)	
			end
			if screen and screen2 and (v[1].Position-v2pos).Magnitude <= 5 then
				if not FoundLine then
					FoundLine = Instance.new("Frame")
					FoundLine.BackgroundColor3 = Color3.new(1,1,1)
					FoundLine.BackgroundTransparency = .25
					FoundLine.BorderSizePixel = 0
					FoundLine.Parent = lines	
					Draw.UsedLines[FoundLine] = true
				end
				if screen then
					Draw.Line(a2d,b2d,FoundLine,1)
				else
					Draw.Line(b2d,a2d,FoundLine,1)
				end
			elseif FoundLine then
				FoundLine:Destroy()
			end
		end
	end
end

Draw.ResetLines = function(lines)
	for i,v in pairs(lines:GetChildren()) do
		if Draw.UsedLines[v] == nil then
			v:Destroy()
		end
	end
	Draw.UsedLines = {}
end

local AddPlayer = function(plr)
	coroutine.resume(coroutine.create(function()
		if plr ~= game:GetService("Players").LocalPlayer  then
			if plr.Character then
				ESP.Init(plr.Character,plr)
			end
			plr.CharacterAdded:Connect(function(cha)
				ESP.Init(cha,plr)
			end)
		end
	end))
end

for i,v in pairs(game:GetService("Players"):GetChildren()) do
	AddPlayer(v)
end
game:GetService("Players").PlayerAdded:Connect(function(v)
	AddPlayer(v)
end)




game:GetService("RunService").RenderStepped:Connect(function()
	ESP.Render()
	for i,v in pairs(game:GetService("Players"):GetChildren()) do
		if v.Character and v ~= game:GetService("Players").LocalPlayer and (game:GetService("Players").LocalPlayer.Team == nil or v.Team ~= game:GetService("Players").LocalPlayer.Team) then
			if v.Character.PrimaryPart and (v.Character.PrimaryPart.Position - game.Workspace.CurrentCamera.CFrame.Position).Magnitude <= 200 then
				Draw.Character(v.Character,LineFrame,game.Workspace.CurrentCamera)
			end
		end
	end
	Draw.ResetLines(LineFrame)
end)