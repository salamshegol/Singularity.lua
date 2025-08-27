local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui", 5)

if not PlayerGui then
    error("Failed to find PlayerGui for local player")
end

local singularityGui = Instance.new("ScreenGui")
singularityGui.Name = "SingularityGui"
singularityGui.ResetOnSpawn = false
singularityGui.Parent = PlayerGui

local menuData = {
    Children = {
        {
            ClassName = "Frame",
            Name = "Singularity",
            Properties = {
                Visible = true,
                BackgroundTransparency = 0,
                Position = { XScale = 0.3227092921733856, XOffset = 0, YScale = 0.3364759385585785, YOffset = 0 },
                Size = { XScale = 0, XOffset = 289, YScale = 0, YOffset = 234 },
                BackgroundColor3 = { R = 0.11372549831867218, G = 0.11372549831867218, B = 0.11372549831867218 }
            },
            Children = {
                {ClassName = "UICorner", Name = "Corner", Properties = {}, Children = {}},
                {ClassName = "UIStroke", Name = "UIStroke", Properties = {}, Children = {}},
                {
                    ClassName = "Frame",
                    Name = "UpFrame",
                    Properties = {
                        Visible = true,
                        BackgroundTransparency = 0.25,
                        Position = { XScale = 0, XOffset = 0, YScale = -0.2222222238779068, YOffset = 0 },
                        Size = { XScale = 0, XOffset = 289, YScale = 0, YOffset = 46 },
                        BackgroundColor3 = { R = 0.05882353335618973, G = 0.05882353335618973, B = 0.05882353335618973 }
                    },
                    Children = {
                        {ClassName = "UICorner", Name = "Corner", Properties = {}, Children = {}},
                        {ClassName = "UIStroke", Name = "UIStroke", Properties = {}, Children = {}},
                        {
                            ClassName = "TextLabel",
                            Name = "Title",
                            Properties = {
                                Visible = true,
                                TextColor3 = { R = 1, G = 0.6666666865348816, B = 0 },
                                Text = "Singularity",
                                Font = "SourceSans",
                                BackgroundTransparency = 1,
                                Position = { XScale = 0.031141867861151696, XOffset = 0, YScale = 0.21739129722118379, YOffset = 0 },
                                Size = { XScale = 0, XOffset = 91, YScale = 0, YOffset = 27 },
                                TextSize = 14,
                                BackgroundColor3 = { R = 1, G = 1, B = 1 }
                            },
                            Children = {}
                        },
                        {
                            ClassName = "ImageButton",
                            Name = "PlayerButton",
                            Properties = {
                                Visible = true,
                                Image = "rbxassetid://112257173523450",
                                BackgroundTransparency = 1,
                                Position = { XScale = 0.41499999165534975, XOffset = 0, YScale = 0.15199999511241914, YOffset = 0 },
                                ImageTransparency = 0,
                                ImageColor3 = { R = 1, G = 1, B = 1 },
                                Size = { XScale = 0, XOffset = 31, YScale = 0, YOffset = 32 },
                                BackgroundColor3 = { R = 1, G = 1, B = 1 }
                            },
                            Children = {}
                        },
                        {
                            ClassName = "ImageButton",
                            Name = "AutoLockButton",
                            Properties = {
                                Visible = true,
                                Image = "rbxassetid://139471830119217",
                                BackgroundTransparency = 1,
                                Position = { XScale = 0.550000011920929, XOffset = 0, YScale = 0.15199999511241914, YOffset = 0 },
                                ImageTransparency = 0,
                                ImageColor3 = { R = 1, G = 1, B = 1 },
                                Size = { XScale = 0, XOffset = 31, YScale = 0, YOffset = 32 },
                                BackgroundColor3 = { R = 1, G = 1, B = 1 }
                            },
                            Children = {}
                        },
                        {
                            ClassName = "ImageButton",
                            Name = "MiscButton",
                            Properties = {
                                Visible = true,
                                Image = "rbxassetid://140266485849836",
                                BackgroundTransparency = 1,
                                Position = { XScale = 0.699999988079071, XOffset = 0, YScale = 0.15199999511241914, YOffset = 0 },
                                ImageTransparency = 0,
                                ImageColor3 = { R = 1, G = 1, B = 1 },
                                Size = { XScale = 0, XOffset = 31, YScale = 0, YOffset = 32 },
                                BackgroundColor3 = { R = 1, G = 1, B = 1 }
                            },
                            Children = {}
                        },
                        {
                            ClassName = "ImageButton",
                            Name = "SettingsButton",
                            Properties = {
                                Visible = true,
                                Image = "rbxassetid://80697630368344",
                                BackgroundTransparency = 1,
                                Position = { XScale = 0.8500000238418579, XOffset = 0, YScale = 0.15199999511241914, YOffset = 0 },
                                ImageTransparency = 0,
                                ImageColor3 = { R = 1, G = 1, B = 1 },
                                Size = { XScale = 0, XOffset = 31, YScale = 0, YOffset = 32 },
                                BackgroundColor3 = { R = 1, G = 1, B = 1 }
                            },
                            Children = {}
                        }
                    }
                },
                {
                    ClassName = "Frame",
                    Name = "PlayerFrame",
                    Properties = {
                        Visible = false,
                        BackgroundTransparency = 1,
                        Position = { XScale = 0, XOffset = 0, YScale = -0.0020438951905816795, YOffset = 0 },
                        Size = { XScale = 0, XOffset = 289, YScale = 0, YOffset = 233 },
                        BackgroundColor3 = { R = 1, G = 1, B = 1 }
                    },
                    Children = {
                        {
                            ClassName = "TextButton",
                            Name = "NoclipButton",
                            Properties = {
                                Visible = true,
                                TextColor3 = { R = 1, G = 1, B = 1 },
                                Text = "Noclip",
                                Font = "SourceSans",
                                BackgroundTransparency = 0.800000011920929,
                                Position = { XScale = 0.013840830884873867, XOffset = 0, YScale = 0.030042918398976327, YOffset = 0 },
                                Size = { XScale = 0, XOffset = 100, YScale = 0, YOffset = 19 },
                                TextSize = 14,
                                BackgroundColor3 = { R = 1, G = 1, B = 1 }
                            },
                            Children = {
                                {ClassName = "UICorner", Name = "UICorner", Properties = {}, Children = {}}
                            }
                        },
                        {
                            ClassName = "TextButton",
                            Name = "WalkspeedButton",
                            Properties = {
                                Visible = true,
                                TextColor3 = { R = 1, G = 1, B = 1 },
                                Text = "Walkspeed",
                                Font = "SourceSans",
                                BackgroundTransparency = 0.800000011920929,
                                Position = { XScale = 0.013840830884873867, XOffset = 0, YScale = 0.12999999523162843, YOffset = 0 },
                                Size = { XScale = 0, XOffset = 100, YScale = 0, YOffset = 19 },
                                TextSize = 14,
                                BackgroundColor3 = { R = 1, G = 1, B = 1 }
                            },
                            Children = {
                                {ClassName = "UICorner", Name = "UICorner", Properties = {}, Children = {}}
                            }
                        },
                        {
                            ClassName = "TextButton",
                            Name = "JumpheightButton",
                            Properties = {
                                Visible = true,
                                TextColor3 = { R = 1, G = 1, B = 1 },
                                Text = "Jumpheight",
                                Font = "SourceSans",
                                BackgroundTransparency = 0.800000011920929,
                                Position = { XScale = 0.013840830884873867, XOffset = 0, YScale = 0.23000000417232514, YOffset = 0 },
                                Size = { XScale = 0, XOffset = 100, YScale = 0, YOffset = 19 },
                                TextSize = 14,
                                BackgroundColor3 = { R = 1, G = 1, B = 1 }
                            },
                            Children = {
                                {ClassName = "UICorner", Name = "UICorner", Properties = {}, Children = {}}
                            }
                        }
                    }
                },
                {
                    ClassName = "Frame",
                    Name = "AutoLockFrame",
                    Properties = {
                        Visible = false,
                        BackgroundTransparency = 1,
                        Position = { XScale = 0, XOffset = 0, YScale = -0.0020438951905816795, YOffset = 0 },
                        Size = { XScale = 0, XOffset = 289, YScale = 0, YOffset = 233 },
                        BackgroundColor3 = { R = 1, G = 1, B = 1 }
                    },
                    Children = {
                        {
                            ClassName = "TextButton",
                            Name = "ALButton",
                            Properties = {
                                Visible = true,
                                TextColor3 = { R = 1, G = 1, B = 1 },
                                Text = "Enabled",
                                Font = "SourceSans",
                                BackgroundTransparency = 0.800000011920929,
                                Position = { XScale = 0.013840936124324799, XOffset = 0, YScale = 0.03875889629125595, YOffset = 0 },
                                Size = { XScale = 0, XOffset = 100, YScale = 0, YOffset = 19 },
                                TextSize = 14,
                                BackgroundColor3 = { R = 1, G = 1, B = 1 }
                            },
                            Children = {
                                {ClassName = "UICorner", Name = "UICorner", Properties = {}, Children = {}}
                            }
                        },
                        {
                            ClassName = "TextButton",
                            Name = "ALSetPosButton",
                            Properties = {
                                Visible = true,
                                TextColor3 = { R = 1, G = 1, B = 1 },
                                Text = "Set CFrame",
                                Font = "SourceSans",
                                BackgroundTransparency = 0,
                                Position = { XScale = 0.6087716221809387, XOffset = 0, YScale = 0.03875889629125595, YOffset = 0 },
                                Size = { XScale = 0, XOffset = 100, YScale = 0, YOffset = 19 },
                                TextSize = 14,
                                BackgroundColor3 = { R = 1, G = 0.6666666865348816, B = 0 }
                            },
                            Children = {
                                {ClassName = "UICorner", Name = "UICorner", Properties = {}, Children = {}}
                            }
                        },
                        {
                            ClassName = "TextBox",
                            Name = "IntervalBox",
                            Properties = {
                                Visible = true,
                                TextColor3 = { R = 1, G = 1, B = 1 },
                                Text = "In seconds",
                                Font = "SourceSans",
                                BackgroundTransparency = 0,
                                Position = { XScale = 0.5896226167678833, XOffset = 0, YScale = -0.5714285969734192, YOffset = 0 },
                                Size = { XScale = 0, XOffset = 73, YScale = 0, YOffset = 23 },
                                TextSize = 14,
                                BackgroundColor3 = { R = 0.27843138575553896, G = 0.27843138575553896, B = 0.27843138575553896 }
                            },
                            Children = {
                                {ClassName = "UICorner", Name = "UICorner", Properties = {}, Children = {}}
                            }
                        },
                        {
                            ClassName = "TextLabel",
                            Name = "IntervalLabel",
                            Properties = {
                                Visible = true,
                                TextColor3 = { R = 1, G = 1, B = 1 },
                                Text = "Interval",
                                Font = "SourceSans",
                                BackgroundTransparency = 1,
                                Position = { XScale = 0.020761245861649514, XOffset = 0, YScale = 0.678041934967041, YOffset = 0 },
                                Size = { XScale = 0, XOffset = 49, YScale = 0, YOffset = 28 },
                                TextSize = 14,
                                BackgroundColor3 = { R = 1, G = 1, B = 1 }
                            },
                            Children = {}
                        },
                        {
                            ClassName = "TextLabel",
                            Name = "CFrameLabel",
                            Properties = {
                                Visible = true,
                                TextColor3 = { R = 1, G = 1, B = 1 },
                                Text = "CFrame: ",
                                Font = "SourceSans",
                                BackgroundTransparency = 1,
                                Position = { XScale = 0.020761245861649514, XOffset = 0, YScale = 0.8452752232551575, YOffset = 0 },
                                Size = { XScale = 0, XOffset = 278, YScale = 0, YOffset = 29 },
                                TextSize = 14,
                                BackgroundColor3 = { R = 1, G = 1, B = 1 }
                            },
                            Children = {}
                        }
                    }
                },
                {
                    ClassName = "Frame",
                    Name = "MiscFrame",
                    Properties = {
                        Visible = false,
                        BackgroundTransparency = 1,
                        Position = { XScale = 0, XOffset = 0, YScale = -0.0020438951905816795, YOffset = 0 },
                        Size = { XScale = 0, XOffset = 289, YScale = 0, YOffset = 233 },
                        BackgroundColor3 = { R = 1, G = 1, B = 1 }
                    },
                    Children = {
                        {
                            ClassName = "TextButton",
                            Name = "TeleportButton",
                            Properties = {
                                Visible = true,
                                TextColor3 = { R = 1, G = 1, B = 1 },
                                Text = "Teleport",
                                Font = "SourceSans",
                                BackgroundTransparency = 0.800000011920929,
                                Position = { XScale = 0.013840936124324799, XOffset = 0, YScale = 0.032574959099292758, YOffset = 0 },
                                Size = { XScale = 0, XOffset = 100, YScale = 0, YOffset = 19 },
                                TextSize = 14,
                                BackgroundColor3 = { R = 1, G = 1, B = 1 }
                            },
                            Children = {
                                {ClassName = "UICorner", Name = "UICorner", Properties = {}, Children = {}}
                            }
                        }
                    }
                },
                {
                    ClassName = "Frame",
                    Name = "SettingsFrame",
                    Properties = {
                        Visible = false,
                        BackgroundTransparency = 1,
                        Position = { XScale = 0, XOffset = 0, YScale = -0.0020438951905816795, YOffset = 0 },
                        Size = { XScale = 0, XOffset = 289, YScale = 0, YOffset = 233 },
                        BackgroundColor3 = { R = 1, G = 1, B = 1 }
                    },
                    Children = {
                        {
                            ClassName = "TextButton",
                            Name = "UnhookButton",
                            Properties = {
                                Visible = true,
                                TextColor3 = { R = 1, G = 1, B = 1 },
                                Text = "Unhook",
                                Font = "SourceSans",
                                BackgroundTransparency = 0,
                                Position = { XScale = 0.6089965105056763, XOffset = 0, YScale = 0.8755365014076233, YOffset = 0 },
                                Size = { XScale = 0, XOffset = 100, YScale = 0, YOffset = 19 },
                                TextSize = 14,
                                BackgroundColor3 = { R = 1, G = 0.6666666865348816, B = 0 }
                            },
                            Children = {
                                {ClassName = "UICorner", Name = "UICorner", Properties = {}, Children = {}}
                            }
                        }
                    }
                }
            }
        }
    }
}

for _, item in ipairs(menuData.Children) do
    local obj = Instance.new(item.ClassName)
    obj.Name = item.Name or "Unnamed"

    if item.Properties then
        for prop, val in pairs(item.Properties) do
            local success, err = pcall(function()
                if prop == "Position" or prop == "Size" then
                    obj[prop] = UDim2.new(val.XScale or 0, val.XOffset or 0, val.YScale or 0, val.YOffset or 0)
                elseif prop == "TextColor3" or prop == "BackgroundColor3" or prop == "ImageColor3" then
                    obj[prop] = Color3.new(val.R or 0, val.G or 0, val.B or 0)
                elseif prop == "Font" then
                    obj[prop] = Enum.Font[val] or Enum.Font.SourceSans
                else
                    obj[prop] = val
                end
            end)
            if not success then
                warn("Failed to set property " .. prop .. " for " .. item.Name .. ": " .. tostring(err))
            end
        end
    end

    obj.Parent = singularityGui

    if item.Children then
        for _, childItem in ipairs(item.Children) do
            local childObj = Instance.new(childItem.ClassName)
            childObj.Name = childItem.Name or "Unnamed"

            if childItem.Properties then
                for prop, val in pairs(childItem.Properties) do
                    local success, err = pcall(function()
                        if prop == "Position" or prop == "Size" then
                            childObj[prop] = UDim2.new(val.XScale or 0, val.XOffset or 0, val.YScale or 0, val.YOffset or 0)
                        elseif prop == "TextColor3" or prop == "BackgroundColor3" or prop == "ImageColor3" then
                            childObj[prop] = Color3.new(val.R or 0, val.G or 0, val.B or 0)
                        elseif prop == "Font" then
                            childObj[prop] = Enum.Font[val] or Enum.Font.SourceSans
                        else
                            childObj[prop] = val
                        end
                    end)
                    if not success then
                        warn("Failed to set property " .. prop .. " for " .. childItem.Name .. ": " .. tostring(err))
                    end
                end
            end

            childObj.Parent = obj

            if childItem.Children then
                for _, grandChildItem in ipairs(childItem.Children) do
                    local grandChildObj = Instance.new(grandChildItem.ClassName)
                    grandChildObj.Name = grandChildItem.Name or "Unnamed"

                    if grandChildItem.Properties then
                        for prop, val in pairs(grandChildItem.Properties) do
                            local success, err = pcall(function()
                                if prop == "Position" or prop == "Size" then
                                    grandChildObj[prop] = UDim2.new(val.XScale or 0, val.XOffset or 0, val.YScale or 0, val.YOffset or 0)
                                elseif prop == "TextColor3" or prop == "BackgroundColor3" or prop == "ImageColor3" then
                                    grandChildObj[prop] = Color3.new(val.R or 0, val.G or 0, val.B or 0)
                                elseif prop == "Font" then
                                    grandChildObj[prop] = Enum.Font[val] or Enum.Font.SourceSans
                                else
                                    grandChildObj[prop] = val
                                end
                            end)
                            if not success then
                                warn("Failed to set property " .. prop .. " for " .. grandChildItem.Name .. ": " .. tostring(err))
                            end
                        end
                    end

                    grandChildObj.Parent = childObj
                end
            end
        end
    end
end

local singularityFrame = singularityGui:FindFirstChild("Singularity")
if not singularityFrame then
    error("Failed to find Frame 'Singularity' in SingularityGui")
end

local alScript = Instance.new("LocalScript")
alScript.Name = "ALScript"
alScript.Source = [[
    warn("ALScript initialized")
]]
alScript.Parent = singularityFrame
alScript.Disabled = false

local noclipScript = Instance.new("LocalScript")
noclipScript.Name = "NoclipScript"
noclipScript.Source = [[
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    warn("NoclipScript initialized")
    player:GetPropertyChangedSignal("Character"):Connect(function()
        local character = player.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid:GetPropertyChangedSignal("PlatformStand"):Connect(function()
                    humanoid.PlatformStand = true
                end)
            end
        end
    end)
]]
noclipScript.Parent = singularityFrame
noclipScript.Disabled = false

local teleportScript = Instance.new("LocalScript")
teleportScript.Name = "TeleportScript"
teleportScript.Source = [[
    warn("TeleportScript initialized")
]]
teleportScript.Parent = singularityFrame
teleportScript.Disabled = false

local walkspeedScript = Instance.new("LocalScript")
walkspeedScript.Name = "WalkspeedScript"
walkspeedScript.Source = [[
    warn("WalkspeedScript initialized")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    player:GetPropertyChangedSignal("Character"):Connect(function()
        local character = player.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.WalkSpeed = 32
            end
        end
    end)
]]
walkspeedScript.Parent = singularityFrame
walkspeedScript.Disabled = false

local jumpheightScript = Instance.new("LocalScript")
jumpheightScript.Name = "JumpheightScript"
jumpheightScript.Source = [[
    warn("JumpheightScript initialized")
    local Players = game:GetService("Players")
    local player = Players.LocalPlayer
    player:GetPropertyChangedSignal("Character"):Connect(function()
        local character = player.Character
        if character then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid then
                humanoid.JumpHeight = 10
            end
        end
    end)
]]
jumpheightScript.Parent = singularityFrame
jumpheightScript.Disabled = false

local dragScript = Instance.new("LocalScript")
dragScript.Name = "DragScript"
dragScript.Source = [[
    local frame = script.Parent
    warn("DragScript initialized")
    local UserInputService = game:GetService("UserInputService")
    local dragging, dragInput, dragStart, startPos
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)
    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end
    end)
]]
dragScript.Parent = singularityFrame
dragScript.Disabled = false

local pagesScript = Instance.new("LocalScript")
pagesScript.Name = "PagesScript"
pagesScript.Source = [[
    warn("PagesScript initialized")
    local frame = script.Parent
    local playerButton = frame.UpFrame:FindFirstChild("PlayerButton")
    local autoLockButton = frame.UpFrame:FindFirstChild("AutoLockButton")
    local miscButton = frame.UpFrame:FindFirstChild("MiscButton")
    local settingsButton = frame.UpFrame:FindFirstChild("SettingsButton")
    local playerFrame = frame:FindFirstChild("PlayerFrame")
    local autoLockFrame = frame:FindFirstChild("AutoLockFrame")
    local miscFrame = frame:FindFirstChild("MiscFrame")
    local settingsFrame = frame:FindFirstChild("SettingsFrame")
    if playerButton and playerFrame then
        playerButton.MouseButton1Click:Connect(function()
            playerFrame.Visible = true
            autoLockFrame.Visible = false
            miscFrame.Visible = false
            settingsFrame.Visible = false
        end)
    end
    if autoLockButton and autoLockFrame then
        autoLockButton.MouseButton1Click:Connect(function()
            playerFrame.Visible = false
            autoLockFrame.Visible = true
            miscFrame.Visible = false
            settingsFrame.Visible = false
        end)
    end
    if miscButton and miscFrame then
        miscButton.MouseButton1Click:Connect(function()
            playerFrame.Visible = false
            autoLockFrame.Visible = false
            miscFrame.Visible = true
            settingsFrame.Visible = false
        end)
    end
    if settingsButton and settingsFrame then
        settingsButton.MouseButton1Click:Connect(function()
            playerFrame.Visible = false
            autoLockFrame.Visible = false
            miscFrame.Visible = false
            settingsFrame.Visible = true
        end)
    end
]]
pagesScript.Parent = singularityFrame
pagesScript.Disabled = false

local localScript = Instance.new("LocalScript")
localScript.Name = "LocalScript"
localScript.Source = [[
    warn("LocalScript initialized")
]]
localScript.Parent = singularityFrame
localScript.Disabled = false

singularityGui.AncestryChanged:Connect(function()
    if not singularityGui:IsDescendantOf(game) then
        warn("GUI was removed, cleaning up resources")
    end
end)
