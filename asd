local Library = {}
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local HTTPService = game:GetService("HttpService")

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

function Library:Create(table)
    local WindowName = table.Name

    local Main = Instance.new("Frame")
    Main.Name = "Main"
    Main.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    Main.Position = UDim2.fromScale(0.244, 0.292)
    Main.Size = UDim2.fromOffset(488, 299)

    local Title = Instance.new("TextLabel")
    Title.Name = "Title"
    Title.Font = Enum.Font.Gotham
    Title.Text = WindowName
    Title.TextColor3 = Color3.fromRGB(168, 168, 168)
    Title.TextSize = 20
    Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Title.BackgroundTransparency = 1
    Title.Position = UDim2.fromScale(0.41, 0.0543)
    Title.Size = UDim2.fromOffset(83, 28)
    Title.Parent = Main

    local uICorner = Instance.new("UICorner")
    uICorner.Name = "uICorner"
    uICorner.Parent = Main

    local TabContainer = Instance.new("Frame")
    TabContainer.Name = "TabContainer"
    TabContainer.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    TabContainer.Position = UDim2.fromScale(0.0342, 0.188)
    TabContainer.Size = UDim2.fromOffset(454, 30)

    local uICorner1 = Instance.new("UICorner")
    uICorner1.Name = "uICorner1"
    uICorner1.CornerRadius = UDim.new(0, 6)
    uICorner1.Parent = TabContainer

    local uIListLayout = Instance.new("UIListLayout")
    uIListLayout.Name = "uIListLayout"
    uIListLayout.Padding = UDim.new(0, 8)
    uIListLayout.FillDirection = Enum.FillDirection.Horizontal
    uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    uIListLayout.Parent = TabContainer

    local uIPadding = Instance.new("UIPadding")
    uIPadding.Name = "uIPadding"
    uIPadding.PaddingLeft = UDim.new(0, 7)
    uIPadding.PaddingTop = UDim.new(0, 4)
    uIPadding.Parent = TabContainer

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

    -- macos style buttons

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
    
    function tabHandler:Tab(name)
        --// Creating the yttab
        local Main1 = Instance.new("TextButton")
        Main1.Name = name
        Main1.Font = Enum.Font.Gotham
        Main1.Text = name
        Main1.TextColor3 = Color3.fromRGB(195, 195, 195)
        Main1.TextSize = 13
        Main1.TextTransparency = 0.5
        Main1.AutomaticSize = Enum.AutomaticSize.X
        Main1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Main1.BackgroundTransparency = 1
        Main1.Size = UDim2.fromOffset(10, 24)
        Main1.Parent = TabContainer

        --// Creating the Container
        local Container = Instance.new("Frame")
        Container.Name = "Container"
        Container.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
        Container.Position = UDim2.fromScale(0.0342, 0.31)
        Container.Size = UDim2.fromOffset(454, 183)
        
        local uICorner2 = Instance.new("UICorner")
        uICorner2.Name = "uICorner2"
        uICorner2.CornerRadius = UDim.new(0, 6)
        uICorner2.Parent = Container
        
        local Holder = Instance.new("ScrollingFrame")
        Holder.Name = "Holder"
        Holder.ScrollBarImageColor3 = Color3.fromRGB(76, 76, 76)
        Holder.ScrollBarThickness = 2
        Holder.ScrollingDirection = Enum.ScrollingDirection.Y
        Holder.Active = true
        Holder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Holder.BackgroundTransparency = 1
        Holder.BorderColor3 = Color3.fromRGB(33, 33, 33)
        Holder.Position = UDim2.fromScale(0.0022, 0.00404)
        Holder.Size = UDim2.fromOffset(452, 182)

        local uIPadding1 = Instance.new("UIPadding")
        uIPadding1.Name = "uIPadding1"
        uIPadding1.PaddingLeft = UDim.new(0, 5)
        uIPadding1.PaddingTop = UDim.new(0, 7)
        uIPadding1.Parent = Holder

        local uIListLayout1 = Instance.new("UIListLayout")
        uIListLayout1.Name = "uIListLayout1"
        uIListLayout1.Padding = UDim.new(0, 3)
        uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
        uIListLayout1.Parent = Holder

        local uICorner11 = Instance.new("UICorner")
        uICorner11.Name = "uICorner11"
        uICorner11.CornerRadius = UDim.new(0, 6)
        uICorner11.Parent = Holder

        Holder.Parent = Container
        Container.Parent = Main
        Container.Visible = false

        --// Event
        Main1.MouseButton1Click:Connect(function()
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
            game:GetService('TweenService'):Create(Main1, TweenInfo.new(0.3), {TextTransparency = 0}):Play()
        end)

        --// Elements
        local ElementHandler = {}
        function ElementHandler:Label(text)
            local label = Instance.new("Frame")
            label.Name = "label"
            label.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
            label.Size = UDim2.fromOffset(441, 32)
            label.Parent = Holder
    
            local uICorner3 = Instance.new("UICorner")
            uICorner3.Name = "uICorner3"
            uICorner3.CornerRadius = UDim.new(0, 6)
            uICorner3.Parent = label

            local textLabel = Instance.new("TextLabel")
            textLabel.Name = "textLabel"
            textLabel.Font = Enum.Font.Gotham
            textLabel.Text = text
            textLabel.TextColor3 = Color3.fromRGB(195, 195, 195)
            textLabel.TextSize = 13
            textLabel.TextStrokeColor3 = Color3.fromRGB(195, 195, 195)
            textLabel.TextXAlignment = Enum.TextXAlignment.Left
            textLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textLabel.BackgroundTransparency = 1
            textLabel.Position = UDim2.fromScale(0.0181, 0)
            textLabel.Size = UDim2.fromOffset(1, 32)
            textLabel.Parent = label
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

            local uICorner12 = Instance.new("UICorner")
            uICorner12.Name = "uICorner12"
            uICorner12.CornerRadius = UDim.new(0, 6)
            uICorner12.Parent = button

            local textLabel5 = Instance.new("TextLabel")
            textLabel5.Name = "textLabel5"
            textLabel5.Font = Enum.Font.Gotham
            textLabel5.Text = text
            textLabel5.TextColor3 = Color3.fromRGB(195, 195, 195)
            textLabel5.TextSize = 13
            textLabel5.TextStrokeColor3 = Color3.fromRGB(195, 195, 195)
            textLabel5.TextXAlignment = Enum.TextXAlignment.Left
            textLabel5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textLabel5.BackgroundTransparency = 1
            textLabel5.Position = UDim2.fromScale(0.0181, 0)
            textLabel5.Size = UDim2.fromOffset(1, 32)
            textLabel5.Parent = button

            local imageLabel = Instance.new("ImageLabel")
            imageLabel.Name = "imageLabel"
            imageLabel.Image = "http://www.roblox.com/asset/?id=9584292194"
            imageLabel.ImageColor3 = Color3.fromRGB(195, 195, 195)
            imageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            imageLabel.BackgroundTransparency = 1
            imageLabel.Position = UDim2.fromScale(0.943, 0.219)
            imageLabel.Size = UDim2.fromOffset(18, 18)
            imageLabel.Parent = button

            button.Parent = Holder

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

            local uICorner4 = Instance.new("UICorner")
            uICorner4.Name = "uICorner4"
            uICorner4.CornerRadius = UDim.new(0, 6)
            uICorner4.Parent = slider

            local textLabel1 = Instance.new("TextLabel")
            textLabel1.Name = "textLabel1"
            textLabel1.Font = Enum.Font.Gotham
            textLabel1.Text = text
            textLabel1.TextColor3 = Color3.fromRGB(195, 195, 195)
            textLabel1.TextSize = 13
            textLabel1.TextStrokeColor3 = Color3.fromRGB(195, 195, 195)
            textLabel1.TextXAlignment = Enum.TextXAlignment.Left
            textLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textLabel1.BackgroundTransparency = 1
            textLabel1.Position = UDim2.fromScale(0.0181, 0)
            textLabel1.Size = UDim2.fromOffset(1, 32)
            textLabel1.Parent = slider

            local frame = Instance.new("Frame")
            frame.Name = "frame"
            frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
            frame.Position = UDim2.fromScale(0.753, 0.375)
            frame.Size = UDim2.fromOffset(102, 8)

            local uICorner5 = Instance.new("UICorner")
            uICorner5.Name = "uICorner5"
            uICorner5.CornerRadius = UDim.new(0, 3)
            uICorner5.Parent = frame

            local frame1 = Instance.new("Frame")
            frame1.Name = "frame1"
            frame1.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            frame1.Position = UDim2.fromScale(-0.00207, 0)
            frame1.Size = UDim2.fromOffset(44, 8)

            local uICorner6 = Instance.new("UICorner")
            uICorner6.Name = "uICorner6"
            uICorner6.CornerRadius = UDim.new(0, 3)
            uICorner6.Parent = frame1

            frame1.Parent = frame

            frame.Parent = slider

            local textLabel2 = Instance.new("TextLabel")
            textLabel2.Name = "textLabel2"
            textLabel2.Font = Enum.Font.Gotham
            textLabel2.Text = "7"
            textLabel2.TextColor3 = Color3.fromRGB(195, 195, 195)
            textLabel2.TextSize = 13
            textLabel2.TextStrokeColor3 = Color3.fromRGB(195, 195, 195)
            textLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textLabel2.BackgroundTransparency = 1
            textLabel2.Position = UDim2.fromScale(0.653, 0)
            textLabel2.Size = UDim2.fromOffset(44, 32)
            textLabel2.Parent = slider

            slider.Parent = Holder
            textLabel2.Text = tostring(default)

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
                    local percentage = math.clamp((Mouse.X - frame1.AbsolutePosition.X) / (frame1.AbsoluteSize.X), 0, 1)
                    local value = ((max - min) * percentage) + min
                    value = math.floor(value)
                    textLabel2.Text = value
                    local tween = game:GetService('TweenService'):Create(frame1, TweenInfo.new(0.06), {Size = UDim2.fromScale(percentage, 1)}):Play()
                    callback(value)
                end
            end)
        end

        function ElementHandler:Toggle(text, callback)
            text = text or "Toggle"
            callback = callback or function() end

            local toggle1 = Instance.new("TextButton")
            toggle1.Name = "toggle1"
            toggle1.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
            toggle1.Size = UDim2.fromOffset(441, 32)
            toggle1.Text = ""
            toggle1.AutoButtonColor = false

            local uICorner9 = Instance.new("UICorner")
            uICorner9.Name = "uICorner9"
            uICorner9.CornerRadius = UDim.new(0, 6)
            uICorner9.Parent = toggle1

            local textLabel4 = Instance.new("TextLabel")
            textLabel4.Name = "textLabel4"
            textLabel4.Font = Enum.Font.Gotham
            textLabel4.Text = text
            textLabel4.TextColor3 = Color3.fromRGB(195, 195, 195)
            textLabel4.TextSize = 13
            textLabel4.TextStrokeColor3 = Color3.fromRGB(195, 195, 195)
            textLabel4.TextXAlignment = Enum.TextXAlignment.Left
            textLabel4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textLabel4.BackgroundTransparency = 1
            textLabel4.Position = UDim2.fromScale(0.0181, 0)
            textLabel4.Size = UDim2.fromOffset(1, 32)
            textLabel4.Parent = toggle1

            local frame3 = Instance.new("Frame")
            frame3.Name = "frame3"
            frame3.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            frame3.Position = UDim2.fromScale(0.943, 0.219)
            frame3.Size = UDim2.fromOffset(18, 18)

            local uICorner10 = Instance.new("UICorner")
            uICorner10.Name = "uICorner10"
            uICorner10.CornerRadius = UDim.new(0, 3)
            uICorner10.Parent = frame3

            local uIStroke1 = Instance.new("UIStroke")
            uIStroke1.Name = "uIStroke1"
            uIStroke1.Color = Color3.fromRGB(76, 76, 76)
            uIStroke1.Parent = frame3

            frame3.Parent = toggle1

            toggle1.Parent = Holder

            local tog = false

            toggle1.MouseEnter:Connect(function()
                game:GetService('TweenService'):Create(toggle1, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(43,43,43)}):Play()
            end)

            toggle1.MouseLeave:Connect(function()
                game:GetService('TweenService'):Create(toggle1, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(38,38,38)}):Play()
            end)

            toggle1.MouseButton1Click:Connect(function()
                tog = not tog
                callback(tog)
                if tog then
                    game:GetService('TweenService'):Create(frame3, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(23, 143, 75)}):Play()
                    game:GetService('TweenService'):Create(uIStroke1, TweenInfo.new(0.2), {Color = Color3.fromRGB(32, 202, 106)}):Play()
                else
                    game:GetService('TweenService'):Create(frame3, TweenInfo.new(0.2), {BackgroundColor3 = Color3.fromRGB(45, 45, 45)}):Play()
                    game:GetService('TweenService'):Create(uIStroke1, TweenInfo.new(0.2), {Color = Color3.fromRGB(76, 76, 76)}):Play()
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

            local uICorner13 = Instance.new("UICorner")
            uICorner13.Name = "uICorner13"
            uICorner13.CornerRadius = UDim.new(0, 6)
            uICorner13.Parent = textbox

            local textLabel6 = Instance.new("TextLabel")
            textLabel6.Name = "textLabel6"
            textLabel6.Font = Enum.Font.Gotham
            textLabel6.Text = text
            textLabel6.TextColor3 = Color3.fromRGB(195, 195, 195)
            textLabel6.TextSize = 13
            textLabel6.TextStrokeColor3 = Color3.fromRGB(195, 195, 195)
            textLabel6.TextXAlignment = Enum.TextXAlignment.Left
            textLabel6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textLabel6.BackgroundTransparency = 1
            textLabel6.Position = UDim2.fromScale(0.0181, 0)
            textLabel6.Size = UDim2.fromOffset(1, 32)
            textLabel6.Parent = textbox

            local textBox = Instance.new("TextBox")
            textBox.Name = "textBox"
            textBox.Font = Enum.Font.SourceSans
            textBox.Text = ""
            textBox.TextColor3 = Color3.fromRGB(195, 195, 195)
            textBox.TextSize = 12
            textBox.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
            textBox.Position = UDim2.fromScale(0.864, 0.188)
            textBox.Size = UDim2.fromOffset(52, 19)

            local uICorner14 = Instance.new("UICorner")
            uICorner14.Name = "uICorner14"
            uICorner14.CornerRadius = UDim.new(0, 6)
            uICorner14.Parent = textBox

            textBox.Parent = textbox
            textbox.Parent = Holder

            textbox.MouseEnter:Connect(function()
                game:GetService('TweenService'):Create(textbox, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(43,43,43)}):Play()
            end)

            textbox.MouseLeave:Connect(function()
                game:GetService('TweenService'):Create(textbox, TweenInfo.new(0.3), {BackgroundColor3 = Color3.fromRGB(38,38,38)}):Play()
            end)

            textBox.FocusLost:Connect(function()
                callback(textBox.Text)
            end)
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
