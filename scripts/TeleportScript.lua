local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

local teleportButton = script.Parent.MiscFrame.TeleportButton

local stepDistance = 3
local orangeColor = Color3.fromRGB(255, 170, 0)
local whiteColor = Color3.fromRGB(255, 255, 255)

local tweenInfoGreen = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
local tweenInfoRed = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

teleportButton.MouseButton1Click:Connect(function()
	if not hrp then return end
	local lookVector = hrp.CFrame.LookVector
	local newPosition = hrp.Position + (lookVector * stepDistance)
	hrp.CFrame = CFrame.new(newPosition, newPosition + lookVector)

	local tweenGreen = TweenService:Create(teleportButton, tweenInfoGreen, {BackgroundColor3 = orangeColor})
	local tweenRed = TweenService:Create(teleportButton, tweenInfoRed, {BackgroundColor3 = whiteColor})

	tweenGreen:Play()
	tweenGreen.Completed:Wait()
	tweenRed:Play()
end)
