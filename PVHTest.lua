
local PVHS = {}

function PVHS:Create()

	local TestUiLib = Instance.new("ScreenGui")
	local main = Instance.new("Frame")
	local Pattern = Instance.new("ImageLabel")
	local loadingscrren = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local desc = Instance.new("TextLabel")
	local title = Instance.new("TextLabel")
	local Close = Instance.new("TextButton")


	TestUiLib.Name = "TestUiLib"
	TestUiLib.Parent = game.CoreGui
	TestUiLib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	main.Name = "main"
	main.Parent = TestUiLib
	main.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	main.BorderColor3 = Color3.fromRGB(189, 238, 255)
	main.Position = UDim2.new(0.0204081684, 0, 0.428220868, 0)
	main.Size = UDim2.new(0, 356, 0, 441)

	Pattern.Name = "Pattern"
	Pattern.Parent = main
	Pattern.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Pattern.BackgroundTransparency = 1.000
	Pattern.ClipsDescendants = true
	Pattern.Position = UDim2.new(0, 0, 0.00226757373, 0)
	Pattern.Size = UDim2.new(0, 356, 0, 440)
	Pattern.ZIndex = 9
	Pattern.Image = "rbxassetid://2151741365"
	Pattern.ScaleType = Enum.ScaleType.Tile
	Pattern.SliceCenter = Rect.new(0, 256, 0, 256)
	Pattern.TileSize = UDim2.new(0, 250, 0, 250)

	loadingscrren.Name = "loadingscrren"
	loadingscrren.Parent = Pattern
	loadingscrren.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	loadingscrren.BorderColor3 = Color3.fromRGB(189, 238, 255)
	loadingscrren.Position = UDim2.new(0.0168539323, 0, 0.104308389, 0)
	loadingscrren.Size = UDim2.new(0, 344, 0, 389)
	
	desc.Name = "desc"
	desc.Parent = Pattern
	desc.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	desc.BorderColor3 = Color3.fromRGB(189, 238, 255)
	desc.Position = UDim2.new(0.0168539323, 0, 0.0453514792, 0)
	desc.Size = UDim2.new(0, 344, 0, 20)
	desc.Font = Enum.Font.SourceSans
	desc.Text = "Im using PVH"
	desc.TextColor3 = Color3.fromRGB(255, 255, 255)
	desc.TextSize = 14.000
	desc.TextXAlignment = Enum.TextXAlignment.Left
	
	title.Name = "title"
	title.Parent = Pattern
	title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	title.BackgroundTransparency = 1.000
	title.BorderColor3 = Color3.fromRGB(189, 238, 255)
	title.Position = UDim2.new(0.0168539323, 0, 0, 0)
	title.Size = UDim2.new(0, 316, 0, 20)
	title.Font = Enum.Font.SourceSans
	title.Text = "PVHs"
	title.TextColor3 = Color3.fromRGB(255, 255, 255)
	title.TextSize = 14.000
	title.TextXAlignment = Enum.TextXAlignment.Left


	Close.Name = "Close"
	Close.Parent = Pattern
	Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Close.BackgroundTransparency = 1.000
	Close.Position = UDim2.new(0.932584286, 0, 0, 0)
	Close.Size = UDim2.new(0, 18, 0, 19)
	Close.Font = Enum.Font.SourceSans
	Close.Text = "X"
	Close.TextColor3 = Color3.fromRGB(255, 255, 255)
	Close.TextSize = 14.000
	Close.MouseButton1Down:Connect(function()
		TestUiLib:Destroy()
	end)	

	UIListLayout.Parent = loadingscrren
	UIListLayout.Padding = UDim.new(0, 2)

	local PVHMain = {}

	function PVHMain:NewButton(name, callback)
		local TextButton = Instance.new("TextButton")
		local callback = callback or function() end

		TextButton.Parent = loadingscrren
		TextButton.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
		TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.BorderSizePixel = 0
		TextButton.Size = UDim2.new(0, 344, 0, 24)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.Text = name
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextSize = 14.000

		TextButton.MouseButton1Down:Connect(function()
			pcall(callback)
		end)

	end

	function PVHMain:Title(name)
		title.Text = name

		rconsolename(name)
		rconsoleprint("Loaded "..name.."")

	end	

	function PVHMain:SetDesc(name)
		desc.Text = name
	end

	return  PVHMain
end

return PVHS







