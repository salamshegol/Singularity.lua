local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

local noclipButton = script.Parent.PlayerFrame.NoclipButton
local orangeColor = Color3.fromRGB(255, 170, 0)
local whiteColor = Color3.fromRGB(255, 255, 255)
local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local noclipEnabled = false

local function setNoclip(state)
	local char = player.Character
	if not char then return end

	for _, part in pairs(char:GetDescendants()) do
		if part:IsA("BasePart") then
			part.CanCollide = not state
		end
	end
end

noclipButton.MouseButton1Click:Connect(function()
	noclipEnabled = not noclipEnabled
	TweenService:Create(noclipButton, tweenInfo, {BackgroundColor3 = noclipEnabled and orangeColor or whiteColor}):Play()
	setNoclip(noclipEnabled)
end)

RunService.Stepped:Connect(function()
	if noclipEnabled and player.Character then
		local char = player.Character
		local hrp = char:FindFirstChild("HumanoidRootPart")
		if hrp then
			hrp.CanCollide = false
		end
		for _, part in pairs(char:GetDescendants()) do
			if part:IsA("BasePart") then
				part.CanCollide = false
			end
		end
	end
end)

player.CharacterAdded:Connect(function(char)
	task.wait(0.1)
	if noclipEnabled then
		setNoclip(true)
	end
end)
