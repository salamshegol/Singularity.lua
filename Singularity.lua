local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

-- Получаем локального игрока и его PlayerGui
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui", 5) -- Таймаут 5 секунд

if not PlayerGui then
    error("❌ Не удалось найти PlayerGui для локального игрока")
end

-- Создаем контейнер для GUI
local singularityGui = Instance.new("ScreenGui")
singularityGui.Name = "SingularityGui"
singularityGui.ResetOnSpawn = false -- Предотвращаем сброс GUI при респавне
singularityGui.Parent = PlayerGui

-- JSON с описанием интерфейса
local menuJSON = [[
    {"Children":[{"Children":[],"Properties":[],"Name":"ALScript","ClassName":"LocalScript"},
    {"Children":[],"Properties":[],"Name":"NoclipScript","ClassName":"LocalScript"},
    {"Children":[],"Properties":[],"Name":"TeleportScript","ClassName":"LocalScript"},
    {"Children":[],"Properties":[],"Name":"WalkspeedScript","ClassName":"LocalScript"},
    {"Children":[],"Properties":[],"Name":"JumpheightScript","ClassName":"LocalScript"},
    {"Children":[],"Properties":[],"Name":"Corner","ClassName":"UICorner"},
    {"Children":[],"Properties":[],"Name":"UIStroke","ClassName":"UIStroke"},
    {"Children":[{"Children":[],"Properties":[],"Name":"Corner","ClassName":"UICorner"},
    {"Children":[],"Properties":[],"Name":"UIStroke","ClassName":"UIStroke"},
    {"Children":[],"Properties":{"Visible":true,"TextColor3":{"B":0,"G":0.6666666865348816,"R":1},"Text":"Singularity","Font":"SourceSans","BackgroundTransparency":1,"Position":{"XOffset":0,"XScale":0.031141867861151696,"YScale":0.21739129722118379,"YOffset":0},"Size":{"XOffset":91,"XScale":0,"YScale":0,"YOffset":27},"TextSize":14,"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"Title","ClassName":"TextLabel"},
    {"Children":[],"Properties":{"Visible":true,"Image":"rbxassetid://112257173523450","BackgroundTransparency":1,"Position":{"XOffset":0,"XScale":0.41499999165534975,"YScale":0.15199999511241914,"YOffset":0},"ImageTransparency":0,"ImageColor3":{"B":1,"G":1,"R":1},"Size":{"XOffset":31,"XScale":0,"YScale":0,"YOffset":32},"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"PlayerButton","ClassName":"ImageButton"},
    {"Children":[],"Properties":{"Visible":true,"Image":"rbxassetid://139471830119217","BackgroundTransparency":1,"Position":{"XOffset":0,"XScale":0.550000011920929,"YScale":0.15199999511241914,"YOffset":0},"ImageTransparency":0,"ImageColor3":{"B":1,"G":1,"R":1},"Size":{"XOffset":31,"XScale":0,"YScale":0,"YOffset":32},"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"AutoLockButton","ClassName":"ImageButton"},
    {"Children":[],"Properties":{"Visible":true,"Image":"rbxassetid://140266485849836","BackgroundTransparency":1,"Position":{"XOffset":0,"XScale":0.699999988079071,"YScale":0.15199999511241914,"YOffset":0},"ImageTransparency":0,"ImageColor3":{"B":1,"G":1,"R":1},"Size":{"XOffset":31,"XScale":0,"YScale":0,"YOffset":32},"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"MiscButton","ClassName":"ImageButton"},
    {"Children":[],"Properties":{"Visible":true,"Image":"rbxassetid://80697630368344","BackgroundTransparency":1,"Position":{"XOffset":0,"XScale":0.8500000238418579,"YScale":0.15199999511241914,"YOffset":0},"ImageTransparency":0,"ImageColor3":{"B":1,"G":1,"R":1},"Size":{"XOffset":31,"XScale":0,"YScale":0,"YOffset":32},"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"SettingsButton","ClassName":"ImageButton"}],"Properties":{"Visible":true,"BackgroundTransparency":0.25,"Position":{"XOffset":0,"XScale":0,"YScale":-0.2222222238779068,"YOffset":0},"Size":{"XOffset":289,"XScale":0,"YScale":0,"YOffset":46},"BackgroundColor3":{"B":0.05882353335618973,"G":0.05882353335618973,"R":0.05882353335618973}},"Name":"UpFrame","ClassName":"Frame"},
    {"Children":[{"Children":[{"Children":[],"Properties":[],"Name":"UICorner","ClassName":"UICorner"}],"Properties":{"Visible":true,"TextColor3":{"B":1,"G":1,"R":1},"Text":"Noclip","Font":"SourceSans","BackgroundTransparency":0.800000011920929,"Position":{"XOffset":0,"XScale":0.013840830884873867,"YScale":0.030042918398976327,"YOffset":0},"Size":{"XOffset":100,"XScale":0,"YScale":0,"YOffset":19},"TextSize":14,"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"NoclipButton","ClassName":"TextButton"},
    {"Children":[{"Children":[],"Properties":[],"Name":"UICorner","ClassName":"UICorner"}],"Properties":{"Visible":true,"TextColor3":{"B":1,"G":1,"R":1},"Text":"Walkspeed","Font":"SourceSans","BackgroundTransparency":0.800000011920929,"Position":{"XOffset":0,"XScale":0.013840830884873867,"YScale":0.12999999523162843,"YOffset":0},"Size":{"XOffset":100,"XScale":0,"YScale":0,"YOffset":19},"TextSize":14,"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"WalkspeedButton","ClassName":"TextButton"},
    {"Children":[{"Children":[],"Properties":[],"Name":"UICorner","ClassName":"UICorner"}],"Properties":{"Visible":true,"TextColor3":{"B":1,"G":1,"R":1},"Text":"Jumpheight","Font":"SourceSans","BackgroundTransparency":0.800000011920929,"Position":{"XOffset":0,"XScale":0.013840830884873867,"YScale":0.23000000417232514,"YOffset":0},"Size":{"XOffset":100,"XScale":0,"YScale":0,"YOffset":19},"TextSize":14,"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"JumpheightButton","ClassName":"TextButton"}],"Properties":{"Visible":false,"BackgroundTransparency":1,"Position":{"XOffset":0,"XScale":0,"YScale":-0.0020438951905816795,"YOffset":0},"Size":{"XOffset":289,"XScale":0,"YScale":0,"YOffset":233},"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"PlayerFrame","ClassName":"Frame"},
    {"Children":[],"Properties":[],"Name":"DragScript","ClassName":"LocalScript"},
    {"Children":[{"Children":[{"Children":[],"Properties":[],"Name":"UICorner","ClassName":"UICorner"}],"Properties":{"Visible":true,"TextColor3":{"B":1,"G":1,"R":1},"Text":"Enabled","Font":"SourceSans","BackgroundTransparency":0.800000011920929,"Position":{"XOffset":0,"XScale":0.013840936124324799,"YScale":0.03875889629125595,"YOffset":0},"Size":{"XOffset":100,"XScale":0,"YScale":0,"YOffset":19},"TextSize":14,"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"ALButton","ClassName":"TextButton"},
    {"Children":[{"Children":[],"Properties":[],"Name":"UICorner","ClassName":"UICorner"}],"Properties":{"Visible":true,"TextColor3":{"B":1,"G":1,"R":1},"Text":"Set CFrame","Font":"SourceSans","BackgroundTransparency":0,"Position":{"XOffset":0,"XScale":0.6087716221809387,"YScale":0.03875889629125595,"YOffset":0},"Size":{"XOffset":100,"XScale":0,"YScale":0,"YOffset":19},"TextSize":14,"BackgroundColor3":{"B":0,"G":0.6666666865348816,"R":1}},"Name":"ALSetPosButton","ClassName":"TextButton"},
    {"Children":[{"Children":[],"Properties":[],"Name":"UICorner","ClassName":"UICorner"}],"Properties":{"Visible":true,"TextColor3":{"B":1,"G":1,"R":1},"Text":"In seconds","Font":"SourceSans","BackgroundTransparency":0,"Position":{"XOffset":0,"XScale":0.5896226167678833,"YScale":-0.5714285969734192,"YOffset":0},"Size":{"XOffset":73,"XScale":0,"YScale":0,"YOffset":23},"TextSize":14,"BackgroundColor3":{"B":0.27843138575553896,"G":0.27843138575553896,"R":0.27843138575553896}},"Name":"IntervalBox","ClassName":"TextBox"},
    {"Children":[],"Properties":{"Visible":true,"TextColor3":{"B":1,"G":1,"R":1},"Text":"Interval","Font":"SourceSans","BackgroundTransparency":1,"Position":{"XOffset":0,"XScale":0.020761245861649514,"YScale":0.678041934967041,"YOffset":0},"Size":{"XOffset":49,"XScale":0,"YScale":0,"YOffset":28},"TextSize":14,"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"IntervalLabel","ClassName":"TextLabel"},
    {"Children":[],"Properties":{"Visible":true,"TextColor3":{"B":1,"G":1,"R":1},"Text":"CFrame: ","Font":"SourceSans","BackgroundTransparency":1,"Position":{"XOffset":0,"XScale":0.020761245861649514,"YScale":0.8452752232551575,"YOffset":0},"Size":{"XOffset":278,"XScale":0,"YScale":0,"YOffset":29},"TextSize":14,"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"CFrameLabel","ClassName":"TextLabel"}],"Properties":{"Visible":false,"BackgroundTransparency":1,"Position":{"XOffset":0,"XScale":0,"YScale":-0.0020438951905816795,"YOffset":0},"Size":{"XOffset":289,"XScale":0,"YScale":0,"YOffset":233},"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"AutoLockFrame","ClassName":"Frame"},
    {"Children":[{"Children":[{"Children":[],"Properties":[],"Name":"UICorner","ClassName":"UICorner"}],"Properties":{"Visible":true,"TextColor3":{"B":1,"G":1,"R":1},"Text":"Teleport","Font":"SourceSans","BackgroundTransparency":0.800000011920929,"Position":{"XOffset":0,"XScale":0.013840936124324799,"YScale":0.032574959099292758,"YOffset":0},"Size":{"XOffset":100,"XScale":0,"YScale":0,"YOffset":19},"TextSize":14,"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"TeleportButton","ClassName":"TextButton"}],"Properties":{"Visible":false,"BackgroundTransparency":1,"Position":{"XOffset":0,"XScale":0,"YScale":-0.0020438951905816795,"YOffset":0},"Size":{"XOffset":289,"XScale":0,"YScale":0,"YOffset":233},"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"MiscFrame","ClassName":"Frame"},
    {"Children":[{"Children":[{"Children":[],"Properties":[],"Name":"UICorner","ClassName":"UICorner"}],"Properties":{"Visible":true,"TextColor3":{"B":1,"G":1,"R":1},"Text":"Unhook","Font":"SourceSans","BackgroundTransparency":0,"Position":{"XOffset":0,"XScale":0.6089965105056763,"YScale":0.8755365014076233,"YOffset":0},"Size":{"XOffset":100,"XScale":0,"YScale":0,"YOffset":19},"TextSize":14,"BackgroundColor3":{"B":0,"G":0.6666666865348816,"R":1}},"Name":"UnhookButton","ClassName":"TextButton"}],"Properties":{"Visible":false,"BackgroundTransparency":1,"Position":{"XOffset":0,"XScale":0,"YScale":-0.0020438951905816795,"YOffset":0},"Size":{"XOffset":289,"XScale":0,"YScale":0,"YOffset":233},"BackgroundColor3":{"B":1,"G":1,"R":1}},"Name":"SettingsFrame","ClassName":"Frame"},
    {"Children":[],"Properties":[],"Name":"PagesScript","ClassName":"LocalScript"}],"Properties":{"Visible":true,"BackgroundTransparency":0,"Position":{"XOffset":0,"XScale":0.3227092921733856,"YScale":0.3364759385585785,"YOffset":0},"Size":{"XOffset":289,"XScale":0,"YScale":0,"YOffset":234},"BackgroundColor3":{"B":0.11372549831867218,"G":0.11372549831867218,"R":0.11372549831867218}},"Name":"Singularity","ClassName":"Frame"},
    {"Children":[],"Properties":[],"Name":"LocalScript","ClassName":"LocalScript"}]
]]

-- Предварительная проверка JSON
local function validateJSON(jsonString)
    if not jsonString or jsonString == "" then
        return false, "JSON пустой или отсутствует"
    end
    -- Проверяем, является ли строка валидным JSON
    local success, result = pcall(function()
        return HttpService:JSONDecode(jsonString)
    end)
    if not success then
        return false, "Ошибка валидации JSON: " .. tostring(result)
    end
    return true, result
end

-- Парсим JSON
local isValid, menuDataOrError = validateJSON(menuJSON)
if not isValid then
    error("❌ Ошибка при парсинге JSON: " .. tostring(menuDataOrError))
end
local menuData = menuDataOrError

-- Функция создания GUI элементов из JSON
local function createFromJSON(parent, items)
    for _, item in ipairs(items) do
        local obj = Instance.new(item.ClassName)
        obj.Name = item.Name or "Unnamed"

        -- Применяем свойства
        if item.Properties then
            for prop, val in pairs(item.Properties) do
                local success, err = pcall(function()
                    if prop == "Position" or prop == "Size" then
                        obj[prop] = UDim2.new(val.XScale or 0, val.XOffset or 0, val.YScale or 0, val.YOffset or 0)
                    elseif prop == "TextColor3" or prop == "BackgroundColor3" or prop == "ImageColor3" then
                        obj[prop] = Color3.new(val.R or 0, val.G or 0, val.B or 0)
                    elseif prop == "Font" and (val == nil or val == "null") then
                        obj[prop] = Enum.Font.SourceSans -- Устанавливаем шрифт по умолчанию
                    else
                        obj[prop] = val
                    end
                end)
                if not success then
                    warn("⚠️ Ошибка при установке свойства " .. prop .. " для " .. item.Name .. ": " .. tostring(err))
                end
            end
        end

        obj.Parent = parent

        -- Рекурсивно создаем дочерние элементы
        if item.Children then
            createFromJSON(obj, item.Children)
        end
    end
end

-- Создаем GUI из JSON
local success, createError = pcall(function()
    createFromJSON(singularityGui, menuData)
end)
if not success then
    error("❌ Ошибка при создании GUI: " .. tostring(createError))
end

-- Проверяем наличие основного фрейма
local singularityFrame = singularityGui:FindFirstChild("Singularity", true)
if not singularityFrame then
    error("❌ Не найден Frame 'Singularity' в menuJSON")
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
                    warn("⚠️ Не удалось скомпилировать скрипт " .. name)
                end
            end)
            if not ran then
                warn("⚠️ Ошибка при выполнении " .. name .. ": " .. tostring(err))
            end
        else
            warn("⚠️ Не удалось загрузить " .. name .. " с " .. url)
        end
    end
end

-- Запускаем загрузку скриптов
local success, loadError = pcall(loadScripts)
if not success then
    warn("⚠️ Ошибка при загрузке скриптов: " .. tostring(loadError))
end

-- Защита от повторного запуска
singularityGui.AncestryChanged:Connect(function()
    if not singularityGui:IsDescendantOf(game) then
        warn("⚠️ GUI был удален, очищаем ресурсы")
        -- Здесь можно добавить очистку, если нужно
    end
end)
