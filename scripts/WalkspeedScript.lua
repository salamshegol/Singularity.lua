local Players = game:GetService("Players")
local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local humanoid = char:WaitForChild("Humanoid")
local TweenService = game:GetService("TweenService")

local walkSpeedButton = script.Parent.PlayerFrame.WalkspeedButton
local orangeColor = Color3.fromRGB(255, 170, 0)
local whiteColor = Color3.fromRGB(255, 255, 255)
local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local enabled = false
local originalSpeed = humanoid.WalkSpeed

walkSpeedButton.MouseButton1Click:Connect(function()
	enabled = not enabled
	local newColor = enabled and orangeColor or whiteColor
	local tween = TweenService:Create(walkSpeedButton, tweenInfo, {BackgroundColor3 = newColor})
	tween:Play()
	humanoid.WalkSpeed = enabled and 50 or originalSpeed
end)
