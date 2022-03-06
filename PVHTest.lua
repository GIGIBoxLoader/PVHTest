
local PVHS = {}

function PVHS:Create()

	local Derrle = Instance.new("ScreenGui")
	local main = Instance.new("Frame")
	local title = Instance.new("TextLabel")
	local desc = Instance.new("TextLabel")
	local loadingscrren = Instance.new("Frame")
	local TextButton = Instance.new("TextButton")
	local UIListLayout = Instance.new("UIListLayout")

	Derrle.Name = "Derrle"
	Derrle.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	Derrle.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	main.Name = "main"
	main.Parent = Derrle
	main.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	main.BorderColor3 = Color3.fromRGB(189, 238, 255)
	main.Position = UDim2.new(0.0204081684, 0, 0.428220868, 0)
	main.Size = UDim2.new(0, 356, 0, 441)

	loadingscrren.Name = "loadingscrren"
	loadingscrren.Parent = main
	loadingscrren.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
	loadingscrren.BorderColor3 = Color3.fromRGB(189, 238, 255)
	loadingscrren.Position = UDim2.new(0.0168539323, 0, 0.104308389, 0)
	loadingscrren.Size = UDim2.new(0, 344, 0, 389)

	title.Name = "title"
	title.Parent = main
	title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	title.BackgroundTransparency = 1.000
	title.BorderColor3 = Color3.fromRGB(189, 238, 255)
	title.Position = UDim2.new(0.0168539323, 0, 0, 0)
	title.Size = UDim2.new(0, 194, 0, 20)
	title.Font = Enum.Font.SourceSans
	title.Text = ""
	title.TextColor3 = Color3.fromRGB(255, 255, 255)
	title.TextSize = 14.000
	title.TextXAlignment = Enum.TextXAlignment.Left

	desc.Name = "desc"
	desc.Parent = main
	desc.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
	desc.BorderColor3 = Color3.fromRGB(189, 238, 255)
	desc.Position = UDim2.new(0.0168539323, 0, 0.0453514755, 0)
	desc.Size = UDim2.new(0, 334, 0, 20)
	desc.Font = Enum.Font.SourceSans
	desc.Text = ""
	desc.TextColor3 = Color3.fromRGB(255, 255, 255)
	desc.TextSize = 14.000
	desc.TextXAlignment = Enum.TextXAlignment.Left

	if title.Text == "" then
		rconsolename("PVHS")
		rconsoleerr("Error with the Main:Title please provide a text on title.Text")
		Derrle:Destroy()
	elseif title.Text then
		rconsoleprint("Loaded the UI. Waiting for the info")
		wait(1)
		rconsoleinfo("PVHS BETA, 0.1 BETA TEST")
	end


	local PVHMain = {}

	function PVHMain:NewButton(name, callback)

		local callback = callback or function() end

		TextButton.Parent = loadingscrren
		TextButton.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
		TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.BorderSizePixel = 0
		TextButton.Position = UDim2.new(0.0174418613, 0, 0.0154241649, 0)
		TextButton.Size = UDim2.new(0, 202, 0, 19)
		TextButton.Font = Enum.Font.SourceSans
		TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextButton.TextSize = 14.000
		TextButton.Text = name	

	end

	function PVHS:Title(name)
		title.Text = name
		rconsolename(name)

	end	

	function PVHS:SetDesc(name)
		desc.Text = name
	end

	return  PVHMain
end

return PVHS




