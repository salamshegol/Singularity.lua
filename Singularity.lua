local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui", 5)

if not PlayerGui then
    error("Failed to find PlayerGui for local player")
end

-- Создаем ScreenGui
local singularityGui = Instance.new("ScreenGui")
singularityGui.Name = "SingularityGui"
singularityGui.ResetOnSpawn = false
singularityGui.Parent = PlayerGui

-- Структура GUI в виде Lua-таблицы
local menuData = {
    Children = {
        {
            ClassName = "LocalScript",
            Name = "ALScript",
            Properties = {},
            Children = {}
        },
        {
            ClassName = "LocalScript",
            Name = "NoclipScript",
            Properties = {},
            Children = {}
        },
        {
            ClassName = "LocalScript",
            Name = "TeleportScript",
            Properties = {},
            Children = {}
        },
        {
            ClassName = "LocalScript",
            Name = "WalkspeedScript",
            Properties = {},
            Children = {}
        },
        {
            ClassName = "LocalScript",
            Name = "JumpheightScript",
            Properties = {},
            Children = {}
        },
        {
            ClassName = "UICorner",
            Name = "Corner",
            Properties = {},
            Children = {}
        },
        {
            ClassName = "UIStroke",
            Name = "UIStroke",
            Properties = {},
            Children = {}
        },
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
                {
                    ClassName = "UICorner",
                    Name = "Corner",
                    Properties = {},
                    Children = {}
                },
                {
                    ClassName = "UIStroke",
                    Name = "UIStroke",
                    Properties = {},
                    Children = {}
                },
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
                        Position = { XScale = 0.414999991 coleção do usuário: 65534975, YScale = 0.15199999511241914, XOffset = 0, YOffset = 0 },
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
                        Position = { XScale = 0.550000011920929, YScale = 0.15199999511241914, XOffset = 0, YOffset = 0 },
 жирный текст                        ImageTransparency = 0,
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
                        Position = { XScale = 0.699999988079071, YScale = 0.15199999511241914, XOffset = 0, YOffset = 0 },
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
                        Position = { XScale = 0.8500000238418579, YScale = 0.15199999511241914, XOffset = 0, YOffset = 0 },
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
                        {
                            ClassName = "UICorner",
                            Name = "UICorner",
                            Properties = {},
                            Children = {}
                        }
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
                        {
                            ClassName = "UICorner",
                            Name = "UICorner",
                            Properties = {},
                            Children = {}
                        }
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
                        {
                            ClassName = "UICorner",
                            Name = "UICorner",
                            Properties = {},
                            Children = {}
                        }
                    }
                }
            }
        },
        {
            ClassName = "LocalScript",
            Name = "DragScript",
            Properties = {},
            Children = {}
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
                        {
                            ClassName = "UICorner",
                            Name = "UICorner",
                            Properties = {},
                            Children = {}
                        }
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
                        {
                            ClassName = "UICorner",
                            Name = "UICorner",
                            Properties = {},
                            Children = {}
                        }
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
                        {
                            ClassName = "UICorner",
                            Name = "UICorner",
                            Properties = {},
                            Children = {}
                        }
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
                        {
                            ClassName = "UICorner",
                            Name = "UICorner",
                            Properties = {},
                            Children = {}
                        }
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
                        {
                            ClassName = "UICorner",
                            Name = "UICorner",
                            Properties = {},
                            Children = {}
                        }
                    }
                }
            }
        },
        {
            ClassName = "LocalScript",
            Name = "PagesScript",
            Properties = {},
            Children = {}
        },
        {
            ClassName = "LocalScript",
            Name = "LocalScript",
            Properties = {},
            Children = {}
        },
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
            Children = {}
        }
    }
}

-- Функция создания GUI из таблицы
local function createFromTable(parent, items)
    for _, item in ipairs(items) do
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

        obj.Parent = parent

        if item.Children then
            createFromTable(obj, item.Children)
        end
    end
end

-- Создаем GUI
local success, createError = pcall(function()
    createFromTable(singularityGui, menuData.Children)
end)
if not success then
    error("Failed to create GUI: " .. tostring(createError))
end

-- Проверяем наличие основного фрейма
local singularityFrame = singularityGui:FindFirstChild("Singularity", true)
if not singularityFrame then
    error("Failed to find Frame 'Singularity' in menu data")
end

-- Список скриптов для загрузки
local scriptsList = {
    ALScript = "https://raw.githubusercontent.com/salamshegol/Singularity.lua/main/scripts/ALScript.lua",
    NoclipScript = "https://raw.githubusercontent.com/salamshegol/Singularity.lua/main/scripts/NoclipScript.lua",
    TeleportScript = "https://raw.githubusercontent.com/salamshegol/Singularity.lua/main/scripts/TeleportScript.lua",
    WalkspeedScript = "https://raw.githubusercontent.com/salamshegol/Singularity.lua/main/scripts/WalkspeedScript.lua",
    JumpheightScript = "https://raw.githubusercontent.com/salamshegol/Singularity.lua/main/scripts/JumpheightScript.lua",
    DragScript = "https://raw.githubusercontent.com/salamshegol/Singularity.lua/main/scripts/DragScript.lua",
    PagesScript = "https://raw.githubusercontent.com/salamshegol/Singularity.lua/main/scripts/PagesScript.lua",
    UnhookScript = "https://raw.githubusercontent.com/salamshegol/Singularity.lua/main/scripts/UnhookScript.lua"
}

-- Асинхронная загрузка скриптов
local function loadScripts()
    for name, url in pairs(scriptsList) do
        local success, scriptContent = pcall(function()
            return game:HttpGet(url)
        end)

        if success and scriptContent and scriptContent ~= "" then
            local ran, err = pcall(function()
                local func = loadstring(scriptContent)
                if func then
                    func()
                else
                    warn("Failed to compile script " .. name)
                end
            end)
            if not ran then
                warn("Failed to execute " .. name .. ": " .. tostring(err))
            end
        else
            warn("Failed to load " .. name .. " from " .. url)
        end
    end
end

-- Запускаем загрузку скриптов
local success, loadError = pcall(loadScripts)
if not success then
    warn("Failed to load scripts: " .. tostring(loadError))
end

-- Защита от повторного запуска
singularityGui.AncestryChanged:Connect(function()
    if not singularityGui:IsDescendantOf(game) then
        warn("GUI was removed, cleaning up resources")
    end
end)
