local gui = script.Parent.Parent 
local button = script.Parent.SettingsFrame.UnhookButton

button.MouseButton1Click:Connect(function()
	gui:Destroy()
end)
