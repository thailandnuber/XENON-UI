

do local ui =  game:GetService("CoreGui"):FindFirstChild("DzX Lib")  if ui then ui:Destroy() end end



local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()

local Atomlib = Instance.new("ScreenGui")

Atomlib.Name = "DzX Lib"
Atomlib.Parent = game:GetService("CoreGui")
Atomlib.ZIndexBehavior = Enum.ZIndexBehavior.Sibling



local function MakeDraggable(topbarobject, object)
	local Dragging = nil
	local DragInput = nil
	local DragStart = nil
	local StartPosition = nil

	local function Update(input)
		local Delta = input.Position - DragStart
		local pos =
			UDim2.new(
			StartPosition.X.Scale,
			StartPosition.X.Offset + Delta.X,
			StartPosition.Y.Scale,
			StartPosition.Y.Offset + Delta.Y
		)
		local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
		Tween:Play()
	end

	topbarobject.InputBegan:Connect(
		function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				DragStart = input.Position
				StartPosition = object.Position

				input.Changed:Connect(
					function()
						if input.UserInputState == Enum.UserInputState.End then
							Dragging = false
						end
					end
				)
			end
		end
	)

	topbarobject.InputChanged:Connect(
		function(input)
			if
				input.UserInputType == Enum.UserInputType.MouseMovement or
					input.UserInputType == Enum.UserInputType.Touch
			then
				DragInput = input
			end
		end
	)

	UserInputService.InputChanged:Connect(
		function(input)
			if input == DragInput and Dragging then
				Update(input)
			end
		end
	)
end


local ui = {}


function ui:win()

    local fs = false 
    local currentservertoggled = ""
    local Main = Instance.new("Frame")
        
    Main.Name = "Main"
    Main.Parent = Atomlib
    Main.BackgroundColor3 = Color3.fromRGB(19 , 19, 19)
    Main.BorderSizePixel = 0
    Main.Position = UDim2.new(0.5, 0, 0.5   , 0)
    Main.Size = UDim2.new(0, 0, 0, 0)
    Main.ClipsDescendants = true 
    Main.AnchorPoint = Vector2.new(0.5, 0.5)


    local Mainpagt = Instance.new("Frame")
        
    Mainpagt.Name = "Mainpagt"
    Mainpagt.Parent = Main
    Mainpagt.BackgroundColor3 = Color3.fromRGB(102, 204, 102)
    Mainpagt.BorderSizePixel = 0
    Mainpagt.Position = UDim2.new(0, 0, 0  , 0)
    Mainpagt.Size = UDim2.new(0, 1500, 0, 120)
    Mainpagt.ClipsDescendants = true 
    Mainpagt.AnchorPoint = Vector2.new(0.5, 0.5)

local MainHub = Instance.new("Frame")
        
    MainHub.Name = "MainHub"
    MainHub.Parent = Main
    MainHub.BackgroundColor3 = Color3.fromRGB(19,19,19)
    MainHub.BorderSizePixel = 0
    MainHub.BackgroundTransparency = 0
    MainHub.Position = UDim2.new(0.50, 0, 0.26 , 0)
    MainHub.Size = UDim2.new(0, 545, 0, 160)
    MainHub.ClipsDescendants = true 
    MainHub.AnchorPoint = Vector2.new(0.5, 0.5)

    local texth3 = Instance.new("TextLabel")
                  
    texth3.Parent = MainHub
    texth3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    texth3.BackgroundTransparency = 1
    texth3.AnchorPoint = Vector2.new(0.5, 0.5)
    texth3.Position = UDim2.new(0.200, 0, 0.2, 0)
    texth3.BorderSizePixel = 0
    texth3.Size = UDim2.new(0, 130, 0, 20)
    texth3.Font = Enum.Font.GothamBold
    texth3.Text = "      Welcome To"
    texth3.TextColor3 = Color3.fromRGB(255, 255, 255)
    texth3.TextSize = 30.000

local texth1 = Instance.new("TextLabel")
                  
    texth1.Parent = MainHub
    texth1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    texth1.BackgroundTransparency = 1
    texth1.AnchorPoint = Vector2.new(0.5, 0.5)
    texth1.Position = UDim2.new(0.200, 0, 0.4, 0)
    texth1.BorderSizePixel = 0
    texth1.Size = UDim2.new(0, 130, 0, 20)
    texth1.Font = Enum.Font.GothamBold
    texth1.Text = "  แจกทุกอย่าง"
    texth1.TextColor3 = Color3.fromRGB(255, 255, 255)
    texth1.TextSize = 45.000

local texth2 = Instance.new("TextLabel")
                  
    texth2.Parent = MainHub
    texth2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    texth2.BackgroundTransparency = 1
    texth2.AnchorPoint = Vector2.new(0.5, 0.5)
    texth2.Position = UDim2.new(0.400, 0, 0.4, 0)
    texth2.BorderSizePixel = 0
    texth2.Size = UDim2.new(0, 130, 0, 20)
    texth2.Font = Enum.Font.GothamBold
    texth2.Text = "       Hub"
    texth2.TextColor3 = Color3.fromRGB(102, 204, 102)
    texth2.TextSize = 45.000
--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
local namehu = Instance.new("TextLabel")
                  
    namehu.Parent = Main
    namehu.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    namehu.BackgroundTransparency = 1
    namehu.AnchorPoint = Vector2.new(0.5, 0.5)
    namehu.Position = UDim2.new(0.235, 0, 0.06, 0)
    namehu.BorderSizePixel = 0
    namehu.Size = UDim2.new(0, 130, 0, 20)
    namehu.Font = Enum.Font.GothamBold
    namehu.Text = "แจกทุกอย่าง"
    namehu.TextColor3 = Color3.fromRGB(255, 255, 255)
    namehu.TextSize = 25.000
    --by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    local Sethuh = Instance.new("Frame")
        
    Sethuh.Name = "Sethuh"
    Sethuh.Parent = MainHub
    Sethuh.BackgroundColor3 = Color3.fromRGB(102, 204, 102)
    Sethuh.BorderSizePixel = 0
    Sethuh.BackgroundTransparency = 0
    Sethuh.Position = UDim2.new(0.06, 0, 0.45 , 0)
    Sethuh.Size = UDim2.new(0, 6, 0, 100)
    Sethuh.ClipsDescendants = true 
    Sethuh.AnchorPoint = Vector2.new(0.5, 0.5)
--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    local Sethuh_Corner = Instance.new("UICorner")
            --by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    Sethuh_Corner.CornerRadius = UDim.new(0, 15)
    Sethuh_Corner.Name = ""
    Sethuh_Corner.Parent = Sethuh
    

    local JoinButton = Instance.new("TextButton")

    JoinButton.Parent = MainHub
    JoinButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    JoinButton.BackgroundTransparency = 1
    JoinButton.BorderSizePixel = 0
    JoinButton.Position = UDim2.new(0.235, 0, 0.7, 0)
    JoinButton.AnchorPoint = Vector2.new(0.5, 0.5)
    JoinButton.Size = UDim2.new(0, 140, 0.01, 25)
    JoinButton.Font = Enum.Font.GothamBold
    JoinButton.Text = "Join Discord"
    JoinButton.TextColor3 = Color3.fromRGB(102, 204, 102)
    JoinButton.TextSize = 17.000
    JoinButton.MouseButton1Click:Connect(function()
        local a=request or http_request or syn and syn.request;local b=game.HttpService;a({Url="http://127.0.0.1:6463/rpc?v=1",Method="POST",Headers={["Content-Type"]="application/json",["Origin"]="https://discord.com"},Body=b:JSONEncode({cmd="INVITE_BROWSER",args={code="NvGY2vEkV2"},nonce=b:GenerateGUID(false)})})local c=game:GetService("Players").LocalPlayer
    end)
    local Main_UiXConner  = Instance.new("UICorner")

    Main_UiXConner.CornerRadius = UDim.new(0, 8)
    Main_UiXConner.Name = "Main_UiXConner"
    Main_UiXConner.Parent = JoinButton

    local SearchStroke = Instance.new("UIStroke")

    SearchStroke.Thickness = 1.4
    SearchStroke.Name = ""
    SearchStroke.Parent = JoinButton
    SearchStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    SearchStroke.LineJoinMode = Enum.LineJoinMode.Round
    SearchStroke.Color = Color3.fromRGB(102, 204, 102)
    SearchStroke.Transparency = 0

    local Logohub = Instance.new("ImageLabel")
    
    
    Logohub.Name = "Logohub"
    Logohub.Parent = MainHub
    Logohub.AnchorPoint = Vector2.new(0.5, 0.5)
    Logohub.Position = UDim2.new(0.850, 0, 0.500, 0)
    Logohub.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
    Logohub.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Logohub.BorderSizePixel = 0
    Logohub.Size = UDim2.new(0, 150, 0, 150)
    Logohub.Image = "http://www.roblox.com/asset/?id=11605018570"

    local Logo = Instance.new("ImageLabel")--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    
    
    Logo.Name = "Logo"
    Logo.Parent = Main
    Logo.AnchorPoint = Vector2.new(0.5, 0.5)
    Logo.Position = UDim2.new(0.06, 0, 0.05, 0)
    Logo.BackgroundTransparency = 1--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    Logo.BackgroundColor3 = Color3.fromRGB(19, 19, 19)
    Logo.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Logo.BorderSizePixel = 0
    Logo.Size = UDim2.new(0, 57, 0, 57)
    Logo.Image = "http://www.roblox.com/asset/?id=11605018570"
    
    local PageTap = Instance.new("Frame")
    local UIGradient_PageTap = Instance.new("UIGradient")

    PageTap.Name = "PageTap"
    PageTap.Parent = Main
    PageTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    PageTap.BackgroundTransparency = 1
    PageTap.BorderSizePixel = 0
    PageTap.Position = UDim2.new(0.189873412, 100, 0, 0)
    PageTap.Size = UDim2.new(0, 350, 0, 56)

    UIGradient_PageTap.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(230, 0, 39)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 35, 138))}
    UIGradient_PageTap.Parent = PageTap

    
    local ScolTap = Instance.new("ScrollingFrame")
    local UIListLayout_ScolTap = Instance.new("UIListLayout")
    local UIPadding_ScolTap = Instance.new("UIPadding")

    ScolTap.Name = "ScolTap"
    ScolTap.Parent = PageTap--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    ScolTap.Active = true
    ScolTap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScolTap.BackgroundTransparency = 1
    ScolTap.BorderSizePixel = 0
    ScolTap.Size = UDim2.new(0, 350, 0, 56)
    ScolTap.CanvasSize = UDim2.new(0.5, 0, 0, 0)
    ScolTap.ScrollBarThickness = 3
    ScolTap.ScrollBarImageColor3 =  Color3.fromRGB(235, 235, 235)

    UIListLayout_ScolTap.Parent = ScolTap
    UIListLayout_ScolTap.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_ScolTap.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_ScolTap.Padding = UDim.new(0, 5)

    UIPadding_ScolTap.Parent = ScolTap
    UIPadding_ScolTap.PaddingTop = UDim.new(0, 6)


    local pagesFolder = Instance.new("Folder")

    pagesFolder.Name = "pagesFolder"
    pagesFolder.Parent = Main
  
    MakeDraggable(Main,Main)
    local tween = game:GetService("TweenService")
    local library = {currenttab = '',toggledui = false}
    tween:Create(Main,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 550)}):Play()


    game:GetService("UserInputService").InputBegan:Connect(function(input)
        if input.KeyCode == Enum.KeyCode.RightControl then 
            if library.toggledui == false then
                library.toggledui = true  
                tween:Create(Main,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
            else 
                library.toggledui = false 
                tween:Create(Main,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 550)}):Play()
            end 
        end
    end)--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2


local tap = {}

function tap:addtap(text)

    local TextButton_Tap = Instance.new("TextButton")

    TextButton_Tap.Parent = ScolTap
    TextButton_Tap.Name = "TextButton_Tap"
    TextButton_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton_Tap.BackgroundTransparency = 1
    TextButton_Tap.Position = UDim2.new(0.0151898731, 0, 0.132352948, 0)
    TextButton_Tap.Size = UDim2.new(0, 75, 0, 50)
    TextButton_Tap.Font = Enum.Font.GothamBold
    TextButton_Tap.TextColor3 = Color3.fromRGB(155, 155, 155)
    TextButton_Tap.TextSize = 15.000
    TextButton_Tap.TextWrapped = true
    TextButton_Tap.Text = text
    --by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    

    local TextLabel_Tap = Instance.new("TextLabel") 

    TextLabel_Tap.Parent = TextButton_Tap
    TextLabel_Tap.Name = "TextLabel_Tap"
    TextLabel_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_Tap.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel_Tap.Position = UDim2.new(0.52, 0, 0.8, 0)
    TextLabel_Tap.Size = UDim2.new(0, 0, 0, 0)
    TextLabel_Tap.Font = Enum.Font.GothamBold
    TextLabel_Tap.Text = " "
    TextLabel_Tap.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_Tap.TextSize = 20.000
    TextLabel_Tap.BorderSizePixel = 0
--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2


    local MainFramePage = Instance.new("Frame")

    
    MainFramePage.Name = "MainFramePage"
    MainFramePage.Parent = pagesFolder
    MainFramePage.BackgroundColor3 = Color3.fromRGB(102, 204, 102)
    MainFramePage.BorderSizePixel = 0
    MainFramePage.Position = UDim2.new(0, 0, 0.141772151, 150)
    MainFramePage.Size = UDim2.new(0, 550, 0, 339)
    MainFramePage.Visible = false 



    local FramePage = Instance.new("Frame")
    local ScolPage = Instance.new("ScrollingFrame")
    local MainPage = Instance.new("Frame")
    local UIGridLayout_MainPage = Instance.new("UIGridLayout")
    local UIListLayout_MainPage = Instance.new("UIListLayout")
    local UIPadding_MainPage = Instance.new("UIPadding")

    --Properties:

    FramePage.Name = "FramePage"
    FramePage.Parent = MainFramePage
    FramePage.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    FramePage.BorderSizePixel = 0
    FramePage.ClipsDescendants = true
    FramePage.Position = UDim2.new(0, 0, 0.02359882, 0)
    FramePage.Size = UDim2.new(0, 550, 0, 331)
    FramePage.Visible = true 

    ScolPage.Name = "ScolPage"
    ScolPage.Parent = FramePage
    ScolPage.Active = true
    ScolPage.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    ScolPage.BorderSizePixel = 0
    ScolPage.Size = UDim2.new(0, 550, 0, 324)
    ScolPage.ScrollBarThickness = 3
    ScolPage.ScrollBarImageColor3 =  Color3.fromRGB(102, 204, 102)

    MainPage.Name = "MainPage"
    MainPage.Parent = ScolPage
    MainPage.BackgroundTransparency = 1 
    MainPage.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    MainPage.BorderSizePixel = 0
    MainPage.Size = UDim2.new(0, 550, 0, 324)

    UIGridLayout_MainPage.Parent = MainPage
    UIGridLayout_MainPage.SortOrder = Enum.SortOrder.LayoutOrder
    UIGridLayout_MainPage.CellPadding = UDim2.new(0, 20, 0, 10)
    UIGridLayout_MainPage.CellSize = UDim2.new(0, 250, 0, 295)

    UIListLayout_MainPage.Parent = MainPage
    UIListLayout_MainPage.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_MainPage.Padding = UDim.new(0, 5)

    UIPadding_MainPage.Parent = MainPage
    UIPadding_MainPage.PaddingLeft = UDim.new(0, 16)
    UIPadding_MainPage.PaddingTop = UDim.new(0, 10)


    TextButton_Tap.MouseButton1Click:connect(function (  )
        currentservertoggled = MainPage.Name
        for i, v in next, pagesFolder:GetChildren() do
            if v.Name == "MainFramePage" then
                -- TweenService:Create(
                --     fucklib,
                --     TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                --     {BackgroundTransparency = 0}
                -- ):Play()
                v.Visible = false

            end

            MainFramePage.Visible = true
       --     wait(0.125)
            -- TweenService:Create(
            --     fucklib,
            --     TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            --     {BackgroundTransparency = 1}
            -- ):Play()
        --    MainPage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Quad", 0.15, true)
        end--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
        
    for i ,v in next , ScolTap:GetChildren() do
        if v:IsA("TextButton") then
            TweenService:Create(
                v.TextLabel_Tap,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 0, 0, 0)}
            ):Play()
            TweenService:Create(
                v,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(155, 155, 155)}
            ):Play()
            
            
        end
        TweenService:Create(
            TextLabel_Tap,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Size = UDim2.new(0, 50, 0, 2)}
        ):Play()
        TweenService:Create(
            TextButton_Tap,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255, 255, 255)}
        ):Play()
    end
 end)



    if fs == false then
        TweenService:Create(
            TextLabel_Tap,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {Size = UDim2.new(0, 50, 0, 2)}
        ):Play()
        TweenService:Create(
            TextButton_Tap,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextColor3 = Color3.fromRGB(255, 255, 255)}
        ):Play()

        MainFramePage.Visible = true
        MainFramePage.Name  = text .. "Server"
        fs  = true
    end

local page = {}

function page:addpage()

    local Page = Instance.new("Frame")
    local ScolPage2 = Instance.new("ScrollingFrame")
    
    
    Page.Name = "Page"
    Page.Parent = MainPage
    Page.BackgroundColor3 = Color3.fromRGB(102, 204, 102)
    Page.BorderSizePixel = 0
    Page.Position = UDim2.new(0.51645571, 0, 0.0526315793, 0)
    Page.Size = UDim2.new(0, 250, 0, 262)
    
    ScolPage2.Name = "ScolPage"
    ScolPage2.Parent = Page
    ScolPage2.Active = true
    ScolPage2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    ScolPage2.BorderSizePixel = 0
    ScolPage2.Size = UDim2.new(0, 265, 0, 298)
    ScolPage2.ScrollBarThickness = 3
    ScolPage2.ScrollBarImageColor3 =  Color3.fromRGB(235, 235, 235)
    

    local UIListLayout_ScolPage2 = Instance.new("UIListLayout")

    UIListLayout_ScolPage2.Parent = ScolPage2
    UIListLayout_ScolPage2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_ScolPage2.Padding = UDim.new(0, 7)

    
    local UIPadding_ScolPage2 = Instance.new("UIPadding")

    UIPadding_ScolPage2.Parent = ScolPage2
    UIPadding_ScolPage2.PaddingLeft = UDim.new(0,15)
    UIPadding_ScolPage2.PaddingTop = UDim.new(0, 15)

    game:GetService("RunService").Stepped:Connect(function ()
        pcall(function ()
              ScolTap.CanvasSize = UDim2.new(0,UIListLayout_ScolTap.AbsoluteContentSize.X  ,0,0)  
              ScolPage.CanvasSize = UDim2.new(0,0,0,UIGridLayout_MainPage.AbsoluteContentSize.Y + 20 )  
              ScolPage2.CanvasSize = UDim2.new(0,0,0,UIListLayout_ScolPage2.AbsoluteContentSize.Y+ 30 )  
        end)
    end)

    
local ems = {}

function ems:Button(text,callback)
    


    local ToggleFrame = Instance.new("Frame")
    
    ToggleFrame.Name = "ToggleFrame"
    ToggleFrame.Parent = ScolPage2
    ToggleFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    ToggleFrame.BorderSizePixel = 0
    ToggleFrame.BackgroundTransparency = 1
    ToggleFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ToggleFrame.Size = UDim2.new(0, 230, 0, 22)

    local emsTextButton = Instance.new("TextButton")

    emsTextButton.Parent = ToggleFrame
    emsTextButton.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    emsTextButton.BackgroundTransparency = 1
    emsTextButton.AnchorPoint = Vector2.new(0.5, 0.5)
    emsTextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
    emsTextButton.Size = UDim2.new(1, 0, 0.8, 0)
    emsTextButton.Font = Enum.Font.GothamSemibold
    emsTextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    emsTextButton.TextSize = 13.000
    emsTextButton.TextWrapped = true
    emsTextButton.Text = ""
    emsTextButton.BorderSizePixel = 0
    emsTextButton.AutoButtonColor = false 

    local TextButton_Pageframe_Uiconner = Instance.new("UICorner")
            
    TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 3)
    TextButton_Pageframe_Uiconner.Name = ""
    TextButton_Pageframe_Uiconner.Parent = ToggleFrame

    local TextLabel_emsTextButton = Instance.new("TextLabel") 

    TextLabel_emsTextButton.Parent = emsTextButton
    TextLabel_emsTextButton.Name = "TextLabel_emsTextButton"
    TextLabel_emsTextButton.BackgroundColor3 = Color3.fromRGB(102, 204, 102)
    TextLabel_emsTextButton.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel_emsTextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextLabel_emsTextButton.Size = UDim2.new(0, 0, 0, 0)
    TextLabel_emsTextButton.Font = Enum.Font.GothamSemibold
    TextLabel_emsTextButton.Text = text
    TextLabel_emsTextButton.TextColor3 = Color3.fromRGB(102, 204, 102)
    TextLabel_emsTextButton.TextSize = 10.000
    TextLabel_emsTextButton.BorderSizePixel = 0

    local MheeFrameStroke = Instance.new("UIStroke",ToggleFrame)
                    
    MheeFrameStroke.Thickness = 1
    MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
    MheeFrameStroke.Color = Color3.fromRGB(102, 204, 102)
    MheeFrameStroke.Transparency = 0

    emsTextButton.MouseButton1Click:Connect(function()
        TweenService:Create(
            TextLabel_emsTextButton,
            TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextSize =5} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        wait(0.1)
        TweenService:Create(
            TextLabel_emsTextButton,
            TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextSize = 10} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        pcall(callback)
    end)

    
    emsTextButton.MouseEnter:Connect(function (  )
    --    if joincheck.check1 == false then

            TweenService:Create(
                emsTextButton,
                TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  Color3.fromRGB(102, 204, 102)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
--     end
        -- joincheck = not joincheck
        -- callback(joincheck)
    end)
    emsTextButton.MouseLeave:Connect(function (  )

            TweenService:Create(
                emsTextButton,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  Color3.fromRGB(102, 204, 102)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
    end)
end

function ems:Button1(text,callback)

    local ToggleFrame1 = Instance.new("Frame")
    
    ToggleFrame1.Name = "ToggleFrame"
    ToggleFrame1.Parent = ScolPage2
    ToggleFrame1.BackgroundColor3 = Color3.fromRGB(102, 204, 102)
    ToggleFrame1.BorderSizePixel = 0
    ToggleFrame1.BackgroundTransparency = 0
    ToggleFrame1.Position = UDim2.new(0.5, 0, 0.5, 0)
    ToggleFrame1.Size = UDim2.new(0, 230, 0, 22)

    local emsTextButton1 = Instance.new("TextButton")

    emsTextButton1.Parent = ToggleFrame1
    emsTextButton1.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    emsTextButton1.BackgroundTransparency = 1
    emsTextButton1.AnchorPoint = Vector2.new(0.5, 0.5)
    emsTextButton1.Position = UDim2.new(0.5, 0, 0.5, 0)
    emsTextButton1.Size = UDim2.new(1, 0, 0.8, 0)
    emsTextButton1.Font = Enum.Font.GothamSemibold
    emsTextButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
    emsTextButton1.TextSize = 13.000
    emsTextButton1.TextWrapped = true
    emsTextButton1.Text = ""
    emsTextButton1.BorderSizePixel = 0
    emsTextButton1.AutoButtonColor = false 

    local TextButton_Pageframe_Uiconner1 = Instance.new("UICorner")
            
    TextButton_Pageframe_Uiconner1.CornerRadius = UDim.new(0, 3)
    TextButton_Pageframe_Uiconner1.Name = ""
    TextButton_Pageframe_Uiconner1.Parent = ToggleFrame1

    local TextLabel_emsTextButton1 = Instance.new("TextLabel") 

    TextLabel_emsTextButton1.Parent = emsTextButton1
    TextLabel_emsTextButton1.Name = "TextLabel_emsTextButton"
    TextLabel_emsTextButton1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel_emsTextButton1.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabel_emsTextButton1.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextLabel_emsTextButton1.Size = UDim2.new(0, 0, 0, 0)
    TextLabel_emsTextButton1.Font = Enum.Font.GothamSemibold
    TextLabel_emsTextButton1.Text = text
    TextLabel_emsTextButton1.TextColor3 = Color3.fromRGB(255, 255 ,255)
    TextLabel_emsTextButton1.TextSize = 10.000
    TextLabel_emsTextButton1.BorderSizePixel = 0
--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    local MheeFrameStroke1 = Instance.new("UIStroke",ToggleFrame1)
                    --by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    MheeFrameStroke1.Thickness = 1
    MheeFrameStroke1.LineJoinMode = Enum.LineJoinMode.Round
    MheeFrameStroke1.Color = Color3.fromRGB(102, 204, 102)
    MheeFrameStroke1.Transparency = 0
--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    emsTextButton1.MouseButton1Click:Connect(function()
        TweenService:Create(
            TextLabel_emsTextButton1,
            TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextSize =5} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        wait(0.1)--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
        TweenService:Create(
            TextLabel_emsTextButton1,
            TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {TextSize = 10} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        pcall(callback)
    end)--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    
    emsTextButton1.MouseEnter:Connect(function (  )
    --    if joincheck.check1 == false then

            TweenService:Create(
                emsTextButton1,
                TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
--     end
        -- joincheck = not joincheck--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
        -- callback(joincheck)
    end)
    emsTextButton1.MouseLeave:Connect(function (  )

            TweenService:Create(
                emsTextButton1,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
    end)--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
end

function  ems:Toggle(text,de,callback)

    local togdoc = {boolen = false ; }--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    local ToggleFrame = Instance.new("Frame")
    
    ToggleFrame.Name = "ToggleFrame"
    ToggleFrame.Parent = ScolPage2
    ToggleFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ToggleFrame.BorderSizePixel = 0
    ToggleFrame.BackgroundTransparency = 1
    ToggleFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ToggleFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ToggleFrame.Size = UDim2.new(0, 10, 0, 30)
    
    local ToggleButton = Instance.new("TextButton")
--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    ToggleButton.Parent = ToggleFrame
    ToggleButton.BackgroundColor3 = Color3.fromRGB( 0, 0, 60)
    ToggleButton.BackgroundTransparency = 1
    ToggleButton.AnchorPoint = Vector2.new(0, 0.5)
    ToggleButton.Position = UDim2.new(0.5, 0, 0.5, 0)
    ToggleButton.Size = UDim2.new(0, 130, 0, 25)
    ToggleButton.Font = Enum.Font.GothamSemibold
    ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleButton.TextSize = 13.000
    ToggleButton.TextWrapped = false
    ToggleButton.Text = ""
    ToggleButton.BorderSizePixel = 0 
    ToggleButton.AutoButtonColor = false 
    ToggleButton.ClipsDescendants = true 

    local ToggleButton2 = Instance.new("TextButton")

    ToggleButton2.Parent = ToggleFrame
    ToggleButton2.BackgroundColor3 = Color3.fromRGB(102, 204, 102)
    ToggleButton2.BackgroundTransparency = 1
    ToggleButton2.AnchorPoint = Vector2.new(0.5, 0.5)
    ToggleButton2.Position = UDim2.new(1, 0, 0.45, 0)
    ToggleButton2.Size = UDim2.new(0, 20, 0, 20)
    ToggleButton2.Font = Enum.Font.GothamSemibold
    ToggleButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
    ToggleButton2.TextSize = 13.000
    ToggleButton2.TextWrapped = false
    ToggleButton2.Text = ""
    ToggleButton2.BorderSizePixel = 0 


    local TextLabelToggle = Instance.new("TextLabel") 

    TextLabelToggle.Parent = ToggleButton
    TextLabelToggle.Name = "TextLabelToggle"
    TextLabelToggle.BackgroundColor3 = Color3.fromRGB(102, 204, 102)
    TextLabelToggle.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabelToggle.Position = UDim2.new(0.64, 0, 0.4, 0)
    TextLabelToggle.Size =  UDim2.new(0, 150, 0, 40)
    TextLabelToggle.Font = Enum.Font.GothamBold
    TextLabelToggle.Text = tostring(text)
    TextLabelToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabelToggle.TextSize = 15.000
    TextLabelToggle.BorderSizePixel = 0
    TextLabelToggle.TextScaled = true
    TextLabelToggle.BackgroundTransparency = 1
    TextLabelToggle.TextXAlignment = Enum.TextXAlignment.Left
    local resizetext2 =  Instance.new("UITextSizeConstraint",TextLabelToggle)
    resizetext2.MaxTextSize = 11
    
    local TextButton_2_Toggle = Instance.new("TextButton")

    TextButton_2_Toggle.Parent = ToggleButton2
    TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(102, 204, 102)
    TextButton_2_Toggle.BorderColor3 = Color3.fromRGB(249, 53, 139)
    TextButton_2_Toggle.BorderSizePixel = 0
    TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton_2_Toggle.Position = UDim2.new(11, 0, 0.5, 0)
    TextButton_2_Toggle.Size = UDim2.new(0, 19, 0, 19)
    TextButton_2_Toggle.Font = Enum.Font.SourceSans
    TextButton_2_Toggle.Text = " "
    TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_2_Toggle.TextSize = 12.000
    TextButton_2_Toggle.AutoButtonColor = false 

    local TextButton_3_Toggle = Instance.new("TextButton")


    TextButton_3_Toggle.Parent = TextButton_2_Toggle
    TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    TextButton_3_Toggle.BorderColor3 = Color3.fromRGB(102, 204, 102)
    TextButton_3_Toggle.BorderSizePixel = 0
    TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton_3_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextButton_3_Toggle.Size = UDim2.new(0, 17, 0, 17)
    TextButton_3_Toggle.Font = Enum.Font.SourceSans
    TextButton_3_Toggle.Text = " "
    TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_3_Toggle.TextSize = 12.000
    TextButton_3_Toggle.AutoButtonColor = false 

    local ImageLabel_Toggle = Instance.new("ImageButton")


    ImageLabel_Toggle.Parent = TextButton_2_Toggle
    ImageLabel_Toggle.BackgroundTransparency = 1
    ImageLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLabel_Toggle.Size = UDim2.new(0, 0, 0, 0)
    ImageLabel_Toggle.Image = "rbxassetid://9649923603"
    ImageLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageLabel_Toggle.Position = UDim2.new(0.47, 0, 0.5, 0)


    local FrameToggle = Instance.new("UICorner")
            
    FrameToggle.CornerRadius = UDim.new(0, 20)
    FrameToggle.Name = ""
    FrameToggle.Parent = emsTextButton

    local FrameToggle1 = Instance.new("UICorner")
            
    FrameToggle1.CornerRadius = UDim.new(0, 20)
    FrameToggle1.Name = ""
    FrameToggle1.Parent = TextButton_2_Toggle

    local FrameToggle2 = Instance.new("UICorner")
            
    FrameToggle2.CornerRadius = UDim.new(0, 20)
    FrameToggle2.Name = ""
    FrameToggle2.Parent = ImageLabel_Toggle

    local FrameToggle3 = Instance.new("UICorner")
            
    FrameToggle3.CornerRadius = UDim.new(0, 20)
    FrameToggle3.Name = ""
    FrameToggle3.Parent = TextButton_3_Toggle

    TextButton_3_Toggle.MouseButton1Click:Connect(function (  )
        if togdoc.boolen ==false then
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
        else
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
     --       ImageLabel_Toggle.Visible = false
        end
        togdoc.boolen = not togdoc.boolen
        pcall(callback,togdoc.boolen)
    end)

    ImageLabel_Toggle.MouseButton1Click:Connect(function (  )
        if togdoc.boolen ==false then
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
        else
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
     --       ImageLabel_Toggle.Visible = false
        end
        togdoc.boolen = not togdoc.boolen
        pcall(callback,togdoc.boolen)
    end)

    TextButton_2_Toggle.MouseButton1Click:Connect(function (  )
        if togdoc.boolen ==false then
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
        else
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
     --       ImageLabel_Toggle.Visible = false
        end
        togdoc.boolen = not togdoc.boolen
        pcall(callback,togdoc.boolen)
    end)


    ToggleButton.MouseButton1Click:Connect(function (  )
        if togdoc.boolen ==false then
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
        else
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
     --       ImageLabel_Toggle.Visible = false
        end
        togdoc.boolen = not togdoc.boolen
        pcall(callback,togdoc.boolen)
    end)

        if de == true then
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 27, 0, 27), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            ImageLabel_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            togdoc.boolen = not togdoc.boolen
            pcall(callback,togdoc.boolen)
        end
    end

function ems:DropDown(text,text2,list,callback)


    local checkdrop = {checkscol = false ; }
    local DropFrame = Instance.new("Frame")
    local dropfuc = {}

    DropFrame.Name = "DropFrame"
    DropFrame.Parent = ScolPage2
    DropFrame.BackgroundColor3 = Color3.fromRGB(29,29,29)
    DropFrame.BorderSizePixel = 0
    DropFrame.BackgroundTransparency = 1
    DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropFrame.Size = UDim2.new(0, 230, 0, 45)
    DropFrame.BackgroundTransparency = 1
    DropFrame.ClipsDescendants = true 

    local TextLabelDrop = Instance.new("TextLabel") 

    TextLabelDrop.Parent = DropFrame
    TextLabelDrop.Name = "TextLabelDrop"
    TextLabelDrop.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    TextLabelDrop.BackgroundTransparency = 1
    TextLabelDrop.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabelDrop.Position = UDim2.new(0.2, 0, 0.2, 0)
    TextLabelDrop.Size = UDim2.new(0, 230, 0, 15)
    TextLabelDrop.Font = Enum.Font.GothamBold
    TextLabelDrop.Text = text
    TextLabelDrop.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabelDrop.TextSize = 10.000
    TextLabelDrop.BorderSizePixel = 0
    TextLabelDrop.ClipsDescendants = true 

    local FrameDrop = Instance.new("Frame")
    
    FrameDrop.Name = "FrameDrop"
    FrameDrop.Parent = DropFrame
    FrameDrop.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    FrameDrop.BorderSizePixel = 0
    FrameDrop.BackgroundTransparency = 1
    FrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)
    FrameDrop.Position = UDim2.new(0.5, 0, 0.75, 0)
    FrameDrop.Size = UDim2.new(0, 230, 0, 27)
    FrameDrop.BackgroundTransparency = 0
    FrameDrop.ClipsDescendants = true 

    local DropButton = Instance.new("TextButton")

    DropButton.Parent = FrameDrop
    DropButton.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    DropButton.BackgroundTransparency = 1
    DropButton.AnchorPoint = Vector2.new(0.5, 0.5)
    DropButton.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropButton.Size = UDim2.new(0, 230, 0, 24)
    DropButton.Font = Enum.Font.GothamBold
    DropButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    DropButton.TextSize = 11.000
    DropButton.TextWrapped = true
    DropButton.Text = ""
    DropButton.BorderSizePixel = 0 
    DropButton.AutoButtonColor = false 
    DropButton.ClipsDescendants = true 

    local TextLabelDrop2 = Instance.new("TextLabel") 

    TextLabelDrop2.Parent = DropButton
    TextLabelDrop2.Name = "TextLabelDrop"
    TextLabelDrop2.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    TextLabelDrop2.BackgroundTransparency = 1
    TextLabelDrop2.AnchorPoint = Vector2.new(0.5, 0.5)
    TextLabelDrop2.Position = UDim2.new(0.5, 0, 0.5, 0)
    TextLabelDrop2.Size = UDim2.new(0, 230, 0, 22)
    TextLabelDrop2.Font = Enum.Font.GothamBold
    TextLabelDrop2.Text = text2.." : "
    TextLabelDrop2.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabelDrop2.TextSize = 10.000
    TextLabelDrop2.BorderSizePixel = 0
    TextLabelDrop2.ClipsDescendants = true 

    local DropConer = Instance.new("UICorner")
            
    DropConer.CornerRadius = UDim.new(0, 4)
    DropConer.Name = ""
    DropConer.Parent = DropButton

    local DropConer1 = Instance.new("UICorner")
            
    DropConer1.CornerRadius = UDim.new(0, 4)
    DropConer1.Name = ""
    DropConer1.Parent = FrameDrop
    

    
    local TextButton_Dropdown = Instance.new("TextButton")

    TextButton_Dropdown.Parent = DropButton
    TextButton_Dropdown.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
    TextButton_Dropdown.BorderSizePixel = 0
    TextButton_Dropdown.Size = UDim2.new(0, 22, 0, 24)
    TextButton_Dropdown.Font = Enum.Font.SourceSans
    TextButton_Dropdown.Text = "  "
    TextButton_Dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextButton_Dropdown.TextSize = 14.000
    TextButton_Dropdown.AutoButtonColor = false 
    TextButton_Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
    TextButton_Dropdown.Position = UDim2.new(0.91, 0, 0.5, 0)
    
    local DropConer2 = Instance.new("UICorner")
            
    DropConer2.CornerRadius = UDim.new(0, 4)
    DropConer2.Name = ""
    DropConer2.Parent = TextButton_Dropdown

    local DropArbt_listimage = Instance.new("ImageButton")
                            
    DropArbt_listimage.Parent = TextButton_Dropdown
    DropArbt_listimage.BackgroundTransparency = 1
    DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)
    DropArbt_listimage.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropArbt_listimage.BorderSizePixel = 0
    DropArbt_listimage.Size = UDim2.new(0, 20, 0, 20)
    DropArbt_listimage.Image = "http://www.roblox.com/asset/?id=6031091004"

    local ListFrame = Instance.new("Frame")
    
    ListFrame.Name = "ListFrame"
    ListFrame.Parent = ScolPage2
    ListFrame.BackgroundColor3 = Color3.fromRGB(0, 0 ,0)
    ListFrame.BorderSizePixel = 0
    ListFrame.BackgroundTransparency = 1
    ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ListFrame.Size = UDim2.new(0, 230, 0, 0)
    ListFrame.BorderSizePixel = 0 
    ListFrame.ClipsDescendants = true 
    ListFrame.Visible = false 

    local ScolPage_list = Instance.new("ScrollingFrame")


    local UIListLayout_MainPage_list = Instance.new("UIListLayout")
    local UIPadding_MainPage_list = Instance.new("UIPadding")


    ScolPage_list.Name = "ScolPage_list"
    ScolPage_list.Parent = ListFrame
    ScolPage_list.Active = true
    ScolPage_list.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    ScolPage_list.BorderSizePixel = 0
    ScolPage_list.Size = UDim2.new(0, 230, 0, 0)
    ScolPage_list.ScrollBarThickness = 3
    ScolPage_list.AnchorPoint = Vector2.new(0.5, 0.5)
    ScolPage_list.Position = UDim2.new(0.5, 0, 0.5, 0)
    ScolPage_list.ClipsDescendants = true 
    ScolPage_list.ScrollBarImageColor3 =  Color3.fromRGB(235, 235, 235)
    ScolPage_list.ScrollBarImageColor3 =  Color3.fromRGB(235, 235, 235)

    UIListLayout_MainPage_list.Parent = ScolPage_list
    UIListLayout_MainPage_list.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_MainPage_list.Padding = UDim.new(0, 5)

    UIPadding_MainPage_list.Parent = ScolPage_list
    UIPadding_MainPage_list.PaddingLeft = UDim.new(0, 0)
    UIPadding_MainPage_list.PaddingTop = UDim.new(0, 0)


    local DropConer4 = Instance.new("UICorner")
            
    DropConer4.CornerRadius = UDim.new(0, 4)
    DropConer4.Name = ""
    DropConer4.Parent = ListFrame

    local framesize =  50
    local count = 0 
    for i , v in pairs(list) do 
        count = count + 1 
        
        if count == 1 then
            framesize = 50 
        elseif count == 2 then
            framesize = 70 
        elseif count >= 3 then
            framesize = 150 
        end

    local listDropButton = Instance.new("TextButton")

    listDropButton.Parent = ScolPage_list
    listDropButton.BackgroundColor3 = Color3.fromRGB(15, 15 ,15)
    listDropButton.BorderSizePixel = 0
    listDropButton.Size = UDim2.new(0, 230, 0, 24)
    listDropButton.Font = Enum.Font.GothamSemibold
    listDropButton.Text = tostring(v)
    listDropButton.TextColor3 = Color3.fromRGB(235,65,65)
    listDropButton.TextSize = 11.000
    listDropButton.AutoButtonColor = false 
    listDropButton.AnchorPoint = Vector2.new(0.5, 0.5)
    listDropButton.Position = UDim2.new(0.5, 0, 0.5, 0)

    listDropButton.MouseButton1Click:Connect(function()
        TweenService:Create(
            ListFrame,
            TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 230, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        TweenService:Create(
            ScolPage_list,
            TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 230, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        repeat
            wait()
        until ScolPage_list.Size ==  UDim2.new(0, 230, 0, 0)
        ListFrame.Visible = false
        TextLabelDrop2.Text = text2.." : "..tostring(v)  
        callback(v)
    end
)

    listDropButton.MouseEnter:Connect(function ()
        TweenService:Create(
            listDropButton,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(25, 25, 25)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
    end)
    listDropButton.MouseLeave:Connect(function ()
        TweenService:Create(
            listDropButton,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(15, 15, 15)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
    end)

    ScolPage_list.CanvasSize = UDim2.new(0,0,0,UIListLayout_MainPage_list.AbsoluteContentSize.Y + 10)  



end

    DropArbt_listimage.MouseButton1Click:Connect(function()     
        if checkdrop.checkscol == false then 
            ListFrame.Visible = true 
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                {Rotation = -180}
            ):Play()
            TweenService:Create(
                ListFrame,
                TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size =  UDim2.new(0, 230, 0, framesize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                ScolPage_list,
                TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size =  UDim2.new(0, 230, 0, framesize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()

    else
        TweenService:Create(
            DropArbt_listimage,
            TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
            {Rotation = 0}
        ):Play()
        TweenService:Create(
            ListFrame,
            TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 230, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        TweenService:Create(
            ScolPage_list,
            TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 230, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        repeat
            wait()
        until ScolPage_list.Size ==  UDim2.new(0, 230, 0, 0)
        ListFrame.Visible = false
        end
        checkdrop.checkscol  = not    checkdrop.checkscol  
        pcall(callback,   checkdrop.checkscol )
    end)


    DropButton.MouseButton1Click:Connect(function()     
        if checkdrop.checkscol == false then 
            ListFrame.Visible = true 
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                {Rotation = -180}
            ):Play()
            TweenService:Create(
                ListFrame,
                TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size =  UDim2.new(0, 230, 0, framesize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                ScolPage_list,
                TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {Size =  UDim2.new(0, 230, 0, framesize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()

    else
        TweenService:Create(
            DropArbt_listimage,
            TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
            {Rotation = 0}
        ):Play()
        TweenService:Create(
            ListFrame,
            TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 230, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        TweenService:Create(
            ScolPage_list,
            TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 230, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        repeat
            wait()
        until ScolPage_list.Size ==  UDim2.new(0, 230, 0, 0)
        ListFrame.Visible = false
        end
        checkdrop.checkscol  = not    checkdrop.checkscol  
        pcall(callback,   checkdrop.checkscol )
    end)

    function dropfuc:Add(text2)
       
    local listDropButton = Instance.new("TextButton")

    listDropButton.Parent = ScolPage_list
    listDropButton.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
    listDropButton.BorderSizePixel = 0
    listDropButton.Size = UDim2.new(0, 230, 0, 24)
    listDropButton.Font = Enum.Font.GothamBold
    listDropButton.Text = tostring(text2)
    listDropButton.TextColor3 = Color3.fromRGB(102, 204, 102)
    listDropButton.TextSize = 11.000
    listDropButton.AutoButtonColor = false 
    listDropButton.AnchorPoint = Vector2.new(0.5, 0.5)
    listDropButton.Position = UDim2.new(0.5, 0, 0.5, 0)



    listDropButton.MouseButton1Click:Connect(function()
        TweenService:Create(
            ListFrame,
            TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 140, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        TweenService:Create(
            ScolPage_list,
            TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
            {Size =  UDim2.new(0, 140, 0, 0)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        repeat
            wait()
        until ScolPage_list.Size ==  UDim2.new(0, 140, 0, 0)
        ListFrame.Visible = false
        TextLabelDrop2.Text = text.." : "..tostring(text2)  
        callback(text2)
    end
)

    listDropButton.MouseEnter:Connect(function ()
        TweenService:Create(
            listDropButton,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(25, 25, 25)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
    end)
    listDropButton.MouseLeave:Connect(function ()
        TweenService:Create(
            listDropButton,
            TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            {BackgroundColor3 = Color3.fromRGB(15, 15, 15)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
    end)

    ScolPage_list.CanvasSize = UDim2.new(0,0,0,UIListLayout_MainPage_list.AbsoluteContentSize.Y + 10)  


    end

    function dropfuc:Clear()
    for i, v in next, ScolPage_list:GetChildren() do
        if v:IsA("TextButton")  then 
        v:Destroy()
        
        end
        ScolPage_list.CanvasSize = UDim2.new(0,0,0,UIListLayout_MainPage_list.AbsoluteContentSize.Y + 10)  
    end   

end  
    return  dropfuc
end

function ems:Slder(text,min,max,de,callback)
    local SliderFunc = {}
    local SliderFrame = Instance.new("Frame")


    SliderFrame.Name = "SliderFrame"
    SliderFrame.Parent = ScolPage2
    SliderFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
    SliderFrame.BorderSizePixel = 0
    SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    SliderFrame.Size = UDim2.new(0, 230, 0, 50)
    SliderFrame.BackgroundTransparency = 1
    SliderFrame.ClipsDescendants = true 

    local fakeclick = Instance.new("TextButton",SliderFrame)

    fakeclick.BackgroundColor3 = Color3.fromRGB(15,15,15)
    fakeclick.BorderSizePixel = 0
    fakeclick.Size = UDim2.new(1, 0, 1, 0)
    fakeclick.Font = Enum.Font.GothamSemibold
    fakeclick.Text = ""
    fakeclick.TextColor3 = Color3.fromRGB(255, 255, 255)
    fakeclick.Transparency = 1
    fakeclick.TextSize = 10.000
    fakeclick.AutoButtonColor = false 
    fakeclick.AnchorPoint = Vector2.new(0.5, 0.5)
    fakeclick.Position = UDim2.new(0.5, 0, 0.3, 0)

    local Conner_SliderFrame1 = Instance.new("UICorner")
       
    Conner_SliderFrame1.CornerRadius = UDim.new(0, 5)
    Conner_SliderFrame1.Name = ""
    Conner_SliderFrame1.Parent = SliderFrame

    local SlisFrameStroke = Instance.new("UIStroke",SliderFrame)
                    
    SlisFrameStroke.Thickness = 1
    SlisFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
    SlisFrameStroke.Color = Color3.fromRGB(102, 204, 102)
    SlisFrameStroke.Transparency = 0
    local TalabelSlider = Instance.new("TextLabel") 

    TalabelSlider.Parent = SliderFrame
    TalabelSlider.Name = "TalabelSlider"
    TalabelSlider.BackgroundColor3 = Color3.fromRGB(102, 204, 102)
    TalabelSlider.BackgroundTransparency = 1
    TalabelSlider.AnchorPoint = Vector2.new(0.5, 0.5)
    TalabelSlider.Position = UDim2.new(0.5, 0, 0.3, 0)
    TalabelSlider.Size = UDim2.new(0, 200, 0, 20)
    TalabelSlider.Font = Enum.Font.GothamSemibold
    TalabelSlider.Text = text
    TalabelSlider.TextColor3 = Color3.fromRGB(255, 255, 255)
    TalabelSlider.TextSize = 11.000
    TalabelSlider.BorderSizePixel = 0
    TalabelSlider.ClipsDescendants = true 
    TalabelSlider.TextXAlignment = Enum.TextXAlignment.Left

       
    local ValueFrame = Instance.new("Frame")

    ValueFrame.Name = "ValueFrame"
    ValueFrame.Parent = SliderFrame
    ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    ValueFrame.BorderSizePixel = 0
    ValueFrame.BackgroundTransparency = 0
    ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    ValueFrame.Position = UDim2.new(0.5, 0, 0.7, 0)
    ValueFrame.Size = UDim2.new(0, 200, 0, 20)
    ValueFrame.BackgroundTransparency = 1
    ValueFrame.ClipsDescendants = true 

    local SecValue = Instance.new("Frame")

    SecValue.Name = "SecValue"
    SecValue.Parent = ValueFrame
    SecValue.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
    SecValue.BorderSizePixel = 0
    SecValue.BackgroundTransparency = 0
    SecValue.AnchorPoint = Vector2.new(0.5, 0.5)
    SecValue.Position = UDim2.new(0.5, 0, 0.5, 0)
    SecValue.Size = UDim2.new(0, 190, 0, 4)
    SecValue.BackgroundTransparency = 0
    SecValue.ClipsDescendants = false 

    
    local MainValue = Instance.new("Frame")

    MainValue.Name = "MainValue"
    MainValue.Parent = SecValue
    MainValue.BackgroundColor3 = Color3.fromRGB(102, 204, 102)
    MainValue.BorderSizePixel = 0
    MainValue.BackgroundTransparency = 0
    -- MainValue.AnchorPoint = Vector2.new(0.5, 0.5)
    MainValue.Position = UDim2.new(0., 0, 0., 0)
    MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 4)
    MainValue.BackgroundTransparency = 0
    MainValue.ClipsDescendants = false 

     
    local ConneValue = Instance.new("Frame")

    ConneValue.Name = "ConneValue"
    ConneValue.Parent = SecValue
    ConneValue.BackgroundColor3 = Color3.fromRGB(255,255, 255)
    ConneValue.Size = UDim2.new(0, 10, 0, 10)
    ConneValue.BackgroundTransparency = 0
    ConneValue.BorderSizePixel = 0 
    ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
    ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.5,0.5, 0) 
    ConneValue.ClipsDescendants = false 

    local Conner_Conne = Instance.new("UICorner")
                    
    Conner_Conne.CornerRadius = UDim.new(0, 10)
    Conner_Conne.Name = ""
    Conner_Conne.Parent = ConneValue

            
    local ScolDown_Uiconner2 = Instance.new("UICorner")
                
    ScolDown_Uiconner2.CornerRadius = UDim.new(0, 8)
    ScolDown_Uiconner2.Name = ""
    ScolDown_Uiconner2.Parent = MainValue

    local ScolDown_Uiconner3 = Instance.new("UICorner")
        
    ScolDown_Uiconner3.CornerRadius = UDim.new(0, 8)
    ScolDown_Uiconner3.Name = ""
    ScolDown_Uiconner3.Parent = SecValue


    
    local ShowValueFarm = Instance.new("Frame")

    ShowValueFarm.Name = "ShowValueFarm"
    ShowValueFarm.Parent = SliderFrame
    ShowValueFarm.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    ShowValueFarm.Size = UDim2.new(0, 50, 0, 14)
    ShowValueFarm.BackgroundTransparency = 1
    ShowValueFarm.BorderSizePixel = 0 
    ShowValueFarm.AnchorPoint = Vector2.new(0.5, 0.5)
    ShowValueFarm.Position = UDim2.new(0.80, 0, 0.28, 0)
    ShowValueFarm.ClipsDescendants = false

    local MheeFrameStroke1 = Instance.new("UIStroke",ShowValueFarm)
                    
    MheeFrameStroke1.Thickness = 1
    MheeFrameStroke1.LineJoinMode = Enum.LineJoinMode.Round
    MheeFrameStroke1.Color = Color3.fromRGB(102, 204, 102)
    MheeFrameStroke1.Transparency = 0

    local CustomValue = Instance.new("TextBox")

    CustomValue.Parent = ShowValueFarm
    CustomValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CustomValue.BorderSizePixel = 0
    CustomValue.ClipsDescendants = true
    CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
    CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
    CustomValue.Size = UDim2.new(0, 145, 0, 26)
    CustomValue.Font = Enum.Font.GothamSemibold
    CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
    CustomValue.PlaceholderText =  ""
    CustomValue.Text =  tostring(de and math.floor((de / max) * (max - min) + min) or 0)
    CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
    CustomValue.TextSize = 9.000
    CustomValue.BackgroundTransparency = 1

    local ScolDown_Uiconner3222 = Instance.new("UICorner")
        
    ScolDown_Uiconner3222.CornerRadius = UDim.new(0, 4)
    ScolDown_Uiconner3222.Name = ""
    ScolDown_Uiconner3222.Parent = ShowValueFarm
    local function move(input)
        local pos =
            UDim2.new(
                math.clamp((input.Position.X - SecValue.AbsolutePosition.X) / SecValue.AbsoluteSize.X, 0, 1),
                0,
                0.5,
                0
            )
        local pos1 =
            UDim2.new(
                math.clamp((input.Position.X - SecValue.AbsolutePosition.X) / SecValue.AbsoluteSize.X, 0, 1),
                0,
                0,
                5
            )
        
            MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

            ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
            local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
            CustomValue.Text = tostring(value)
            callback(value)

        end
        local dragging = false 
        ConneValue.InputBegan:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = true

                end
            end
        )
        ConneValue.InputEnded:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = false
                 
                end
            end
        )
            
        
        ValueFrame.InputBegan:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = true

                end
            end
        )
        ValueFrame.InputEnded:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    dragging = false
                 
                end
            end
        )


        game:GetService("UserInputService").InputChanged:Connect(
            function(input)
                if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                    move(input)
                end
            end
            )
                   CustomValue.FocusLost:Connect(function()    
                        MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
                        CustomValue.Text = tostring(CustomValue.Text and math.floor((CustomValue.Text / max) * (max - min) + min) )
                        pcall(callback,tonumber( CustomValue.Text))
                        -- if  CustomValue.Text == "" then

                        --     MainValue:TweenSize(UDim2.new((CustomValue.PlaceholderText  or 0) / max, 0, 0, 2), "Out", "Sine", 0.2, true)
                        --     ConneValue:TweenPosition(UDim2.new((CustomValue.PlaceholderText  or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)
                        --     CustomValue.Text = tostring(CustomValue.PlaceholderText  and math.floor((    CustomValue.PlaceholderText  / max) * (max - min) + min) or 0)
                        --     pcall(callback,CustomValue.PlaceholderText ) 
                        -- end
                    end)

				function SliderFunc:change(tochange)
                    MainValue:TweenSize(UDim2.new((tochange or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                    ConneValue:TweenPosition(UDim2.new((tochange or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
					CustomValue.Text = tostring(tochange and math.floor((CustomValue.Text / max) * (max - min) + min) )
					pcall(callback, tonumber(tochange))
				end
                return  SliderFunc
                
end

function ems:Ti(text)
    local tiframe = Instance.new("Frame")

    tiframe.Name = "tiframe"
    tiframe.Parent = ScolPage2
    tiframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    tiframe.BackgroundTransparency = 1
    tiframe.BorderSizePixel = 0
    tiframe.ClipsDescendants = true
    tiframe.AnchorPoint = Vector2.new(0.5, 0.5)
    tiframe.Position = UDim2.new(0.5, 0, 0.5, 0)
    tiframe.Size = UDim2.new(0, 230, 0, 20)

    local  lineframe = Instance.new("TextLabel")
                  
    lineframe.Parent = tiframe
    lineframe.BackgroundColor3 = Color3.fromRGB(102, 204, 102)
    lineframe.BackgroundTransparency = 0
    lineframe.AnchorPoint = Vector2.new(0.6, 0.5)
    lineframe.Position = UDim2.new(0., 0, 0.4, 0)
    lineframe.BorderSizePixel = 0
    lineframe.Size = UDim2.new(0, 40, 0, 1)
    lineframe.Font = Enum.Font.GothamSemibold
    lineframe.TextColor3 = Color3.fromRGB(255, 255, 255)
    lineframe.TextSize = 13.000
    lineframe.Text = ""

    local  lineframe2 = Instance.new("TextLabel")
                  
    lineframe2.Parent = tiframe--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    lineframe2.BackgroundColor3 = Color3.fromRGB(102, 204, 102)
    lineframe2.BackgroundTransparency = 0
    lineframe2.AnchorPoint = Vector2.new(0.5, 0.5)
    lineframe2.Position = UDim2.new(1, 0, 0.4, 0)
    lineframe2.BorderSizePixel = 0
    lineframe2.Size = UDim2.new(0, 40, 0, 1)
    lineframe2.Font = Enum.Font.GothamSemibold
    lineframe2.TextColor3 = Color3.fromRGB(255, 255, 255)
    lineframe2.TextSize = 11.000
    lineframe2.Text = ""

    local  lineframe3 = Instance.new("TextLabel")
                  
    lineframe3.Parent = tiframe
    lineframe3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    lineframe3.BackgroundTransparency = 1
    lineframe3.AnchorPoint = Vector2.new(0.5, 0.5)--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    lineframe3.Position = UDim2.new(0.5, 0, 0.5, 0)
    lineframe3.BorderSizePixel = 0
    lineframe3.Size = UDim2.new(0, 130, 0, 20)
    lineframe3.Font = Enum.Font.GothamBold
    lineframe3.Text = tostring(text)
    lineframe3.TextColor3 = Color3.fromRGB(102, 204, 102)
    lineframe3.TextSize = 12.000
end

function ems:Label(text)--by ดิส แจกทุกอย่างทีม--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2ี https://discord.gg/NvGY2vEkV2

    local labelfuc = {}
    local  Labelxd = Instance.new("TextLabel")
                  
    Labelxd.Parent = ScolPage2
    Labelxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Labelxd.BackgroundTransparency = 1
    Labelxd.AnchorPoint = Vector2.new(0.5, 0.5)
    Labelxd.Position = UDim2.new(0.5, 0, 0.8, 0)--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
    Labelxd.BorderSizePixel = 0
    Labelxd.Size = UDim2.new(0, 75, 0, 13)
    Labelxd.Font = Enum.Font.GothamSemibold
    Labelxd.Text = tostring(text)
    Labelxd.TextColor3 = Color3.fromRGB(255, 255, 255)
    Labelxd.TextSize = 12.000

function  labelfuc:Re(text2)
        Labelxd.Text = tostring(text2)
    end
    --by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2
return  labelfuc
end
return ems 
end
return page
end
return tap
end--by ดิส แจกทุกอย่างทีมี https://discord.gg/NvGY2vEkV2


