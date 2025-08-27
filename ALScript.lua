local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")

local setButton = script.Parent.AutoLockFrame.ALSetPosButton
local toggleButton = script.Parent.AutoLockFrame.ALButton
local intervalBox = script.Parent.AutoLockFrame.IntervalBox
local cframeLabel = script.Parent.AutoLockFrame.CFrameLabel

local orangeColor = Color3.fromRGB(255, 170, 0)
local whiteColor = Color3.fromRGB(255, 255, 255)
local tweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

local savedCFrame = nil
local running = false

setButton.MouseButton1Click:Connect(function()
	savedCFrame = hrp.CFrame
	local pos = savedCFrame.Position
	cframeLabel.Text = string.format("CFrame: %.5f, %.5f, %.5f", pos.X, pos.Y, pos.Z)
end)

toggleButton.MouseButton1Click:Connect(function()
	local interval = tonumber(intervalBox.Text)
	if not savedCFrame or not interval or interval <= 0 then
		return
	end

	running = not running

	TweenService:Create(toggleButton, tweenInfo, {BackgroundColor3 = running and orangeColor or whiteColor}):Play()

	if running then
		task.spawn(function()
			while running do
				local originalCFrame = hrp.CFrame
				hrp.CFrame = savedCFrame
				task.wait(0.2)
				hrp.CFrame = originalCFrame
				task.wait(interval)
			end
		end)
	end
end)
