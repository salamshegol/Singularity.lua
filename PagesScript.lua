local plrFrame = script.Parent.PlayerFrame
local ALFrame = script.Parent.AutoLockFrame
local MiscFrame = script.Parent.MiscFrame
local settingsFrame = script.Parent.SettingsFrame

local plrButton = script.Parent.UpFrame.PlayerButton
local MiscButton = script.Parent.UpFrame.MiscButton
local ALButton = script.Parent.UpFrame.AutoLockButton
local settingsButton = script.Parent.UpFrame.SettingsButton

local orangeColor = Color3.fromRGB(255, 170, 0)
local whiteColor = Color3.fromRGB(255, 255, 255)

local buttons = {
	[plrButton] = plrFrame,
	[ALButton] = ALFrame,
	[MiscButton] = MiscFrame,
	[settingsButton] = settingsFrame
}

local function openFrame(clickedButton)
	for button, frame in pairs(buttons) do
		if button == clickedButton then
			frame.Visible = true
			button.ImageColor3 = orangeColor
		else
			frame.Visible = false
			button.ImageColor3 = whiteColor
		end
	end
end

for button, _ in pairs(buttons) do
	button.MouseButton1Click:Connect(function()
		openFrame(button)
	end)
end
