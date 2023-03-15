--// Destroy other instances
for _,v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "Syaoul" then
        v:Destroy()
    end
end

local Syaoul = Instance.new("ScreenGui")
Syaoul.Name = "Syaoul"
Syaoul.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Syaoul.Parent = game.CoreGui

local Library = {}
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HTTPService = game:GetService("HttpService")

function Library:Create(table)
    local windowName = table.Name

    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    Main.Position = UDim2.fromScale(0.244, 0.292)
    Main.Size = UDim2.fromOffset(488, 299)

    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.Font = Enum.Font.Gotham
    Title.Text = windowName
    Title.TextColor3 = Color3.fromRGB(168, 168, 168)
    Title.TextSize = 20
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.fromScale(0.41, 0.0543)
    Title.Size = UDim2.fromOffset(83, 28)
    Title.Parent = Main

    local UiCorner = Instance.new("UICorner")
    UiCorner.Name = "UiCorner"
    UiCorner.Parent = Main

    local TabContainer = Instance.new("Frame")
    TabContainer.Name = "TabContainer"
    TabContainer.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    TabContainer.Position = UDim2.fromScale(0.0342, 0.188)
    TabContainer.Size = UDim2.fromOffset(454, 30)

    local UiCorner_1 = Instance.new("UICorner")
    UiCorner_1.Name = "UiCorner_1"
    UiCorner_1.CornerRadius = UDim.new(0, 6)
    UiCorner_1.Parent = TabContainer

    local UiListLayout = Instance.new("UIListLayout")
    UiListLayout.Name = "UiListLayout"
    UiListLayout.Padding = UDim.new(0, 8)
    UiListLayout.FillDirection = Enum.FillDirection.Horizontal
    UiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UiListLayout.Parent = TabContainer

    local UiPadding = Instance.new("UIPadding")
    UiPadding.Name = "UiPadding"
    UiPadding.PaddingLeft = UDim.new(0, 7)
    UiPadding.PaddingTop = UDim.new(0, 4)
    UiPadding.Parent = TabContainer

    local Shadow = Instance.new("ImageLabel")
    Shadow.Name = "Shadow"
    Shadow.Image = "rbxassetid://297774371"
    Shadow.ImageColor3 = Color3.fromRGB(15, 15, 15)
    Shadow.ImageTransparency = 0.3
    Shadow.SliceCenter = Rect.new(20, 20, 280, 280)
    Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Shadow.BackgroundTransparency = 1
    Shadow.Position = UDim2.fromScale(0.224, 0.272)
    Shadow.Selectable = true
    Shadow.Size = UDim2.fromOffset(529, 331)
    Shadow.ZIndex = -1
    Shadow.Parent = Syaoul

    TabContainer.Parent = Main
    Main.Parent = Syaoul
    Main.AnchorPoint = Vector2.new(0.5,0.5)
    Shadow.AnchorPoint = Vector2.new(0.5,0.5)

    Main.Position = UDim2.new(0.5,0,0.5,0)
    Shadow.Position = UDim2.new(0.5,0,0.5,0)

    local tabHandler = {}

    function tabHandler:Exit()
        Syaoul:Destroy()
    end

    function tabHandler:Tab(name)
        --// Creating the yttab
        local Main_1 = Instance.new("TextButton")
        Main_1.Name = name
        Main_1.Font = Enum.Font.Gotham
        Main_1.Text = name
        Main_1.TextColor3 = Color3.fromRGB(195, 195, 195)
        Main_1.TextSize = 13
        Main_1.TextTransparency = 0.5
        Main_1.AutomaticSize = Enum.AutomaticSize.X
        Main_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Main_1.BackgroundTransparency = 1
        Main_1.Size = UDim2.fromOffset(10, 24)
        Main_1.Parent = TabContainer

        --// Creating the Container
        local Container = Instance.new("Frame")
        Container.Name = "Container"
        Container.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
        Container.Position = UDim2.fromScale(0.0342, 0.31)
        Container.Size = UDim2.fromOffset(454, 183)
        
        local UiCorner_2 = Instance.new("UICorner")
        UiCorner_2.Name = "UiCorner_2"
        UiCorner_2.CornerRadius = UDim.new(0, 6)
        UiCorner_2.Parent = Container
        
        local holder = Instance.new("ScrollingFrame")
        holder.Name = "holder"
        holder.ScrollBarImageColor3 = Color3.fromRGB(76, 76, 76)
        holder.ScrollBarThickness = 2
        holder.ScrollingDirection = Enum.ScrollingDirection.Y
        holder.Active = true
        holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        holder.BackgroundTransparency = 1
        holder.BorderColor3 = Color3.fromRGB(33, 33, 33)
        holder.Position = UDim2.fromScale(0.0022, 0.00404)
        holder.Size = UDim2.fromOffset(452, 182)

        local UiPadding_1 = Instance.new("UIPadding")
        UiPadding_1.Name = "UiPadding_1"
        UiPadding_1.PaddingLeft = UDim.new(0, 5)
        UiPadding_1.PaddingTop = UDim.new(0, 7)
        UiPadding_1.Parent = holder

        local UiListLayout_1 = Instance.new("UIListLayout")
        UiListLayout_1.Name = "UiListLayout_1"
        UiListLayout_1.Padding = UDim.new(0, 3)
        UiListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder
        UiListLayout_1.Parent = holder

        local UiCorner_11 = Instance.new("UICorner")
        UiCorner_11.Name = "UiCorner_11"
        UiCorner_11.CornerRadius = UDim.new(0, 6)
        UiCorner_11.Parent = holder

        holder.Parent = Container
        Container.Parent = Main
        Container.Visible = false

        --// Event
        Main_1.MouseButton1Click:Connect(function()
            for _,v in pairs(game.CoreGui:FindFirstChild('Syaoul').Main:GetChildren()) do
                if v.Name == "Container" then
                    v.Visible = false
                end
            end
            for _,v in pairs(game.CoreGui['Syaoul'].Main.TabContainer:GetChildren()) do
                if v:IsA('TextButton') then
                    game:GetService('TweenService'):Create(v, TweenInfo.new(0.3), {TextTransparency = 0.5}):Play()
                end
            end
            Container.Visible = true
            game:GetService('TweenService'):Create(Main_1, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
        end)

        --// Elements
        local ElementHandler = {}
        function ElementHandler:Label(text)
            local label = Instance.new("Frame")
            label.Name = "label"
            label.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
            label.Size = UDim2.fromOffset(441, 32)
            label.Parent = holder
    
            local UiCorner_3 = Instance.new("UICorner")
            UiCorner_3.Name = "UiCorner_3"
            UiCorner_3.CornerRadius = UDim.new(0, 6)
            UiCorner_3.Parent = label

            local TextLabel_0 = Instance.new("TextLabel")
            TextLabel_0.Name = "TextLabel_0"
            TextLabel_0.Font = Enum.Font.Gotham
            TextLabel_0.Text = text
            TextLabel_0.TextColor3 = Color3.fromRGB(195, 195, 195)
            TextLabel_0.TextSize = 13
            TextLabel_0.TextStrokeColor3 = Color3.fromRGB(195, 195, 195)
            TextLabel_0.TextXAlignment = Enum.TextXAlignment.Left
            TextLabel_0.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_0.BackgroundTransparency = 1
            TextLabel_0.Position = UDim2.fromScale(0.0181, 0)
            TextLabel_0.Size = UDim2.fromOffset(1, 32)
            TextLabel_0.Parent = label
        end

        function ElementHandler:Button(text, callback)
            text = text or "Button"
            callback = callback or function() end

            local button = Instance.new("TextButton")
            button.Name = "button"
            button.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
            button.Position = UDim2.fromScale(0, 0.135)
            button.Size = UDim2.fromOffset(441, 32)
            button.Text = ""
            button.AutoButtonColor = false

            local UiCorner_12 = Instance.new("UICorner")
            UiCorner_12.Name = "UiCorner_12"
            UiCorner_12.CornerRadius = UDim.new(0, 6)
            UiCorner_12.Parent = button

            local TextLabel_4 = Instance.new("TextLabel")
            TextLabel_4.Name = "TextLabel_4"
            TextLabel_4.Font = Enum.Font.Gotham
            TextLabel_4.Text = text
            TextLabel_4.TextColor3 = Color3.fromRGB(195, 195, 195)
            TextLabel_4.TextSize = 13
            TextLabel_4.TextStrokeColor3 = Color3.fromRGB(195, 195, 195)
            TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left
            TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_4.BackgroundTransparency = 1
            TextLabel_4.Position = UDim2.fromScale(0.0181, 0)
            TextLabel_4.Size = UDim2.fromOffset(1, 32)
            TextLabel_4.Parent = button

            local ImageLabel_0 = Instance.new("ImageLabel")
            ImageLabel_0.Name = "ImageLabel_0"
            ImageLabel_0.Image = "http://www.roblox.com/asset/?id=9584292194"
            ImageLabel_0.ImageColor3 = Color3.fromRGB(195, 195, 195)
            ImageLabel_0.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ImageLabel_0.BackgroundTransparency = 1
            ImageLabel_0.Position = UDim2.fromScale(0.943, 0.219)
            ImageLabel_0.Size = UDim2.fromOffset(18, 18)
            ImageLabel_0.Parent = button

            button.Parent = holder

            button.MouseEnter:Connect(function()
                game:GetService('TweenService'):Create(button, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(43,43,43)}):Play()
            end)

            button.MouseLeave:Connect(function()
                game:GetService('TweenService'):Create(button, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(38,38,38)}):Play()
            end)

            button.MouseButton1Click:Connect(function()
                callback()
            end)
        end

        function ElementHandler:Slider(text, default, min, max, callback) -- slider stuff mainly not made by me
            text = text or "Slider"
            callback = callback or function() end

            local slider = Instance.new("TextButton")
            slider.Name = "slider"
            slider.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
            slider.Size = UDim2.fromOffset(441, 32)
            slider.Text = ""
            slider.AutoButtonColor = false

            local UiCorner_4 = Instance.new("UICorner")
            UiCorner_4.Name = "UiCorner_4"
            UiCorner_4.CornerRadius = UDim.new(0, 6)
            UiCorner_4.Parent = slider

            local TextLabel_1 = Instance.new("TextLabel")
            TextLabel_1.Name = "TextLabel_1"
            TextLabel_1.Font = Enum.Font.Gotham
            TextLabel_1.Text = text
            TextLabel_1.TextColor3 = Color3.fromRGB(195, 195, 195)
            TextLabel_1.TextSize = 13
            TextLabel_1.TextStrokeColor3 = Color3.fromRGB(195, 195, 195)
            TextLabel_1.TextXAlignment = Enum.TextXAlignment.Left
            TextLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_1.BackgroundTransparency = 1
            TextLabel_1.Position = UDim2.fromScale(0.0181, 0)
            TextLabel_1.Size = UDim2.fromOffset(1, 32)
            TextLabel_1.Parent = slider

            local Frame_0 = Instance.new("Frame")
            Frame_0.Name = "Frame_0"
            Frame_0.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
            Frame_0.Position = UDim2.fromScale(0.753, 0.375)
            Frame_0.Size = UDim2.fromOffset(102, 8)

            local UiCorner_5 = Instance.new("UICorner")
            UiCorner_5.Name = "UiCorner_5"
            UiCorner_5.CornerRadius = UDim.new(0, 3)
            UiCorner_5.Parent = Frame_0

            local Frame_1 = Instance.new("Frame")
            Frame_1.Name = "Frame_1"
            Frame_1.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            Frame_1.Position = UDim2.fromScale(-0.00207, 0)
            Frame_1.Size = UDim2.fromOffset(44, 8)

            local UiCorner_6 = Instance.new("UICorner")
            UiCorner_6.Name = "UiCorner_6"
            UiCorner_6.CornerRadius = UDim.new(0, 3)
            UiCorner_6.Parent = Frame_1

            Frame_1.Parent = Frame_0

            Frame_0.Parent = slider

            local TextLabel_2 = Instance.new("TextLabel")
            TextLabel_2.Name = "TextLabel_2"
            TextLabel_2.Font = Enum.Font.Gotham
            TextLabel_2.Text = "7"
            TextLabel_2.TextColor3 = Color3.fromRGB(195, 195, 195)
            TextLabel_2.TextSize = 13
            TextLabel_2.TextStrokeColor3 = Color3.fromRGB(195, 195, 195)
            TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.BackgroundTransparency = 1
            TextLabel_2.Position = UDim2.fromScale(0.653, 0)
            TextLabel_2.Size = UDim2.fromOffset(44, 32)
            TextLabel_2.Parent = slider

            slider.Parent = holder
            TextLabel_2.Text = tostring(default)

            local hovered = false
            local down = false

            slider.MouseEnter:Connect(function()
                hovered = true
                game:GetService('TweenService'):Create(slider, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(43,43,43)}):Play()
            end)

            slider.MouseLeave:Connect(function()
                if not down then
                    game:GetService('TweenService'):Create(slider, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(38,38,38)}):Play()
                end
            end)
    
            game:GetService('UserInputService').InputEnded:connect(function(key)
                if key.UserInputType == Enum.UserInputType.MouseButton1 then
                    down = false
                    game:GetService('TweenService'):Create(slider, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(38,38,38)}):Play()
                end
            end)
    
            slider.MouseButton1Down:connect(function()
                game:GetService('TweenService'):Create(slider, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(47,47,47)}):Play()
                down = true
                while RunService.RenderStepped:wait() and down do
                    local percentage = math.clamp((Mouse.X - Frame_1.AbsolutePosition.X) / (Frame_1.AbsoluteSize.X), 0, 1)
                    local value = ((max - min) * percentage) + min
                    value = math.floor(value)
                    TextLabel_2.Text = value
                    local tween = game:GetService('TweenService'):Create(Frame_1, TweenInfo.new(0.06), {Size = UDim2.fromScale(percentage, 1)}):Play()
                    callback(value)
                end
            end)
        end

        function ElementHandler:Toggle(text, callback)
            text = text or "Toggle"
            callback = callback or function() end

            local Toggle_0 = Instance.new("TextButton")
            Toggle_0.Name = "Toggle_0"
            Toggle_0.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
            Toggle_0.Size = UDim2.fromOffset(441, 32)
            Toggle_0.Text = ""
            Toggle_0.AutoButtonColor = false

            local UiCorner_9 = Instance.new("UICorner")
            UiCorner_9.Name = "UiCorner_9"
            UiCorner_9.CornerRadius = UDim.new(0, 6)
            UiCorner_9.Parent = Toggle_0

            local TextLabel_3 = Instance.new("TextLabel")
            TextLabel_3.Name = "TextLabel_3"
            TextLabel_3.Font = Enum.Font.Gotham
            TextLabel_3.Text = text
            TextLabel_3.TextColor3 = Color3.fromRGB(195, 195, 195)
            TextLabel_3.TextSize = 13
            TextLabel_3.TextStrokeColor3 = Color3.fromRGB(195, 195, 195)
            TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left
            TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_3.BackgroundTransparency = 1
            TextLabel_3.Position = UDim2.fromScale(0.0181, 0)
            TextLabel_3.Size = UDim2.fromOffset(1, 32)
            TextLabel_3.Parent = Toggle_0

            local Frame_3 = Instance.new("Frame")
            Frame_3.Name = "Frame_3"
            Frame_3.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            Frame_3.Position = UDim2.fromScale(0.943, 0.219)
            Frame_3.Size = UDim2.fromOffset(18, 18)

            local UiCorner_10 = Instance.new("UICorner")
            UiCorner_10.Name = "UiCorner_10"
            UiCorner_10.CornerRadius = UDim.new(0, 3)
            UiCorner_10.Parent = Frame_3

            local UiStroke = Instance.new("UIStroke")
            UiStroke.Name = "UiStroke"
            UiStroke.Color = Color3.fromRGB(76, 76, 76)
            UiStroke.Parent = Frame_3

            Frame_3.Parent = Toggle_0

            Toggle_0.Parent = holder

            local tog = false

            Toggle_0.MouseEnter:Connect(function()
                game:GetService('TweenService'):Create(Toggle_0, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(43,43,43)}):Play()
            end)

            Toggle_0.MouseLeave:Connect(function()
                game:GetService('TweenService'):Create(Toggle_0, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(38,38,38)}):Play()
            end)

            Toggle_0.MouseButton1Click:Connect(function()
                tog = not tog
                callback(tog)
                if tog then
                    game:GetService('TweenService'):Create(Frame_3, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(23, 143, 75)}):Play()
                    game:GetService('TweenService'):Create(UiStroke, TweenInfo.new(0.2), {Color = Color3.fromRGB(32, 202, 106)}):Play()
                else
                    game:GetService('TweenService'):Create(Frame_3, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(45, 45, 45)}):Play()
                    game:GetService('TweenService'):Create(UiStroke, TweenInfo.new(0.2), {Color = Color3.fromRGB(76, 76, 76)}):Play()
                end
            end)
        end

        function ElementHandler:Textbox(text, callback)
            text = text or "Textbox"
            callback = callback or function() end

            local textbox = Instance.new("Frame")
            textbox.Name = "textbox"
            textbox.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
            textbox.Size = UDim2.fromOffset(441, 32)

            local UiCorner_13 = Instance.new("UICorner")
            UiCorner_13.Name = "UiCorner_13"
            UiCorner_13.CornerRadius = UDim.new(0, 6)
            UiCorner_13.Parent = textbox

            local TextLabel_5 = Instance.new("TextLabel")
            TextLabel_5.Name = "TextLabel_5"
            TextLabel_5.Font = Enum.Font.Gotham
            TextLabel_5.Text = text
            TextLabel_5.TextColor3 = Color3.fromRGB(195, 195, 195)
            TextLabel_5.TextSize = 13
            TextLabel_5.TextStrokeColor3 = Color3.fromRGB(195, 195, 195)
            TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left
            TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_5.BackgroundTransparency = 1
            TextLabel_5.Position = UDim2.fromScale(0.0181, 0)
            TextLabel_5.Size = UDim2.fromOffset(1, 32)
            TextLabel_5.Parent = textbox

            local TextBox_0 = Instance.new("TextBox")
            TextBox_0.Name = "TextBox_0"
            TextBox_0.Font = Enum.Font.SourceSans
            TextBox_0.Text = ""
            TextBox_0.TextColor3 = Color3.fromRGB(195, 195, 195)
            TextBox_0.TextSize = 12
            TextBox_0.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
            TextBox_0.Position = UDim2.fromScale(0.864, 0.188)
            TextBox_0.Size = UDim2.fromOffset(52, 19)

            local UiCorner_14 = Instance.new("UICorner")
            UiCorner_14.Name = "UiCorner_14"
            UiCorner_14.CornerRadius = UDim.new(0, 6)
            UiCorner_14.Parent = TextBox_0

            TextBox_0.Parent = textbox
            textbox.Parent = holder

            textbox.MouseEnter:Connect(function()
                game:GetService('TweenService'):Create(textbox, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(43,43,43)}):Play()
            end)

            textbox.MouseLeave:Connect(function()
                game:GetService('TweenService'):Create(textbox, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(38,38,38)}):Play()
            end)

            TextBox_0.FocusLost:Connect(function()
                callback(TextBox_0.Text)
            end)
        end

        --// Buttons

        local buttons = Instance.new("Frame")
        buttons.Name = "buttons"
        buttons.Parent = main
        buttons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        buttons.BackgroundTransparency = 1
        buttons.Size = UDim2.new(0, 105, 0, 57)

        local ull_3 = Instance.new("UIListLayout")
        ull_3.Parent = buttons
        ull_3.FillDirection = Enum.FillDirection.Horizontal
        ull_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
        ull_3.SortOrder = Enum.SortOrder.LayoutOrder
        ull_3.VerticalAlignment = Enum.VerticalAlignment.Center
        ull_3.Padding = UDim.new(0, 10)


        local Close = Instance.new("TextButton")
        Close.Name = "Close"
        Close.Parent = buttons
            Close.BackgroundColor3 = Color3.fromRGB(254, 94, 86)
        Close.Size = UDim2.new(0, 16, 0, 16)
        Close.AutoButtonColor = false
        Close.Font = Enum.Font.SourceSans
        Close.Text = ""
        Close.TextColor3 = Color3.fromRGB(255, 50, 50)
        Close.TextSize = 14
        Close.MouseButton1Click:Connect(function()
            game:GetService("CoreGui").Syaoul:Destroy()
        end)


    local uc_18 = Instance.new("UICorner")
    uc_18.CornerRadius = UDim.new(1, 0)
    uc_18.Parent = Close


    local Enabled = Instance.new("TextButton")
    Enabled.Name = "Enabled"
    Enabled.Parent = buttons
    Enabled.BackgroundColor3 = Color3.fromRGB(255, 189, 46)
    Enabled.Size = UDim2.new(0, 16, 0, 16)
    Enabled.AutoButtonColor = false
    Enabled.Font = Enum.Font.SourceSans
    Enabled.Text = ""
    Enabled.TextColor3 = Color3.fromRGB(255, 50, 50)
    Enabled.TextSize = 14
    Enabled.MouseButton1Click:Connect(function()
        game:GetService("CoreGui").Syaoal.Enabled = false
    end)

    local uc_19 = Instance.new("UICorner")
    uc_19.CornerRadius = UDim.new(1, 0)
    uc_19.Parent = Enabled


    local Mini = Instance.new("TextButton")
    Mini.Name = "Mini"
    Mini.Parent = buttons
    Mini.BackgroundColor3 = Color3.fromRGB(39, 200, 63)
    Mini.Size = UDim2.new(0, 16, 0, 16)
    Mini.AutoButtonColor = false
    Mini.Font = Enum.Font.SourceSans
    Mini.Text = ""
    Mini.TextColor3 = Color3.fromRGB(255, 50, 50)
    Mini.TextSize = 14

    local uc_20 = Instance.new("UICorner")
    uc_20.CornerRadius = UDim.new(1, 0)
    uc_20.Parent = Mini
end

        return ElementHandler
    end

    --// Drag - not by me
    Main.MouseEnter:Connect(function()
        local Input = Main.InputBegan:connect(function(Key)
            if Key.UserInputType == Enum.UserInputType.MouseButton1 then
                local ObjectPosition = Vector2.new(Mouse.X - Main.AbsolutePosition.X, Mouse.Y - Main.AbsolutePosition.Y)
                while RunService.RenderStepped:wait() and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                    local FrameX, FrameY = math.clamp(Mouse.X - ObjectPosition.X, 0, Syaoul.AbsoluteSize.X - Main.AbsoluteSize.X), math.clamp(Mouse.Y - ObjectPosition.Y, 0, Syaoul.AbsoluteSize.Y - Main.AbsoluteSize.Y)
                    game:GetService('TweenService'):Create(Main, TweenInfo.new(0.1), {Position = UDim2.fromOffset(FrameX + (Main.Size.X.Offset * Main.AnchorPoint.X), FrameY + (Main.Size.Y.Offset * Main.AnchorPoint.Y))}):Play()
                    game:GetService('TweenService'):Create(Shadow, TweenInfo.new(0.1), {Position = UDim2.fromOffset(FrameX + (Main.Size.X.Offset * Main.AnchorPoint.X), FrameY + (Main.Size.Y.Offset * Main.AnchorPoint.Y))}):Play()
                end
            end
        end)
    end)

    --// Make the first tab visible
    game.CoreGui['Syaoul'].Main.TabContainer.ChildAdded:Connect(function()
        game.CoreGui['Syaoul'].Main:FindFirstChild('Container').Visible = true
        pcall(function()
            repeat wait() until game.CoreGui['Syaoul'].Main:FindFirstChild('TabContainer'):FindFirstChildWhichIsA('TextButton')
        end)
        game:GetService('TweenService'):Create(game.CoreGui['Syaoul'].Main:FindFirstChild('TabContainer'):FindFirstChildWhichIsA('TextButton'), TweenInfo.new(0.3), {TextTransparency = 0}):Play()
    end)

    spawn(function()
        if table.StartupSound.Toggle and table.StartupSound.SoundID ~= nil then
            local sound = Instance.new('Sound', game.CoreGui)
            sound.Name = "Startup Sound"
            sound.SoundId = "rbxassetid://6958727243"
            sound.Volume = 1.5
            sound.TimePosition = table.StartupSound.TimePosition
            sound:Play()
            sound.Stopped:Wait()
            sound:Destroy()
        end
    end)

    return tabHandler
end

return Library
