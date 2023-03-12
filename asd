local dark_UI = Instance.new("ScreenGui")
local shadow = Instance.new("ImageLabel")
local main = Instance.new("Frame")
local title = Instance.new("TextLabel")
local tabContainer = Instance.new("Frame")
local uIListLayout = Instance.new("UIListLayout")
local uIPadding = Instance.new("UIPadding")
local Main = Instance.new("TextButton")
local Character = Instance.new("TextButton")
local UI = Instance.new("TextButton")
local container = Instance.new("Frame")
local holder = Instance.new("ScrollingFrame")
local uIPadding1 = Instance.new("UIPadding")
local uIListLayout1 = Instance.new("UIListLayout")
local container_2 = Instance.new("Frame")
local holder_2 = Instance.new("ScrollingFrame")
local uIPadding1_2 = Instance.new("UIPadding")
local uIListLayout1_2 = Instance.new("UIListLayout")
local container_3 = Instance.new("Frame")
local holder_3 = Instance.new("ScrollingFrame")
local uIPadding1_3 = Instance.new("UIPadding")
local uIListLayout1_3 = Instance.new("UIListLayout")
local buttons = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local close = Instance.new("TextButton")
local minimize = Instance.new("TextButton")
local resize = Instance.new("TextButton")
 
dark_UI.Name = "dark_UI"
dark_UI.Parent = game.CoreGui
dark_UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

shadow.Name = "shadow"
shadow.Parent = dark_UI
shadow.AnchorPoint = Vector2.new(0.5, 0.5)
shadow.BackgroundColor3 = Color3.new(1, 1, 1)
shadow.BackgroundTransparency = 1
shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
shadow.Selectable = true
shadow.Size = UDim2.new(0, 529, 0, 331)
shadow.ZIndex = -1
shadow.Image = "rbxassetid://297774371"
shadow.ImageColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
shadow.ImageTransparency = 0.30000001192092896
shadow.SliceCenter = Rect.new(20, 20, 280, 280)

main.Name = "main"
main.Parent = dark_UI
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.new(0.109804, 0.109804, 0.109804)
main.Position = UDim2.new(0.5, 0, 0.5, 0)
main.Size = UDim2.new(0, 488, 0, 299)

title.Name = "title"
title.Parent = main
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Position = UDim2.new(0.409999996, 0, 0.054299999, 0)
title.Size = UDim2.new(0, 83, 0, 28)
title.Text = "Blek Library"
title.TextColor3 = Color3.new(0.658824, 0.658824, 0.658824)
title.TextSize = 20

tabContainer.Name = "tabContainer"
tabContainer.Parent = main
tabContainer.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
tabContainer.Position = UDim2.new(0.0342000015, 0, 0.187999994, 0)
tabContainer.Size = UDim2.new(0, 454, 0, 30)

uIListLayout.Name = "uIListLayout"
uIListLayout.Parent = tabContainer
uIListLayout.FillDirection = Enum.FillDirection.Horizontal
uIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout.Padding = UDim.new(0, 8)

uIPadding.Name = "uIPadding"
uIPadding.Parent = tabContainer
uIPadding.PaddingLeft = UDim.new(0, 7)
uIPadding.PaddingTop = UDim.new(0, 4)

Main.Name = "Main"
Main.Parent = tabContainer
Main.BackgroundColor3 = Color3.new(1, 1, 1)
Main.BackgroundTransparency = 1
Main.Size = UDim2.new(0, 10, 0, 24)
Main.Text = "Main"
Main.TextColor3 = Color3.new(0.764706, 0.764706, 0.764706)
Main.TextSize = 13

Character.Name = "Character"
Character.Parent = tabContainer
Character.BackgroundColor3 = Color3.new(1, 1, 1)
Character.BackgroundTransparency = 1
Character.Size = UDim2.new(0, 10, 0, 24)
Character.Text = "Character"
Character.TextColor3 = Color3.new(0.764706, 0.764706, 0.764706)
Character.TextSize = 13
Character.TextTransparency = 0.5

UI.Name = "UI"
UI.Parent = tabContainer
UI.BackgroundColor3 = Color3.new(1, 1, 1)
UI.BackgroundTransparency = 1
UI.Size = UDim2.new(0, 10, 0, 24)
UI.Text = "UI"
UI.TextColor3 = Color3.new(0.764706, 0.764706, 0.764706)
UI.TextSize = 13
UI.TextTransparency = 0.5

container.Name = "container"
container.Parent = main
container.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
container.Position = UDim2.new(0.0342000015, 0, 0.310000002, 0)
container.Size = UDim2.new(0, 454, 0, 183)

holder.Name = "holder"
holder.Parent = container
holder.Active = true
holder.BackgroundColor3 = Color3.new(1, 1, 1)
holder.BackgroundTransparency = 1
holder.BorderColor3 = Color3.new(0.129412, 0.129412, 0.129412)
holder.Position = UDim2.new(0.00219999999, 0, 0.00404000003, 0)
holder.Size = UDim2.new(0, 452, 0, 182)
holder.ScrollBarThickness = 2

uIPadding1.Name = "uIPadding1"
uIPadding1.Parent = holder
uIPadding1.PaddingLeft = UDim.new(0, 5)
uIPadding1.PaddingTop = UDim.new(0, 7)

uIListLayout1.Name = "uIListLayout1"
uIListLayout1.Parent = holder
uIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout1.Padding = UDim.new(0, 3)

container_2.Name = "container"
container_2.Parent = main
container_2.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
container_2.Position = UDim2.new(0.0342000015, 0, 0.310000002, 0)
container_2.Size = UDim2.new(0, 454, 0, 183)
container_2.Visible = false

holder_2.Name = "holder"
holder_2.Parent = container_2
holder_2.Active = true
holder_2.BackgroundColor3 = Color3.new(1, 1, 1)
holder_2.BackgroundTransparency = 1
holder_2.BorderColor3 = Color3.new(0.129412, 0.129412, 0.129412)
holder_2.Position = UDim2.new(0.00219999999, 0, 0.00404000003, 0)
holder_2.Size = UDim2.new(0, 452, 0, 182)
holder_2.ScrollBarThickness = 2

uIPadding1_2.Name = "uIPadding1"
uIPadding1_2.Parent = holder_2
uIPadding1_2.PaddingLeft = UDim.new(0, 5)
uIPadding1_2.PaddingTop = UDim.new(0, 7)

uIListLayout1_2.Name = "uIListLayout1"
uIListLayout1_2.Parent = holder_2
uIListLayout1_2.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout1_2.Padding = UDim.new(0, 3)

container_3.Name = "container"
container_3.Parent = main
container_3.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
container_3.Position = UDim2.new(0.0342000015, 0, 0.310000002, 0)
container_3.Size = UDim2.new(0, 454, 0, 183)
container_3.Visible = false

holder_3.Name = "holder"
holder_3.Parent = container_3
holder_3.Active = true
holder_3.BackgroundColor3 = Color3.new(1, 1, 1)
holder_3.BackgroundTransparency = 1
holder_3.BorderColor3 = Color3.new(0.129412, 0.129412, 0.129412)
holder_3.Position = UDim2.new(0.00219999999, 0, 0.00404000003, 0)
holder_3.Size = UDim2.new(0, 452, 0, 182)
holder_3.ScrollBarThickness = 2

uIPadding1_3.Name = "uIPadding1"
uIPadding1_3.Parent = holder_3
uIPadding1_3.PaddingLeft = UDim.new(0, 5)
uIPadding1_3.PaddingTop = UDim.new(0, 7)

uIListLayout1_3.Name = "uIListLayout1"
uIListLayout1_3.Parent = holder_3
uIListLayout1_3.SortOrder = Enum.SortOrder.LayoutOrder
uIListLayout1_3.Padding = UDim.new(0, 3)

buttons.Name = "buttons"
buttons.Parent = main
buttons.BackgroundColor3 = Color3.new(1, 1, 1)
buttons.BackgroundTransparency = 1
buttons.Size = UDim2.new(0, 105, 0, 57)

UIListLayout.Parent = buttons
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(0, 10)

close.Name = "close"
close.Parent = buttons
close.BackgroundColor3 = Color3.new(0.996078, 0.368627, 0.337255)
close.Size = UDim2.new(0, 16, 0, 16)
close.AutoButtonColor = false
close.Text = ""
close.TextColor3 = Color3.new(1, 0.196078, 0.196078)
close.TextSize = 14

minimize.Name = "minimize"
minimize.Parent = buttons
minimize.BackgroundColor3 = Color3.new(1, 0.741176, 0.180392)
minimize.Size = UDim2.new(0, 16, 0, 16)
minimize.AutoButtonColor = false
minimize.Text = ""
minimize.TextColor3 = Color3.new(1, 0.196078, 0.196078)
minimize.TextSize = 14

resize.Name = "resize"
resize.Parent = buttons
resize.BackgroundColor3 = Color3.new(0.152941, 0.784314, 0.247059)
resize.Position = UDim2.new(0.752380967, 0, 0.754385948, 0)
resize.Size = UDim2.new(0, 16, 0, 16)
resize.AutoButtonColor = false
resize.Text = ""
resize.TextColor3 = Color3.new(1, 0.196078, 0.196078)
resize.TextSize = 14
