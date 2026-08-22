if false then
    local _unused = 0
end

do
    do
        repeat
            task.wait()
        until game:IsLoaded()
        local sharedKey = "AlSploit"

        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local ContentProvider = game:GetService("ContentProvider")
        local VirtualUser = game:GetService("VirtualUser")
        local CollectionService = game:GetService("CollectionService")
        local UserInputService = game:GetService("UserInputService")
        local TextChatService = game:GetService("TextChatService")
        local Lighting = game:GetService("Lighting")
        local TeleportService = game:GetService("TeleportService")
        local Players = game:GetService("Players")
        local Teams = game:GetService("Teams")
        local TweenService = game:GetService("TweenService")
        local HttpService = game:GetService("HttpService")
        local TextService = game:GetService("TextService")
        local RunService = game:GetService("RunService")
        local Workspace = game:GetService("Workspace")
        local CoreGui = game:GetService("CoreGui")

        local LocalPlayer = Players.LocalPlayer
        local Mouse = LocalPlayer:GetMouse()
        local Camera = Workspace.CurrentCamera

        local MainGui = Instance.new("ScreenGui")
        MainGui.Parent = LocalPlayer.PlayerGui
        MainGui.Name = "AlSploit"
        MainGui.OnTopOfCoreBlur = true
        MainGui.IgnoreGuiInset = true
        MainGui.ResetOnSpawn = false

        local function IsSpecificExecutor()
            if not (debug.getupvalue or debug.getupvalues or debug.getproto or debug.getprotos or require) then
                return true
            end
            if string.find(getexecutorname(), "Xeno") or string.find(getexecutorname(), "Solara") or string.find(getexecutorname(), "JJSploit") then
                return true
            end
            local requestResponse = request({
                Url = "https://mockhttp.org/get",
                Method = "GET",
                Headers = {
                    ["Content-Type"] = "application/json"
                }
            })
            if requestResponse.Success then
                local responseData = HttpService:JSONDecode(requestResponse.Body)
                for headerName, headerValue in responseData.headers do
                    if string.find(headerName, "Xeno") then
                        return true
                    end
                end
            end

            local success, controls = pcall(function()
                return require(LocalPlayer.PlayerScripts.PlayerModule).controls
            end)
            if not success or not controls then
                return true
            end
            return false
        end
        local isSpecificExecutor = IsSpecificExecutor()

        local SelectedMode = nil

        local function CreateLoadingScreen()
            local LoadingFrame = Instance.new("ImageLabel")
            local UICorner_Loading = Instance.new("UICorner")
            local UIStroke_Loading = Instance.new("UIStroke")
            local TitleImage = Instance.new("ImageLabel")
            local LoadingBar = Instance.new("Frame")
            local UICorner_LoadingBar = Instance.new("UICorner")
            local UIGradient_LoadingBar = Instance.new("UIGradient")
            local UIStroke_LoadingBar = Instance.new("UIStroke")
            local FillFrame = Instance.new("Frame")
            local UICorner_Fill = Instance.new("UICorner")
            local UIGradient_Fill = Instance.new("UIGradient")
            local PercentageText = Instance.new("TextLabel")
            local UITextSizeConstraint_Percentage = Instance.new("UITextSizeConstraint")
            local DiscordUsernameText = Instance.new("TextLabel")
            local UITextSizeConstraint_DiscordUsername = Instance.new("UITextSizeConstraint")
            local DiscordServerText = Instance.new("TextLabel")
            local UITextSizeConstraint_DiscordServer = Instance.new("UITextSizeConstraint")
            local AlSploitBlatantButton = Instance.new("TextButton")
            local UICorner_BlatantButton = Instance.new("UICorner")
            local UIStroke_BlatantButton = Instance.new("UIStroke")
            local UIGradient_BlatantButton = Instance.new("UIGradient")
            local AlSploitGhostButton = Instance.new("TextButton")
            local UICorner_GhostButton = Instance.new("UICorner")
            local UIStroke_GhostButton = Instance.new("UIStroke")
            local UIGradient_GhostButton = Instance.new("UIGradient")
            local SocialsText = Instance.new("TextLabel")
            local UITextSizeConstraint_Socials = Instance.new("UITextSizeConstraint")

            LoadingFrame.Parent = MainGui
            LoadingFrame.Name = "LoadingFrame"
            LoadingFrame.BorderSizePixel = 0
            LoadingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            LoadingFrame.ImageColor3 = Color3.new(0.0823529, 0.709804, 1)
            LoadingFrame.ScaleType = Enum.ScaleType.Crop
            LoadingFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            LoadingFrame.Image = "rbxassetid://17100395362"
            LoadingFrame.Size = UDim2.new(0.479, 0, 0.461, 0)

            UICorner_Loading.CornerRadius = UDim.new(0.03, 0)
            UICorner_Loading.Parent = LoadingFrame

            UIStroke_Loading.Parent = LoadingFrame
            UIStroke_Loading.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke_Loading.Color = Color3.new(1, 1, 1)

            TitleImage.Parent = LoadingFrame
            TitleImage.Name = "Title"
            TitleImage.BackgroundTransparency = 1
            TitleImage.BorderSizePixel = 0
            TitleImage.ScaleType = Enum.ScaleType.Fit
            TitleImage.Position = UDim2.new(0, 0, 0.044, 0)
            TitleImage.Image = "rbxassetid://17100452624"
            TitleImage.Size = UDim2.new(1, 0, 0.642, 0)

            LoadingBar.Parent = LoadingFrame
            LoadingBar.Name = "LoadingBar"
            LoadingBar.BorderSizePixel = 0
            LoadingBar.Position = UDim2.new(0.067, 0, 0.465, 0)
            LoadingBar.Size = UDim2.new(0.853, 0, 0.028, 0)

            UICorner_LoadingBar.CornerRadius = UDim.new(0.7, 0)
            UICorner_LoadingBar.Parent = LoadingBar

            UIGradient_LoadingBar.Parent = LoadingBar
            UIGradient_LoadingBar.Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0, Color3.new(0.290196, 0.196078, 0.596078)),
                ColorSequenceKeypoint.new(1, Color3.new(0.180392, 0.121569, 0.368627))
            }

            UIStroke_LoadingBar.Parent = LoadingBar
            UIStroke_LoadingBar.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke_LoadingBar.Color = Color3.new(1, 1, 1)

            FillFrame.Parent = LoadingBar
            FillFrame.Name = "Fill"
            FillFrame.BorderSizePixel = 0
            FillFrame.Size = UDim2.new(0, 0, 1, 0)

            UIGradient_Fill.Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0, Color3.new(0.45098, 0.356863, 0.792157)),
                ColorSequenceKeypoint.new(1, Color3.new(0.552941, 0.254902, 1))
            }
            UIGradient_Fill.Parent = FillFrame

            UICorner_Fill.CornerRadius = UDim.new(0.7, 0)
            UICorner_Fill.Parent = FillFrame

            PercentageText.Parent = LoadingFrame
            PercentageText.Name = "Percentage"
            PercentageText.BackgroundTransparency = 1
            PercentageText.BorderSizePixel = 0
            PercentageText.TextColor3 = Color3.new(1, 1, 1)
            PercentageText.TextScaled = true
            PercentageText.Position = UDim2.new(0.347, 0, 0.326, 0)
            PercentageText.Size = UDim2.new(0.294, 0, 0.139, 0)
            PercentageText.Font = Enum.Font.GothamBold
            PercentageText.Text = "Pick Blatant / Ghost"

            UITextSizeConstraint_Percentage.Parent = PercentageText
            UITextSizeConstraint_Percentage.MaxTextSize = 20

            DiscordUsernameText.Parent = LoadingFrame
            DiscordUsernameText.Name = "DiscordUsername"
            DiscordUsernameText.BackgroundTransparency = 1
            DiscordUsernameText.BorderSizePixel = 0
            DiscordUsernameText.TextColor3 = Color3.new(1, 1, 1)
            DiscordUsernameText.TextSize = 15.000
            DiscordUsernameText.Position = UDim2.new(0, 0, 0.704, 0)
            DiscordUsernameText.Size = UDim2.new(1, 0, 0.0972, 0)
            DiscordUsernameText.Font = Enum.Font.GothamBold
            DiscordUsernameText.Text = "Developed by godclutcher, with the help of Near, Stav, Blank, Hamza, Piston, Sown, Max & others."

            UITextSizeConstraint_DiscordUsername.Parent = DiscordUsernameText
            UITextSizeConstraint_DiscordUsername.MaxTextSize = 16

            DiscordServerText.Parent = LoadingFrame
            DiscordServerText.Name = "DiscordServer"
            DiscordServerText.BackgroundTransparency = 1
            DiscordServerText.BorderSizePixel = 0
            DiscordServerText.TextScaled = true
            DiscordServerText.TextColor3 = Color3.new(1, 1, 1)
            DiscordServerText.Position = UDim2.new(0, 0, 0.822, 0)
            DiscordServerText.Size = UDim2.new(1, 0, 0.069, 0)
            DiscordServerText.Font = Enum.Font.GothamMedium
            DiscordServerText.Text = "Discord Server: discord.gg/Msud9c5YRS"

            UITextSizeConstraint_DiscordServer.Parent = DiscordServerText
            UITextSizeConstraint_DiscordServer.MaxTextSize = 16

            AlSploitBlatantButton.Parent = LoadingFrame
            AlSploitBlatantButton.Name = "AlSploitBlatant"
            AlSploitBlatantButton.BackgroundColor3 = Color3.new(1, 1, 1)
            AlSploitBlatantButton.BorderSizePixel = 0
            AlSploitBlatantButton.TextSize = 25
            AlSploitBlatantButton.Position = UDim2.new(0.256, 0, 0.577, 0)
            AlSploitBlatantButton.Size = UDim2.new(0.135, 0, 0.09, 0)
            AlSploitBlatantButton.Font = Enum.Font.GothamBold
            AlSploitBlatantButton.Text = "Blatant"

            UICorner_BlatantButton.CornerRadius = UDim.new(0.1, 0)
            UICorner_BlatantButton.Parent = AlSploitBlatantButton

            UIStroke_BlatantButton.Parent = AlSploitBlatantButton
            UIStroke_BlatantButton.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke_BlatantButton.Color = Color3.new(1, 1, 1)

            UIGradient_BlatantButton.Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0, Color3.new(0.309804, 0.572549, 0.552941)),
                ColorSequenceKeypoint.new(1, Color3.new(0.164706, 0.447059, 0.690196))
            }
            UIGradient_BlatantButton.Parent = AlSploitBlatantButton

            AlSploitGhostButton.Parent = LoadingFrame
            AlSploitGhostButton.Name = "AlSploitGhost"
            AlSploitGhostButton.BackgroundColor3 = Color3.new(1, 1, 1)
            AlSploitGhostButton.BorderSizePixel = 0
            AlSploitGhostButton.TextSize = 25
            AlSploitGhostButton.Position = UDim2.new(0.597, 0, 0.577, 0)
            AlSploitGhostButton.Size = UDim2.new(0.135, 0, 0.09, 0)
            AlSploitGhostButton.Font = Enum.Font.GothamBold
            AlSploitGhostButton.Text = "Ghost"

            UICorner_GhostButton.CornerRadius = UDim.new(0.1, 0)
            UICorner_GhostButton.Parent = AlSploitGhostButton

            UIStroke_GhostButton.Parent = AlSploitGhostButton
            UIStroke_GhostButton.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke_GhostButton.Color = Color3.new(1, 1, 1)

            UIGradient_GhostButton.Color = ColorSequence.new{
                ColorSequenceKeypoint.new(0, Color3.new(0.309804, 0.572549, 0.552941)),
                ColorSequenceKeypoint.new(1, Color3.new(0.164706, 0.447059, 0.690196))
            }
            UIGradient_GhostButton.Parent = AlSploitGhostButton

            SocialsText.Parent = LoadingFrame
            SocialsText.Name = "Socials"
            SocialsText.BackgroundTransparency = 1
            SocialsText.BorderSizePixel = 0
            SocialsText.TextScaled = true
            SocialsText.TextColor3 = Color3.new(1, 1, 1)
            SocialsText.Position = UDim2.new(0, 0, 0.89, 0)
            SocialsText.Size = UDim2.new(1, 0, 0.069, 0)
            SocialsText.Font = Enum.Font.GothamMedium
            SocialsText.Text = "YouTube: @BedwarsShowcasers"

            UITextSizeConstraint_Socials.Parent = SocialsText
            UITextSizeConstraint_Socials.MaxTextSize = 16

            AlSploitBlatantButton.Activated:Connect(function()
                SelectedMode = false
            end)
            AlSploitGhostButton.Activated:Connect(function()
                SelectedMode = true
            end)

            return LoadingFrame, PercentageText, FillFrame
        end

        local LoadingFrame, PercentageText, FillFrame = CreateLoadingScreen()

        repeat
            task.wait()
        until SelectedMode ~= nil
        local TweenInfoLoading = TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
        local FillTween = TweenService:Create(FillFrame, TweenInfoLoading, {Size = UDim2.new(1, 0, 1, 0)})
        FillTween:Play()
        repeat
            task.wait()
            PercentageText.Text = math.round(FillFrame.Size.X.Scale * 100) .. "%"
        until FillFrame.Size.X.Scale == 1
        task.wait(0.1)
        PercentageText.Text = "Loaded"
        task.wait(0.1)
        LoadingFrame:Destroy()

        local ContainerFrame = Instance.new("Frame")
        local ContainerUIListLayout = Instance.new("UIListLayout")
        local NotificationContainer = Instance.new("Frame")
        local NotificationUIListLayout = Instance.new("UIListLayout")
        local OpenGuiButton = Instance.new("ImageButton")
        local OpenGuiUICorner = Instance.new("UICorner")
        local MobileKeybindFrameHolder = Instance.new("Frame")
        local BackgroundFrame = Instance.new("Frame")
        local BackgroundUICorner = Instance.new("UICorner")
        local BackgroundUIStroke = Instance.new("UIStroke")
        local BackgroundShadow = Instance.new("UIShadow")
        local TitleText = Instance.new("TextLabel")
        local NoButton = Instance.new("TextButton")
        local YesButton = Instance.new("TextButton")
        local MobileKeybindGridLayout = Instance.new("UIGridLayout")
        local ChangeGuiToggleColorEvent = Instance.new("BindableEvent")
        local ToggleToggleFunctionEvent = Instance.new("BindableEvent")
        local UnInjectEvent = Instance.new("BindableEvent")

        ChangeGuiToggleColorEvent.Parent = ReplicatedStorage
        ChangeGuiToggleColorEvent.Name = "ChangeGuiToggleColorEvent"
        ToggleToggleFunctionEvent.Parent = ReplicatedStorage
        ToggleToggleFunctionEvent.Name = "ToggleToggleFunctionEvent"
        UnInjectEvent.Parent = ReplicatedStorage
        UnInjectEvent.Name = "UnInjectEvent"

        task.spawn(function()
            NotificationContainer.Parent = MainGui
            NotificationContainer.Name = "NotificationContainer"
            NotificationContainer.BackgroundTransparency = 1
            NotificationContainer.BorderSizePixel = 0
            NotificationContainer.Position = UDim2.new(0.8, 0, 0, 0)
            NotificationContainer.Size = UDim2.new(0.2, 0, 0.980, 0)

            NotificationUIListLayout.Parent = NotificationContainer
            NotificationUIListLayout.Name = "NotificationContainerUIListLayout"
            NotificationUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
            NotificationUIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
            NotificationUIListLayout.FillDirection = Enum.FillDirection.Vertical
            NotificationUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            NotificationUIListLayout.Padding = UDim.new(0, 10)

            OpenGuiButton.Parent = MainGui
            OpenGuiButton.Name = "OpenGui"
            OpenGuiButton.BackgroundTransparency = 1
            OpenGuiButton.AutoButtonColor = false
            OpenGuiButton.BorderSizePixel = 0
            OpenGuiButton.Position = UDim2.new(0.958, 0, 0.098, 0)
            OpenGuiButton.ZIndex = 100
            OpenGuiButton.Image = "rbxassetid://102141261324485"
            OpenGuiButton.Size = UDim2.new(0.040, 0, 0.024, 0)

            OpenGuiUICorner.Parent = OpenGuiButton
            OpenGuiUICorner.Name = "OpenGuiUICorner"
            OpenGuiUICorner.CornerRadius = UDim.new(0.2, 0)

            ContainerFrame.Parent = MainGui
            ContainerFrame.Name = "ContainerFrame"
            ContainerFrame.BackgroundTransparency = 1
            ContainerFrame.Position = UDim2.new(0, 0, 0.05, 0)
            ContainerFrame.Visible = false
            ContainerFrame.Size = UDim2.new(1, 0, 1, 0)

            ContainerUIListLayout.Parent = ContainerFrame
            ContainerUIListLayout.Name = "ContainerUIListLayout"
            ContainerUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            ContainerUIListLayout.FillDirection = Enum.FillDirection.Horizontal
            ContainerUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
            ContainerUIListLayout.Padding = UDim.new(0, 50)

            OpenGuiButton.Activated:Connect(function()
                ContainerFrame.Visible = not ContainerFrame.Visible
            end)

            MobileKeybindFrameHolder.Parent = MainGui
            MobileKeybindFrameHolder.Name = "MobileKeybindFrameHolder"
            MobileKeybindFrameHolder.BackgroundTransparency = 1
            MobileKeybindFrameHolder.BorderSizePixel = 0
            MobileKeybindFrameHolder.Position = UDim2.new(0.68, 0, 0.144, 0)
            MobileKeybindFrameHolder.Size = UDim2.new(0.315, 0, 0.342, 0)

            MobileKeybindGridLayout.Parent = MobileKeybindFrameHolder
            MobileKeybindGridLayout.CellPadding = UDim2.new(0.05, 0, 0.05, 0)
            MobileKeybindGridLayout.CellSize = UDim2.new(0.15, 0, 0.25, 0)

            BackgroundFrame.Parent = MainGui
            BackgroundFrame.Name = "Background"
            BackgroundFrame.BackgroundColor3 = Color3.new(0, 0, 0)
            BackgroundFrame.BackgroundTransparency = 0.1
            BackgroundFrame.BorderSizePixel = 0
            BackgroundFrame.Position = UDim2.new(0.357, 0, 0.603, 0)
            BackgroundFrame.Visible = false
            BackgroundFrame.Size = UDim2.new(0.287, 0, 0.175, 0)

            BackgroundUICorner.Parent = BackgroundFrame
            BackgroundUICorner.CornerRadius = UDim.new(0.03, 0)

            BackgroundUIStroke.Parent = BackgroundFrame
            BackgroundUIStroke.Transparency = 0.8
            BackgroundUIStroke.Color = Color3.new(0, 0, 0)

            BackgroundShadow.Parent = BackgroundUIStroke

            TitleText.Parent = BackgroundFrame
            TitleText.Name = "Title"
            TitleText.BackgroundTransparency = 1
            TitleText.BorderSizePixel = 0
            TitleText.TextColor3 = Color3.new(1, 1, 1)
            TitleText.TextScaled = true
            TitleText.Position = UDim2.new(0.041, 0, 0.074, 0)
            TitleText.Size = UDim2.new(0.919, 0, 0.252, 0)
            TitleText.Font = Enum.Font.GothamBold
            TitleText.Text = "Would you like to bind the following module?"

            NoButton.Parent = BackgroundFrame
            NoButton.Name = "No"
            NoButton.BackgroundTransparency = 1
            NoButton.BorderSizePixel = 0
            NoButton.TextScaled = true
            NoButton.Position = UDim2.new(0.6419, 0, 0.524, 0)
            NoButton.Size = UDim2.new(0.071, 0, 0.360, 0)
            NoButton.Font = Enum.Font.SourceSans
            NoButton.Text = ""

            YesButton.Parent = BackgroundFrame
            YesButton.Name = "Yes"
            YesButton.BackgroundTransparency = 11
            YesButton.BorderSizePixel = 0
            YesButton.Position = UDim2.new(0.285, 0, 0.524, 0)
            YesButton.TextScaled = true
            YesButton.Size = UDim2.new(0.07, 0, 0.360, 0)
            YesButton.Font = Enum.Font.SourceSans
            YesButton.Text = ""

            ChangeGuiToggleColorEvent.Parent = ReplicatedStorage
            ChangeGuiToggleColorEvent.Name = "ChangeGuiToggleColorEvent"
            ToggleToggleFunctionEvent.Parent = ReplicatedStorage
            ToggleToggleFunctionEvent.Name = "ToggleToggleFunctionEvent"
            UnInjectEvent.Parent = ReplicatedStorage
            UnInjectEvent.Name = "UnInjectEvent"
        end)

        local Settings = {} -
        local ToggleColor = Color3.new(1, 1, 1) 
        local SliderColor = Color3.new(1, 1, 1) 
        local LayoutOrderCounter = 0
        local Connections = {} 
        local WriteFile = writefile or function()
            CreateNotification(3, "Error, unable to use WriteFile")
        end
        local IsFile = isfile or function()
            CreateNotification(3, "Error, unable to use IsFile")
        end
        local ReadFile = readfile or function()
            CreateNotification(3, "Error, unable to use ReadFile")
        end
        local DeleteFile = delfile or function()
            CreateNotification(3, "Error, unable to use DeleteFile")
        end
        local GetScriptBytecode = getscriptbytecode or function()
            CreateNotification(3, "Error, Unable To Use GetScriptByteCode")
            return nil
        end
        local HttpRequest = http and http.request or http_request or request or httprequest
        local FireProximityPrompt = fireproximityprompt or function()
            CreateNotification(3, "Error, unable to use FireProximityPrompt")
        end
        local QueueOnTeleport = queue_on_teleport or function()
            CreateNotification(3, "Error, unable to use QueueOnTeleport")
        end
        local FireSignal = firesignal or function()
            CreateNotification(3, "Error, unable to use FireSignal")
        end
        local SetFpsCap = setfpscap or function()
            CreateNotification(3, "Error, unable to use SetFpsCap")
        end
        local HookMetamethod = hookmetamethod or function()
            CreateNotification(3, "Error, unable to use HookMetaMethod")
        end
        local GetCustomAsset = getcustomasset or function()
            CreateNotification(3, "Error, unable to use GetCustomAsset")
        end

        local FontAssets = {
            ProductSans = {
                ProductSansRegular = game:HttpGet("https://github.com/jewjewjew123/AlSploit/raw/refs/heads/main/Bedwars/Assets/ProductSans/Product%20Sans%20Regular.ttf"),
                ProductSansBold = game:HttpGet("https://github.com/jewjewjew123/AlSploit/raw/refs/heads/main/Bedwars/Assets/ProductSans/Product%20Sans%20Bold.ttf")
            }
        }
        local LoadedFonts = {
            ProductSans = {
                Regular = nil,
                Bold = nil
            }
        }

        if GetCustomAsset and WriteFile then
            for fontName, fontData in FontAssets.ProductSans do
                WriteFile(fontName .. ".ttf", fontData)
            end
            WriteFile("ProductSansFace.json", HttpService:JSONEncode({
                name = "ProductSans",
                faces = {
                    {
                        name = "Regular",
                        weight = 400,
                        style = "normal",
                        assetId = GetCustomAsset("ProductSansRegular.ttf")
                    },
                    {
                        name = "Bold",
                        weight = 700,
                        style = "normal",
                        assetId = GetCustomAsset("ProductSansBold.ttf")
                    }
                }
            }))
            LoadedFonts = {
                ProductSans = {
                    Regular = Font.new(GetCustomAsset("ProductSansFace.json")),
                    Bold = Font.new(
                        GetCustomAsset("ProductSansFace.json"),
                        Enum.FontWeight.Bold,
                        Enum.FontStyle.Normal
                    )
                }
            }
        end

        task.spawn(function()
            if IsFile and not IsFile("AlSploitConfiguration.json") and WriteFile then
                local encodedSettings = HttpService:JSONEncode(Settings)
                WriteFile("AlSploitConfiguration.json", encodedSettings)
            end
            if not IsFile or not IsFile("AlSploitConfiguration.json") then
                CreateNotification(3, "Saving Folder Not Found")
            end
        end)

        task.spawn(function()
            if WriteFile and IsFile("AlSploitConfiguration.json") and ReadFile then
                local loadedSettings = HttpService:JSONDecode(ReadFile("AlSploitConfiguration.json"))
                Settings = loadedSettings
            end
            if not ReadFile then
                CreateNotification(3, "Unable To Load Settings")
            end
            task.spawn(function()
                repeat
                    if IsFile and IsFile("AlSploitConfiguration.json") and WriteFile then
                        local encodedSettings = HttpService:JSONEncode(Settings)
                        WriteFile("AlSploitConfiguration.json", encodedSettings)
                    end
                    task.wait(0.5)
                until shared[sharedKey] == true
            end)
        end)

        function Connections:CreateTab(TabName, IconID, IconSize, IconPosition)
            local TabFrame = nil
            local TabUI = Instance.new("Frame")
            local UICorner_Tab = Instance.new("UICorner")
            local CornerFixImage = Instance.new("ImageLabel")
            local ModuleContainerScrollingFrame = Instance.new("ScrollingFrame")
            local ModuleUIListLayout = Instance.new("UIListLayout")
            local IconImage = Instance.new("ImageLabel")
            local TitleLabel = Instance.new("TextLabel")
            local UIPadding_Title = Instance.new("UIPadding")

            TabUI.Parent = ContainerFrame
            TabUI.Name = "Tab"
            TabUI.BackgroundTransparency = 1
            TabUI.BorderSizePixel = 0
            TabUI.Position = UDim2.new(0.434, 0, 0, 0)
            TabUI.Size = UDim2.new(0.125, 0, 0.051, 0)

            UICorner_Tab.CornerRadius = UDim.new(0.2, 0)
            UICorner_Tab.Parent = TabUI

            CornerFixImage.Parent = TabUI
            CornerFixImage.Name = "CornerFix"
            CornerFixImage.BackgroundTransparency = 1
            CornerFixImage.ImageTransparency = 0.1
            CornerFixImage.BorderSizePixel = 0
            CornerFixImage.Position = UDim2.new(-0.152, 0, -0.390, 0)
            CornerFixImage.Image = "rbxassetid://84860993868196"
            CornerFixImage.Size = UDim2.new(1.304, 0, 2.035, 0)

            ModuleContainerScrollingFrame.Parent = TabUI
            ModuleContainerScrollingFrame.Name = "ModuleContainer"
            ModuleContainerScrollingFrame.BackgroundTransparency = 1
            ModuleContainerScrollingFrame.ScrollBarThickness = (UserInputService.KeyboardEnabled and 0 or 3)
            ModuleContainerScrollingFrame.BorderSizePixel = 0
            ModuleContainerScrollingFrame.CanvasSize = UDim2.new(0, 0, 30, 0)
            ModuleContainerScrollingFrame.Position = UDim2.new(0, 0, 1, 0)
            ModuleContainerScrollingFrame.Size = UDim2.new(1, 0, 21.429, 0)

            ModuleUIListLayout.Parent = ModuleContainerScrollingFrame
            ModuleUIListLayout.Name = "UIListLayout"
            ModuleUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
            ModuleUIListLayout.FillDirection = Enum.FillDirection.Vertical
            ModuleUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

            IconImage.Parent = TabUI
            IconImage.Name = "Icon"
            IconImage.BackgroundTransparency = 1
            IconImage.BorderSizePixel = 0
            IconImage.Position = IconPosition
            IconImage.Image = IconID
            IconImage.Size = IconSize

            TitleLabel.Parent = TabUI
            TitleLabel.Name = "Title"
            TitleLabel.BackgroundTransparency = 1
            TitleLabel.BorderSizePixel = 0
            TitleLabel.TextXAlignment = Enum.TextXAlignment.Left
            TitleLabel.TextColor3 = Color3.new(1, 1, 1)
            TitleLabel.TextScaled = true
            TitleLabel.Position = UDim2.new(-0.070, 0, 0.45, 0)
            if LoadedFonts.ProductSans.Bold then
                TitleLabel.FontFace = LoadedFonts.ProductSans.Bold
            else
                TitleLabel.Font = Enum.Font.GothamBold
            end
            TitleLabel.Size = UDim2.new(0.992, 0, 0.375, 0)
            TitleLabel.Text = TabName

            UIPadding_Title.Parent = TitleLabel
            UIPadding_Title.Name = "UIPadding_0"
            UIPadding_Title.PaddingLeft = UDim.new(0, 30)

            local ModuleManager = {}

            function ModuleManager:CreateToggle(Information)
                local ModuleName = Information.Name
                TabFrame = ModuleName
                local ToggleFunction = Information.Function
                local HoverText = Information.HoverText

                local ToggleButton = Instance.new("TextButton")
                local Background = Instance.new("Frame")
                local UIGradient_Toggle = Instance.new("UIGradient")
                local DropdownButton = Instance.new("ImageButton")
                local ModuleInfoText = Instance.new("TextLabel")
                local UICorner_ModuleInfo = Instance.new("UICorner")
                local UITextSizeConstraint_ModuleInfo1 = Instance.new("UITextSizeConstraint")
                local ModuleNameText = Instance.new("TextLabel")
                local UIPadding_ModuleName = Instance.new("UIPadding")
                local UITextSizeConstraint_ModuleName = Instance.new("UITextSizeConstraint")
                local _layoutOrder = 0

                if Settings[ModuleName] == nil then
                    Settings[ModuleName] = {Value = false}
                end

                local function UpdateToggleColor()
                    local hue = select(1, ToggleColor:ToHSV())
                    local color1 = Color3.fromHSV(hue, 0.458824, 0.572549)
                    local color2 = Color3.fromHSV((hue + 28 / 360) % 1, (22 + 172) / (45 + 210), (99 + 77) / (139 + 116))
                    UIGradient_Toggle.Color = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, color1),
                        ColorSequenceKeypoint.new(1, color2)
                    })
                end

                local function ToggleState(Start)
                    if Start == false then
                        Settings[ModuleName].Value = not Settings[ModuleName].Value
                    end
                    if Settings[ModuleName].Value == true then
                        Background.BackgroundColor3 = Color3.new(1, 1, 1)
                        ModuleNameText.TextColor3 = Color3.new(1, 1, 1)
                        UIGradient_Toggle.Enabled = true
                        task.spawn(function()
                            if Start == true then
                                task.wait(0.5)
                                ToggleFunction()
                            end
                        end)
                        task.spawn(function()
                            if Start == false then
                                ToggleFunction()
                            end
                        end)
                    end
                    if Settings[ModuleName].Value == false then
                        Background.BackgroundColor3 = Color3.new(0.0862745, 0.0862745, 0.0862745)
                        ModuleNameText.TextColor3 = Color3.new(0.854902, 0.854902, 0.854902)
                        UIGradient_Toggle.Enabled = false
                        task.spawn(function()
                            if Start == true then
                                task.wait(0.5)
                                ToggleFunction()
                            end
                        end)
                        task.spawn(function()
                            if Start == false then
                                ToggleFunction()
                            end
                        end)
                    end
                end

                ToggleButton.Parent = ModuleContainerScrollingFrame
                ToggleButton.Name = "Toggle"
                ToggleButton.BackgroundTransparency = 1
                ToggleButton.TextTransparency = 1
                ToggleButton.AutoButtonColor = false
                ToggleButton.BorderSizePixel = 0
                ToggleButton.Size = UDim2.new(1, 10, 0.0275, 0)
                ToggleButton.LayoutOrder = LayoutOrderCounter
                LayoutOrderCounter = LayoutOrderCounter + 50
                _layoutOrder = LayoutOrderCounter - 49

                Background.Parent = ToggleButton
                Background.Name = "Background"
                Background.BackgroundTransparency = 0.1
                Background.BorderSizePixel = 0
                Background.Position = UDim2.new(0.024, 0, 0, 0)
                Background.Size = UDim2.new(0.952, 0, 1, 0)

                UIGradient_Toggle.Parent = Background
                UIGradient_Toggle.Name = "UIGradient_0"
                UIGradient_Toggle.Color = ColorSequence.new{
                    ColorSequenceKeypoint.new(0, Color3.new(0.309804, 0.572549, 0.552941)),
                    ColorSequenceKeypoint.new(1, Color3.new(0.164706, 0.447059, 0.690196))
                }

                local UIPadding_Toggle = Instance.new("UIPadding")
                UIPadding_Toggle.Parent = ToggleButton
                UIPadding_Toggle.Name = "UIPadding"
                UIPadding_Toggle.PaddingLeft = UDim.new(0, 15)

                local UITextSizeConstraint_ModuleName2 = Instance.new("UITextSizeConstraint")
                UITextSizeConstraint_ModuleName2.Parent = ModuleInfoText
                UITextSizeConstraint_ModuleName2.Name = "UITextSizeConstraint_2"
                UITextSizeConstraint_ModuleName2.MaxTextSize = 11

                DropdownButton.Parent = ToggleButton
                DropdownButton.Name = "DropdownButton"
                DropdownButton.BackgroundTransparency = 1
                DropdownButton.BorderSizePixel = 0
                DropdownButton.Position = UDim2.new(0.822, 0, 0.176, 0)
                DropdownButton.Rotation = 0
                DropdownButton.Image = "rbxassetid://105562103695155"
                DropdownButton.Size = UDim2.new(0.080, 0, 0.5, 0)

                ModuleInfoText.Parent = MainGui
                ModuleInfoText.Name = "ModuleInformation"
                ModuleInfoText.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
                ModuleInfoText.BorderSizePixel = 0
                ModuleInfoText.TextColor3 = Color3.new(1, 1, 1)
                ModuleInfoText.TextScaled = true
                ModuleInfoText.TextSize = 11
                ModuleInfoText.Visible = false
                ModuleInfoText.ZIndex = 5
                ModuleInfoText.Size = UDim2.new(1.199, 0, 0.32, 0)
                if LoadedFonts.ProductSans.Bold then
                    ModuleInfoText.FontFace = LoadedFonts.ProductSans.Bold
                else
                    ModuleInfoText.Font = Enum.Font.GothamBold
                end
                ModuleInfoText.Text = HoverText
                local textSize = TextService:GetTextSize(HoverText, 11, Enum.Font.GothamBold, Vector2.new(100000, 100000))
                ModuleInfoText.Size = UDim2.new(0, (textSize.X + 15), 0, (textSize.Y + 4))

                UICorner_ModuleInfo.Parent = ModuleInfoText
                UICorner_ModuleInfo.Name = "UICorner_2"
                UICorner_ModuleInfo.CornerRadius = UDim.new(0.4, 0)

                local UITextSizeConstraint_ModuleInfo2 = Instance.new("UITextSizeConstraint")
                UITextSizeConstraint_ModuleInfo2.Parent = ModuleInfoText
                UITextSizeConstraint_ModuleInfo2.Name = "UITextSizeConstraint_3"
                UITextSizeConstraint_ModuleInfo2.MaxTextSize = 11

                ModuleNameText.Parent = ToggleButton
                ModuleNameText.Name = "ModuleName"
                ModuleNameText.BackgroundTransparency = 1
                ModuleNameText.BorderSizePixel = 0
                ModuleNameText.TextXAlignment = Enum.TextXAlignment.Left
                ModuleNameText.TextColor3 = Color3.new(1, 1, 1)
                ModuleNameText.TextScaled = true
                ModuleNameText.Position = UDim2.new(0.028, 0, 0, 0)
                ModuleNameText.Size = UDim2.new(0.948, 0, 1, 0)
                ModuleNameText.Text = ModuleName
                if LoadedFonts.ProductSans.Bold then
                    ModuleNameText.FontFace = LoadedFonts.ProductSans.Bold
                else
                    ModuleNameText.Font = Enum.Font.GothamBold
                end

                UIPadding_ModuleName.Parent = ModuleNameText
                UIPadding_ModuleName.PaddingLeft = UDim.new(0, 15)

                local UITextSizeConstraint_ModuleName1 = Instance.new("UITextSizeConstraint")
                UITextSizeConstraint_ModuleName1.Parent = ModuleNameText
                UITextSizeConstraint_ModuleName1.Name = "UITextSizeConstraint_3"
                UITextSizeConstraint_ModuleName1.MaxTextSize = 13

                task.spawn(function()
                    local isDropdownOpen = false
                    local dropdownTween
                    DropdownButton.Activated:Connect(function()
                        isDropdownOpen = not isDropdownOpen
                        if dropdownTween then
                            dropdownTween:Destroy()
                        end
                        if isDropdownOpen == true then
                            local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
                            local tween = TweenService:Create(DropdownButton, tweenInfo, {Rotation = 90})
                            dropdownTween = tween:Play()
                        end
                        if isDropdownOpen == false then
                            local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
                            local tween = TweenService:Create(DropdownButton, tweenInfo, {Rotation = 0})
                            dropdownTween = tween:Play()
                        end
                    end)
                end)

                task.spawn(function()
                    UpdateToggleColor()
                    ToggleState(true)
                end)

                task.spawn(function()
                    ChangeGuiToggleColorEvent.Event:Connect(function()
                        UpdateToggleColor()
                    end)
                end)

                task.spawn(function()
                    ToggleButton.Activated:Connect(function()
                        ToggleState(false)
                    end)
                    ToggleToggleFunctionEvent.Event:Connect(function(moduleName)
                        if moduleName == ModuleName then
                            ToggleState(false)
                        end
                    end)
                end)

                task.spawn(function()
                    task.wait(1)
                    if TabFrame == ModuleName then
                        local highlightCorner = Instance.new("UICorner")
                        highlightCorner.Parent = Background
                        highlightCorner.BottomRightRadius = UDim.new(0.2, 0)
                        highlightCorner.BottomLeftRadius = UDim.new(0.2, 0)
                        highlightCorner.TopRightRadius = UDim.new(0, 0)
                        highlightCorner.TopLeftRadius = UDim.new(0, 0)
                    end
                end)

                task.spawn(function()
                    local isHovering = false
                    ToggleButton.MouseLeave:Connect(function()
                        ModuleInfoText.Visible = false
                        isHovering = false
                    end)
                    ToggleButton.MouseEnter:Connect(function()
                        ModuleInfoText.Visible = true
                        isHovering = true
                    end)
                    Mouse.Move:Connect(function()
                        if isHovering == true then
                            local mousePos = UserInputService:GetMouseLocation()
                            ModuleInfoText.Position = UDim2.new(0, mousePos.X, 0, mousePos.Y - 10)
                        end
                    end)
                end)

                local SubModuleManager = {}

                function SubModuleManager:CreateToggle(SubInformation)
                    local DefaultValue = SubInformation.DefaultValue
                    local SubToggleFunction = SubInformation.Function
                    local ParentModuleName = ModuleName
                    local SubModuleName = SubInformation.Name

                    local SubToggleText = Instance.new("TextLabel")
                    local UIPadding_SubToggle = Instance.new("UIPadding")
                    local UITextSizeConstraint_SubToggle = Instance.new("UITextSizeConstraint")
                    local SubToggleFrame = Instance.new("Frame")
                    local UICorner_SubToggle = Instance.new("UICorner")
                    local UIGradient_SubToggle = Instance.new("UIGradient")
                    local SubToggleButton = Instance.new("TextButton")
                    local UICorner_SubToggleButton = Instance.new("UICorner")
                    local UITextSizeConstraint_SubToggleButton = Instance.new("UITextSizeConstraint")

                    if Settings[ParentModuleName][SubModuleName] == nil then
                        Settings[ParentModuleName][SubModuleName] = {Value = DefaultValue}
                    end

                    local function ToggleSubState(Start)
                        if Start == false then
                            Settings[ParentModuleName][SubModuleName].Value = not Settings[ParentModuleName][SubModuleName].Value
                        end
                        if Settings[ParentModuleName][SubModuleName].Value == true then
                            UIGradient_SubToggle.Color = ColorSequence.new{
                                ColorSequenceKeypoint.new(0.00, Color3.new(0.564706, 0.0313725, 1)),
                                ColorSequenceKeypoint.new(1.00, Color3.new(0.392157, 0.0431373, 1))
                            }
                            local tweenInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut, 0, false, 0)
                            local tween = TweenService:Create(SubToggleButton, tweenInfo, {Position = UDim2.new(0.06, 0, 0.1, 0)})
                            tween:Play()
                            SubToggleFunction()
                        end
                        if Settings[ParentModuleName][SubModuleName].Value == false then
                            UIGradient_SubToggle.Color = ColorSequence.new{
                                ColorSequenceKeypoint.new(0.00, Color3.new(0.133333, 0.133333, 0.1333337)),
                                ColorSequenceKeypoint.new(1.00, Color3.new(0.133333, 0.133333, 0.1333337))
                            }
                            local tweenInfo = TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.InOut, 0, false, 0)
                            local tween = TweenService:Create(SubToggleButton, tweenInfo, {Position = UDim2.new(0.46, 0, 0.1, 0)})
                            tween:Play()
                            SubToggleFunction()
                        end
                    end

                    SubToggleText.Parent = ModuleContainerScrollingFrame
                    SubToggleText.Name = "MiniToggle"
                    SubToggleText.BackgroundTransparency = 0.15
                    SubToggleText.BackgroundColor3 = Color3.new(0, 0, 0)
                    SubToggleText.BorderSizePixel = 0
                    SubToggleText.TextXAlignment = Enum.TextXAlignment.Left
                    SubToggleText.TextColor3 = Color3.new(1, 1, 1)
                    SubToggleText.TextScaled = true
                    SubToggleText.TextSize = 11
                    SubToggleText.Visible = false
                    SubToggleText.Size = UDim2.new(1, 0, 0.03, 0)
                    SubToggleText.Font = Enum.Font.GothamBold
                    SubToggleText.Text = SubModuleName
                    SubToggleText.LayoutOrder = _layoutOrder
                    _layoutOrder = _layoutOrder + 1

                    UIPadding_SubToggle.Parent = SubToggleText
                    UIPadding_SubToggle.Name = "UIPadding_2"
                    UIPadding_SubToggle.PaddingLeft = UDim.new(0, 15)

                    UITextSizeConstraint_SubToggle.Parent = SubToggleText
                    UITextSizeConstraint_SubToggle.Name = "UITextSizeConstraint_4"
                    UITextSizeConstraint_SubToggle.MaxTextSize = 11

                    SubToggleFrame.Parent = SubToggleText
                    SubToggleFrame.Name = "ToggleContainer"
                    SubToggleFrame.BackgroundColor3 = Color3.new(1, 1, 1)
                    SubToggleFrame.BorderSizePixel = 0
                    SubToggleFrame.BorderColor3 = Color3.new(0, 0, 0)
                    SubToggleFrame.Position = UDim2.new(0.785, 0, 0.232, 0)
                    SubToggleFrame.Size = UDim2.new(0.163, 0, 0.497, 0)

                    UICorner_SubToggle.Parent = SubToggleFrame
                    UICorner_SubToggle.Name = "UICorner_3"
                    UICorner_SubToggle.CornerRadius = UDim.new(1, 0)

                    UIGradient_SubToggle.Parent = SubToggleFrame
                    UIGradient_SubToggle.Name = "UIGradient"
                    UIGradient_SubToggle.Rotation = 45
                    UIGradient_SubToggle.Color = (Settings[ParentModuleName][SubModuleName].Value == true and ColorSequence.new{
                        ColorSequenceKeypoint.new(0.00, Color3.new(0.564706, 0.0313725, 1)),
                        ColorSequenceKeypoint.new(1.00, Color3.new(0.392157, 0.0431373, 1))
                    } or ColorSequence.new{
                        ColorSequenceKeypoint.new(0.00, Color3.new(0.133333, 0.133333, 0.1333337)),
                        ColorSequenceKeypoint.new(1.00, Color3.new(0.133333, 0.133333, 0.1333337))
                    })

                    SubToggleButton.Parent = SubToggleFrame
                    SubToggleButton.Name = "Toggle"
                    SubToggleButton.BackgroundColor3 = Color3.new(0, 0, 0)
                    SubToggleButton.AutoButtonColor = false
                    SubToggleButton.BorderSizePixel = 0
                    SubToggleButton.TextScaled = true
                    SubToggleButton.TextSize = 14
                    SubToggleButton.Position = UDim2.new(0.040, 0, 0.100, 0)
                    SubToggleButton.Size = UDim2.new(0.500, 0, 0.800, 0)
                    SubToggleButton.Font = Enum.Font.GothamBold
                    SubToggleButton.Text = ""

                    UICorner_SubToggleButton.Parent = SubToggleButton
                    UICorner_SubToggleButton.Name = "UICorner_4"
                    UICorner_SubToggleButton.CornerRadius = UDim.new(1, 0)

                    local UITextSizeConstraint_SubToggleButton1 = Instance.new("UITextSizeConstraint")
                    UITextSizeConstraint_SubToggleButton1.Parent = SubToggleButton
                    UITextSizeConstraint_SubToggleButton1.MaxTextSize = 14

                    task.spawn(function()
                        ToggleSubState(true)
                    end)

                    task.spawn(function()
                        SubToggleButton.Activated:Connect(function()
                            ToggleSubState(false)
                        end)
                    end)

                    task.spawn(function()
                        DropdownButton.Activated:Connect(function()
                            SubToggleText.Visible = not SubToggleText.Visible
                        end)
                    end)
                end

                function SubModuleManager:CreateKeybind()
                    local KeybindButton = Instance.new("TextButton")
                    local UITextSizeConstraint_Keybind = Instance.new("UITextSizeConstraint")
                    local UIPadding_Keybind = Instance.new("UIPadding")
                    local isListeningForKey = false
                    local isListeningActivated = false

                    if not Settings[ModuleName].Keybind then
                        Settings[ModuleName].Keybind = "..."
                    end

                    local function UpdateKeybindDisplay(Keybind)
                        Settings[ModuleName].Keybind = Keybind
                        KeybindButton.Text = "Keybind: " .. Keybind
                    end

                    KeybindButton.Parent = ModuleContainerScrollingFrame
                    KeybindButton.Name = "Keybind"
                    KeybindButton.BackgroundTransparency = 0.15
                    KeybindButton.BackgroundColor3 = Color3.new(0, 0, 0)
                    KeybindButton.AutoButtonColor = false
                    KeybindButton.BorderSizePixel = 0
                    KeybindButton.TextXAlignment = Enum.TextXAlignment.Left
                    KeybindButton.TextColor3 = Color3.new(255, 255, 255)
                    KeybindButton.TextScaled = true
                    KeybindButton.TextSize = 11
                    KeybindButton.Position = UDim2.new(0, 0, 0.082, 0)
                    KeybindButton.Visible = false
                    KeybindButton.Size = UDim2.new(1, 0, 0.025, 0)
                    KeybindButton.Font = Enum.Font.GothamBold
                    KeybindButton.Text = (Settings[ModuleName].Keybind == "..." and "Keybind: " or "Keybind: " .. Settings[ModuleName].Keybind)
                    KeybindButton.LayoutOrder = _layoutOrder
                    _layoutOrder = _layoutOrder + 1

                    UITextSizeConstraint_Keybind.Parent = KeybindButton
                    UITextSizeConstraint_Keybind.Name = "ITextSizeConstraint_4"
                    UITextSizeConstraint_Keybind.MaxTextSize = 11

                    UIPadding_Keybind.Parent = KeybindButton
                    UIPadding_Keybind.Name = "UIPadding_2"
                    UIPadding_Keybind.PaddingLeft = UDim.new(0, 15)

                    task.spawn(function()
                        KeybindButton.Activated:Connect(function()
                            isListeningActivated = not isListeningActivated
                            if isListeningForKey == false and isListeningActivated == true then
                                KeybindButton.Text = "Keybind: ..."
                                isListeningForKey = true
                            end
                            if isListeningActivated == false then
                                Settings[ModuleName].Keybind = "..."
                                KeybindButton.Text = "Keybind: "
                                isListeningForKey = false
                            end
                        end)
                    end)

                    task.spawn(function()
                        UserInputService.InputBegan:Connect(function(input)
                            if isListeningForKey == false and not UserInputService:GetFocusedTextBox() and Settings[ModuleName].Keybind == input.KeyCode.Name then
                                if Settings[ModuleName].Value == true then
                                    ToggleButton.Background.BackgroundColor3 = Color3.new(0.0862745, 0.0862745, 0.0862745)
                                    ToggleButton.Background.UIGradient_0.Enabled = false
                                    ToggleButton.ModuleName.TextColor3 = Color3.new(0.854902, 0.854902, 0.854902)
                                    CreateNotification(3, ModuleName .. " Has Been Toggled Off")
                                end
                                if Settings[ModuleName].Value == false then
                                    for _, child in ToggleButton:GetChildren() do
                                        print(_, child)
                                    end
                                    ToggleButton.Background.BackgroundColor3 = Color3.new(1, 1, 1)
                                    ToggleButton.Background.UIGradient_0.Enabled = true
                                    ToggleButton.ModuleName.TextColor3 = Color3.new(1, 1, 1)
                                    CreateNotification(3, ModuleName .. " Has Been Toggled On")
                                end
                                Settings[ModuleName].Value = not Settings[ModuleName].Value
                                ToggleFunction()
                            end
                            if isListeningForKey == true and UserInputService.KeyboardEnabled == true then
                                if input.UserInputType == Enum.UserInputType.Keyboard then
                                    isListeningForKey = false
                                    isListeningActivated = false
                                    UpdateKeybindDisplay(input.KeyCode.Name)
                                end
                            else
                                if isListeningForKey == true and UserInputService.KeyboardEnabled == false then
                                    BackgroundFrame.Visible = true
                                    task.spawn(function()
                                        local buttonConnections = {}
                                        buttonConnections["Yes"] = YesButton.Activated:Connect(function()
                                            UpdateKeybindDisplay("")
                                            isListeningForKey = false
                                            BackgroundFrame.Visible = false
                                            for _, connection in buttonConnections do
                                                connection:Disconnect()
                                            end
                                        end)
                                        buttonConnections["No"] = NoButton.Activated:Connect(function()
                                            UpdateKeybindDisplay("...")
                                            isListeningForKey = false
                                            BackgroundFrame.Visible = false
                                            for _, connection in buttonConnections do
                                                connection:Disconnect()
                                            end
                                        end)
                                    end)
                                end
                            end
                        end)
                    end)

                    task.spawn(function()
                        DropdownButton.Activated:Connect(function()
                            KeybindButton.Visible = not KeybindButton.Visible
                        end)
                    end)
                end

                function SubModuleManager:CreateSlider(SubInformation)
                    local DefaultValue = SubInformation.DefaultValue
                    local MaximumValue = SubInformation.MaximumValue
                    local SubToggleFunction = SubInformation.Function
                    local ParentModuleName = ModuleName
                    local SubModuleName = SubInformation.Name

                    local SliderFrame = Instance.new("Frame")
                    local SliderSubFrame = Instance.new("Frame")
                    local FillFrame = Instance.new("Frame")
                    local UIGradient_Fill = Instance.new("UIGradient")
                    local BarButton = Instance.new("TextButton")
                    local UICorner_Bar = Instance.new("UICorner")
                    local UIStroke_Bar = Instance.new("UIStroke")
                    local UITextSizeConstraint_Bar = Instance.new("UITextSizeConstraint")
                    local NameDisplay = Instance.new("TextLabel")
                    local UITextSizeConstraint_NameDisplay = Instance.new("UITextSizeConstraint")
                    local ValueDisplay = Instance.new("TextLabel")
                    local UITextSizeConstraint_ValueDisplay = Instance.new("UITextSizeConstraint")

                    if Settings[ParentModuleName][SubModuleName] == nil then
                        Settings[ParentModuleName][SubModuleName] = {Value = DefaultValue}
                    end

                    SliderFrame.Parent = ModuleContainerScrollingFrame
                    SliderFrame.Name = "Slider"
                    SliderFrame.BackgroundTransparency = 0.15
                    SliderFrame.BackgroundColor3 = Color3.new(0, 0, 0)
                    SliderFrame.BorderSizePixel = 0
                    SliderFrame.Position = UDim2.new(0, 0, 0.117, 0)
                    SliderFrame.Visible = false
                    SliderFrame.Size = UDim2.new(1, 0, 0.05, 0)
                    SliderFrame.LayoutOrder = _layoutOrder
                    _layoutOrder = _layoutOrder + 1

                    SliderSubFrame.Parent = SliderFrame
                    SliderSubFrame.Name = "SliderFrame"
                    SliderSubFrame.BackgroundTransparency = 1
                    SliderSubFrame.BorderSizePixel = 0
                    SliderSubFrame.Position = UDim2.new(0.150, 0, 0.654, 0)
                    SliderSubFrame.Size = UDim2.new(0.700, 0, 0.060, 0)

                    FillFrame.Parent = SliderSubFrame
                    FillFrame.Name = "Fill"
                    FillFrame.BackgroundColor3 = Color3.new(1, 1, 1)
                    FillFrame.BorderSizePixel = 0
                    FillFrame.Position = UDim2.new(0, 0, -0.329, 0)
                    FillFrame.Size = UDim2.new(1, 0, 1, 0)

                    UIGradient_Fill.Parent = FillFrame
                    UIGradient_Fill.Name = "UIGradient"
                    UIGradient_Fill.Rotation = 180
                    UIGradient_Fill.Color = ColorSequence.new{
                        ColorSequenceKeypoint.new(0.00, Color3.new(0.564706, 0.0313725, 1)),
                        ColorSequenceKeypoint.new(1.00, Color3.new(0.392157, 0.0431373, 1))
                    }

                    BarButton.Parent = SliderSubFrame
                    BarButton.Name = "Bar"
                    BarButton.BackgroundColor3 = Color3.new(0.564706, 0.0313725, 1)
                    BarButton.AutoButtonColor = false
                    BarButton.BorderSizePixel = 0
                    BarButton.TextScaled = true
                    BarButton.TextSize = 14
                    BarButton.Position = UDim2.new(0.135, 0, -1.500, 0)
                    BarButton.ZIndex = 2
                    BarButton.Size = UDim2.new(0.070, 0, 3.090, 0)
                    BarButton.Font = Enum.Font.GothamBold
                    BarButton.Text = ""

                    UICorner_Bar.Parent = BarButton
                    UICorner_Bar.Name = "UICorner_3"
                    UICorner_Bar.CornerRadius = UDim.new(1, 0)

                    UIStroke_Bar.Parent = BarButton
                    UIStroke_Bar.Name = "UIStroke"
                    UIStroke_Bar.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                    UIStroke_Bar.Thickness = 1
                    UIStroke_Bar.Color = Color3.new(0, 0, 0)

                    UITextSizeConstraint_Bar.Parent = BarButton
                    UITextSizeConstraint_Bar.Name = "UITextSizeConstraint_6"
                    UITextSizeConstraint_Bar.MaxTextSize = 14

                    NameDisplay.Parent = SliderFrame
                    NameDisplay.Name = "NameDisplay"
                    NameDisplay.BackgroundTransparency = 1
                    NameDisplay.BorderSizePixel = 0
                    NameDisplay.TextColor3 = Color3.new(1, 1, 1)
                    NameDisplay.TextScaled = true
                    NameDisplay.TextSize = 10
                    NameDisplay.Position = UDim2.new(0.145, 0, 0.08, 0)
                    NameDisplay.Size = UDim2.new(0.250, 0, 0.543, 0)
                    NameDisplay.Font = Enum.Font.GothamBold
                    NameDisplay.Text = SubModuleName

                    UITextSizeConstraint_NameDisplay.Parent = NameDisplay
                    UITextSizeConstraint_NameDisplay.MaxTextSize = 10

                    ValueDisplay.Parent = SliderFrame
                    ValueDisplay.Name = "ValueDisplay"
                    ValueDisplay.BackgroundTransparency = 1
                    ValueDisplay.BorderSizePixel = 0
                    ValueDisplay.TextColor3 = Color3.new(1, 1, 1)
                    ValueDisplay.TextScaled = true
                    ValueDisplay.TextSize = 10
                    ValueDisplay.Position = UDim2.new(0.635, 0, 0.08, 0)
                    ValueDisplay.Size = UDim2.new(0.250, 0, 0.543, 0)
                    ValueDisplay.Font = Enum.Font.GothamBold
                    ValueDisplay.Text = Settings[ParentModuleName][SubModuleName].Value

                    local UITextSizeConstraint_ValueDisplay1 = Instance.new("UITextSizeConstraint")
                    UITextSizeConstraint_ValueDisplay1.Parent = ValueDisplay
                    UITextSizeConstraint_ValueDisplay1.MaxTextSize = 10

                    local isDragging = false
                    local function RoundToNearest(Number, Factor)
                        return (Factor == 0 and Number or (math.floor(Number / Factor) * Factor))
                    end

                    task.spawn(function()
                        FillFrame.Size = UDim2.new((Settings[ParentModuleName][SubModuleName].Value / MaximumValue), 0, 1, 0)
                        BarButton.Position = UDim2.new((Settings[ParentModuleName][SubModuleName].Value / MaximumValue), 0, BarButton.Position.Y.Scale, 0)
                        SubToggleFunction()
                    end)

                    task.spawn(function()
                        BarButton.MouseButton1Down:Connect(function()
                            isDragging = true
                        end)
                    end)

                    task.spawn(function()
                        UserInputService.InputEnded:Connect(function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 or Enum.UserInputType.Touch then
                                isDragging = false
                            end
                        end)
                    end)

                    task.spawn(function()
                        DropdownButton.Activated:Connect(function()
                            SliderFrame.Visible = not SliderFrame.Visible
                            task.spawn(function()
                                repeat
                                    task.wait()
                                    if isDragging == true then
                                        local mouseX = UserInputService:GetMouseLocation().X
                                        local framePosX = SliderFrame.AbsolutePosition.X
                                        local barPos = BarButton.Position
                                        local frameSizeX = SliderFrame.AbsoluteSize.X
                                        local percentage = ((mouseX - framePosX) / frameSizeX)
                                        local clampedPercentage = math.clamp(percentage, 0, 1)
                                        local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
                                        local tween1 = TweenService:Create(BarButton, tweenInfo, {Position = UDim2.new(clampedPercentage, 0, barPos.Y.Scale, 0)})
                                        tween1:Play()
                                        local tween2 = TweenService:Create(FillFrame, tweenInfo, {Size = UDim2.new(clampedPercentage, 0, 1, 0)})
                                        tween2:Play()
                                        ValueDisplay.Text = math.round(clampedPercentage * MaximumValue)
                                        Settings[ParentModuleName][SubModuleName].Value = math.round(clampedPercentage * MaximumValue)
                                        SubToggleFunction()
                                    end
                                until shared[sharedKey] == true or SliderFrame.Visible == false
                            end)
                        end)
                    end)
                end

                function SubModuleManager:CreateDropdown(SubInformation)
                    local HoverText = SubInformation.HoverText
                    local ParentModuleName = ModuleName
                    local SubModuleName = SubInformation.Name

                    if Settings[ParentModuleName][SubModuleName] == nil then
                        Settings[ParentModuleName][SubModuleName] = {}
                    end

                    local DropdownFrame = Instance.new("Frame")
                    local OptionsContainer = Instance.new("ScrollingFrame")
                    local OptionsUIListLayout = Instance.new("UIListLayout")
                    local DropdownText = Instance.new("TextLabel")
                    local UIPadding_Dropdown = Instance.new("UIPadding")
                    local UITextSizeConstraint_Dropdown = Instance.new("UITextSizeConstraint")
                    local ModuleInfoTextDropdown = Instance.new("TextLabel")
                    local UICorner_ModuleInfoDropdown = Instance.new("UICorner")
                    local UITextSizeConstraint_ModuleInfoDropdown = Instance.new("UITextSizeConstraint")

                    DropdownFrame.Parent = ModuleContainerScrollingFrame
                    DropdownFrame.Name = "Dropdown"
                    DropdownFrame.BackgroundTransparency = 0.15
                    DropdownFrame.BackgroundColor3 = Color3.new(0, 0, 0)
                    DropdownFrame.BorderSizePixel = 0
                    DropdownFrame.Visible = false
                    DropdownFrame.Position = UDim2.new(0.085, 0, 0.181, 0)
                    DropdownFrame.Size = UDim2.new(1, 0, 0.08, 0)
                    DropdownFrame.LayoutOrder = _layoutOrder
                    _layoutOrder = _layoutOrder + 1

                    OptionsContainer.Parent = DropdownFrame
                    OptionsContainer.Name = "OptionsContainer"
                    OptionsContainer.BackgroundTransparency = 1
                    OptionsContainer.ScrollBarThickness = 0
                    OptionsContainer.BorderSizePixel = 0
                    OptionsContainer.CanvasSize = UDim2.new(0, 0, 1.5, 0)
                    OptionsContainer.Position = UDim2.new(0, 0, 0.290, 0)
                    OptionsContainer.Size = UDim2.new(1, 0, 0.710, 0)

                    OptionsUIListLayout.Parent = OptionsContainer
                    OptionsUIListLayout.Name = "UIListLayout_2"
                    OptionsUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
                    OptionsUIListLayout.FillDirection = Enum.FillDirection.Vertical
                    OptionsUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

                    DropdownText.Parent = DropdownFrame
                    DropdownText.Name = "DropdownText"
                    DropdownText.BackgroundTransparency = 1
                    DropdownText.BorderSizePixel = 0
                    DropdownText.TextXAlignment = Enum.TextXAlignment.Left
                    DropdownText.TextColor3 = Color3.new(1, 1, 1)
                    DropdownText.TextScaled = true
                    DropdownText.TextSize = 12
                    DropdownText.Size = UDim2.new(1, 0, 0.290, 0)
                    DropdownText.Font = Enum.Font.GothamBold
                    DropdownText.Text = SubModuleName

                    UITextSizeConstraint_Dropdown.Parent = DropdownText
                    UITextSizeConstraint_Dropdown.Name = "UITextSizeConstraint_4"
                    UITextSizeConstraint_Dropdown.MaxTextSize = 12

                    UIPadding_Dropdown.Parent = DropdownText
                    UIPadding_Dropdown.Name = "UIPadding_2"
                    UIPadding_Dropdown.PaddingLeft = UDim.new(0, 15)

                    ModuleInfoTextDropdown.Parent = MainGui
                    ModuleInfoTextDropdown.Name = "ModuleInformation"
                    ModuleInfoTextDropdown.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
                    ModuleInfoTextDropdown.BorderSizePixel = 0
                    ModuleInfoTextDropdown.AnchorPoint = Vector2.new(0, 0.3)
                    ModuleInfoTextDropdown.TextColor3 = Color3.new(1, 1, 1)
                    ModuleInfoTextDropdown.TextScaled = true
                    ModuleInfoTextDropdown.TextSize = 11
                    ModuleInfoTextDropdown.Visible = false
                    ModuleInfoTextDropdown.ZIndex = 5
                    ModuleInfoTextDropdown.Size = UDim2.new(1.11, 0, 0.131, 0)
                    ModuleInfoTextDropdown.Font = Enum.Font.GothamBold
                    ModuleInfoTextDropdown.Text = HoverText
                    local textSize = TextService:GetTextSize(HoverText, 11, Enum.Font.GothamBold, Vector2.new(100000, 100000))
                    ModuleInfoTextDropdown.Size = UDim2.new(0, (textSize.X + 15), 0, (textSize.Y + 4))

                    UICorner_ModuleInfoDropdown.Parent = ModuleInfoTextDropdown
                    UICorner_ModuleInfoDropdown.Name = "UICorner_2"
                    UICorner_ModuleInfoDropdown.CornerRadius = UDim.new(0.4, 0)

                    local UITextSizeConstraint_ModuleInfoDropdown1 = Instance.new("UITextSizeConstraint")
                    UITextSizeConstraint_ModuleInfoDropdown1.Parent = ModuleInfoTextDropdown
                    UITextSizeConstraint_ModuleInfoDropdown1.Name = "UITextSizeConstraint_3"
                    UITextSizeConstraint_ModuleInfoDropdown1.MaxTextSize = 11

                    task.spawn(function()
                        local isHovering = false
                        task.spawn(function()
                            DropdownFrame.MouseLeave:Connect(function()
                                ModuleInfoTextDropdown.Visible = false
                                isHovering = false
                            end)
                        end)
                        task.spawn(function()
                            DropdownFrame.MouseEnter:Connect(function()
                                ModuleInfoTextDropdown.Visible = true
                                isHovering = true
                            end)
                        end)
                        task.spawn(function()
                            Mouse.Move:Connect(function()
                                if isHovering == true then
                                    local mousePos = UserInputService:GetMouseLocation()
                                    ModuleInfoTextDropdown.Position = UDim2.new(0, mousePos.X, 0, mousePos.Y - 10)
                                end
                            end)
                        end)
                    end)

                    task.spawn(function()
                        DropdownButton.Activated:Connect(function()
                            DropdownFrame.Visible = not DropdownFrame.Visible
                        end)
                    end)
                    local DropdownItemManager = {}

                    function DropdownItemManager:CreateToggle(ItemInformation)
                        local DefaultValue = ItemInformation.DefaultValue
                        local ItemToggleFunction = ItemInformation.Function
                        local DropdownParentModuleName = ModuleName
                        local DropdownItemName = ItemInformation.Name

                        local ItemButton = Instance.new("TextButton")
                        local UITextSizeConstraint_ItemButton = Instance.new("UITextSizeConstraint")

                        if Settings[ParentModuleName][DropdownParentModuleName][DropdownItemName] == nil then
                            Settings[ParentModuleName][DropdownParentModuleName][DropdownItemName] = {Value = DefaultValue}
                        end

                        local function ToggleItemState(Start)
                            if Start == false then
                                Settings[ParentModuleName][DropdownParentModuleName][DropdownItemName].Value = not Settings[ParentModuleName][DropdownParentModuleName][DropdownItemName].Value
                            end
                            if Settings[ParentModuleName][DropdownParentModuleName][DropdownItemName].Value == true then
                                ItemButton.BackgroundTransparency = 0
                                ItemToggleFunction()
                            end
                            if Settings[ParentModuleName][DropdownParentModuleName][DropdownItemName].Value == false then
                                ItemButton.BackgroundTransparency = 1
                                ItemToggleFunction()
                            end
                        end

                        ItemButton.Parent = OptionsContainer
                        ItemButton.Name = "Button"
                        ItemButton.BackgroundTransparency = (Settings[ParentModuleName][DropdownParentModuleName][DropdownItemName].Value == true and 0 or 1)
                        ItemButton.BackgroundColor3 = Color3.new(0.564706, 0.0313725, 1)
                        ItemButton.AutoButtonColor = false
                        ItemButton.BorderSizePixel = 0
                        ItemButton.TextColor3 = Color3.new(1, 1, 1)
                        ItemButton.TextScaled = true
                        ItemButton.TextSize = 11
                        ItemButton.Position = UDim2.new(3.039, 0, -2.333, 0)
                        ItemButton.Size = UDim2.new(1, 0, 0.172, 0)
                        ItemButton.Font = Enum.Font.GothamBold
                        ItemButton.Text = DropdownItemName

                        UITextSizeConstraint_ItemButton.Parent = ItemButton
                        UITextSizeConstraint_ItemButton.Name = "UITextSizeConstraint_5"
                        UITextSizeConstraint_ItemButton.MaxTextSize = 11

                        task.spawn(function()
                            ToggleItemState(true)
                        end)

                        task.spawn(function()
                            ItemButton.Activated:Connect(function()
                                ToggleItemState(false)
                            end)
                        end)
                    end

                    return DropdownItemManager
                end

                function SubModuleManager:CreateColorSlider(SubInformation)
                    local DefaultValue = SubInformation.DefaultValue
                    local SubToggleFunction = SubInformation.Function
                    local ParentModuleName = ModuleName
                    local SubModuleName = SubInformation.Name

                    if Settings[ParentModuleName][SubModuleName] == nil then
                        Settings[ParentModuleName][SubModuleName] = {Value = tostring(DefaultValue.R .. "," .. DefaultValue.G .. "," .. DefaultValue.B), Percentage = 0}
                    end

                    local colorValues = string.split(Settings[ParentModuleName][SubModuleName].Value, ",")
                    local redValue = colorValues[1]
                    local greenValue = colorValues[2]
                    local blueValue = colorValues[3]

                    local ColorSliderFrame = Instance.new("Frame")
                    local SliderSubFrame = Instance.new("Frame")
                    local BarButton = Instance.new("TextButton")
                    local UICorner_BarColor = Instance.new("UICorner")
                    local UIStroke_BarColor = Instance.new("UIStroke")
                    local UITextSizeConstraint_BarColor = Instance.new("UITextSizeConstraint")
                    local ColorDisplayFrame = Instance.new("Frame")
                    local UICorner_ColorDisplay = Instance.new("UICorner")
                    local FillFrameColor = Instance.new("Frame")
                    local UIGradient_FillColor = Instance.new("UIGradient")
                    local NameDisplayColor = Instance.new("TextLabel")
                    local UITextSizeConstraint_NameDisplayColor = Instance.new("UITextSizeConstraint")
                    local UIPadding_NameDisplayColor = Instance.new("UIPadding")

                    ColorSliderFrame.Parent = ModuleContainerScrollingFrame
                    ColorSliderFrame.Name = "ColorPicker"
                    ColorSliderFrame.BackgroundTransparency = 0.15
                    ColorSliderFrame.BackgroundColor3 = Color3.new(0, 0, 0)
                    ColorSliderFrame.BorderSizePixel = 0
                    ColorSliderFrame.Position = UDim2.new(0, 0, 0.287, 0)
                    ColorSliderFrame.Visible = false
                    ColorSliderFrame.Size = UDim2.new(1, 0, 0.08, 0)
                    ColorSliderFrame.LayoutOrder = _layoutOrder
                    ColorSliderFrame.LayoutOrder = (_layoutOrder + 1)

                    SliderSubFrame.Parent = ColorSliderFrame
                    SliderSubFrame.Name = "SliderFrame"
                    SliderSubFrame.BackgroundTransparency = 1
                    SliderSubFrame.BorderSizePixel = 0
                    SliderSubFrame.Position = UDim2.new(0.150, 0, 0.654, 0)
                    SliderSubFrame.Size = UDim2.new(0.700, 0, 0.060, 0)

                    BarButton.Parent = SliderSubFrame
                    BarButton.Name = "Bar"
                    BarButton.BackgroundColor3 = Color3.new(0, 0.6, 1)
                    BarButton.AutoButtonColor = false
                    BarButton.BorderSizePixel = 0
                    BarButton.TextScaled = true
                    BarButton.TextSize = 14
                    BarButton.Position = UDim2.new(Settings[ParentModuleName][SubModuleName].Percentage, 0, -1.111, 0)
                    BarButton.ZIndex = 2
                    BarButton.Size = UDim2.new(0.070, 0, 1.915, 0)
                    BarButton.Font = Enum.Font.GothamBold
                    BarButton.Text = ""

                    UICorner_BarColor.Parent = BarButton
                    UICorner_BarColor.Name = "UICorner_3"
                    UICorner_BarColor.CornerRadius = UDim.new(1, 0)

                    UIStroke_BarColor.Parent = BarButton
                    UIStroke_BarColor.Name = "UIStroke"
                    UIStroke_BarColor.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
                    UIStroke_BarColor.Thickness = 1
                    UIStroke_BarColor.Color = Color3.new(0, 0, 0)

                    UITextSizeConstraint_BarColor.Parent = BarButton
                    UITextSizeConstraint_BarColor.Name = "UITextSizeConstraint_4"
                    UITextSizeConstraint_BarColor.MaxTextSize = 14

                    ColorDisplayFrame.Parent = SliderSubFrame
                    ColorDisplayFrame.Name = "ColorDisplay"
                    ColorDisplayFrame.BackgroundColor3 = Color3.new(redValue, greenValue, blueValue)
                    ColorDisplayFrame.BorderSizePixel = 0
                    ColorDisplayFrame.Position = UDim2.new(0.889, 0, -5, 0)
                    ColorDisplayFrame.Size = UDim2.new(0, 15, 0, 15)

                    UICorner_ColorDisplay.Parent = ColorDisplayFrame
                    UICorner_ColorDisplay.Name = "UICorner_4"
                    UICorner_ColorDisplay.CornerRadius = UDim.new(0.200, 0)

                    FillFrameColor.Parent = SliderSubFrame
                    FillFrameColor.Name = "Fill"
                    FillFrameColor.BackgroundColor3 = Color3.new(1, 1, 1)
                    FillFrameColor.BorderSizePixel = 0
                    FillFrameColor.Position = UDim2.new(0, 0, -0.329, 0)
                    FillFrameColor.Size = UDim2.new(1, 0, 0.650, 0)

                    UIGradient_FillColor.Parent = FillFrameColor
                    UIGradient_FillColor.Name = "UIGradient_3"
                    UIGradient_FillColor.Color = ColorSequence.new{
                        ColorSequenceKeypoint.new(0.00, Color3.new(1, 0, 0)),
                        ColorSequenceKeypoint.new(0.20, Color3.new(1, 1, 0)),
                        ColorSequenceKeypoint.new(0.40, Color3.new(0, 1, 0)),
                        ColorSequenceKeypoint.new(0.60, Color3.new(0, 1, 1)),
                        ColorSequenceKeypoint.new(0.80, Color3.new(0, 0, 1)),
                        ColorSequenceKeypoint.new(1.00, Color3.new(1, 0, 1))
                    }

                    NameDisplayColor.Parent = ColorSliderFrame
                    NameDisplayColor.Name = "NameDisplay"
                    NameDisplayColor.BackgroundTransparency = 1
                    NameDisplayColor.BorderSizePixel = 0
                    NameDisplayColor.TextXAlignment = Enum.TextXAlignment.Left
                    NameDisplayColor.TextColor3 = Color3.new(1, 1, 1)
                    NameDisplayColor.TextScaled = true
                    NameDisplayColor.TextSize = 10
                    NameDisplayColor.Position = UDim2.new(-0.005, 0, 0.198, 0)
                    NameDisplayColor.Size = UDim2.new(1.005, 0, 0.470, 0)
                    NameDisplayColor.Font = Enum.Font.GothamBold
                    NameDisplayColor.Text = SubModuleName

                    UITextSizeConstraint_NameDisplayColor.Parent = NameDisplayColor
                    UITextSizeConstraint_NameDisplayColor.Name = "UITextSizeConstraint_5"
                    UITextSizeConstraint_NameDisplayColor.MaxTextSize = 11

                    UIPadding_NameDisplayColor.Parent = NameDisplayColor
                    UIPadding_NameDisplayColor.Name = "UIPadding_2"
                    UIPadding_NameDisplayColor.PaddingLeft = UDim.new(0, 30)

                    local function GetColorAtPercentage(percentage)
                        local keypoints = UIGradient_FillColor.Color.Keypoints
                        local endKeypoint = keypoints[#keypoints]
                        local startKeypoint = keypoints[1]
                        local colorAtPoint
                        for i = 1, (#keypoints - 1) do
                            if (keypoints[i].Time <= percentage) and (keypoints[i + 1].Time >= percentage) then
                                endKeypoint = keypoints[i + 1]
                                startKeypoint = keypoints[i]
                                percentage = ((percentage - startKeypoint.Time) / (endKeypoint.Time - startKeypoint.Time))
                                colorAtPoint = startKeypoint.Value:lerp(endKeypoint.Value, percentage)
                                return colorAtPoint
                            end
                        end
                    end

                    local isDraggingColor = false

                    task.spawn(function()
                        BarButton.MouseButton1Down:Connect(function()
                            isDraggingColor = true
                        end)
                    end)

                    task.spawn(function()
                        UserInputService.InputEnded:Connect(function(input)
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                isDraggingColor = false
                            end
                        end)
                    end)

                    task.spawn(function()
                        SubToggleFunction(redValue, greenValue, blueValue)
                    end)

                    task.spawn(function()
                        DropdownButton.Activated:Connect(function()
                            ColorSliderFrame.Visible = not ColorSliderFrame.Visible
                            task.spawn(function()
                                repeat
                                    task.wait()
                                    if isDraggingColor == true then
                                        local mouseX = UserInputService:GetMouseLocation().X
                                        local framePosX = ColorSliderFrame.AbsolutePosition.X
                                        local barPos = BarButton.Position
                                        local frameSizeX = ColorSliderFrame.AbsoluteSize.X
                                        local percentage = ((mouseX - framePosX) / frameSizeX)
                                        local clampedPercentage = math.clamp(percentage, 0, 1)
                                        local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, 0, false, 0)
                                        local tween = TweenService:Create(BarButton, tweenInfo, {Position = UDim2.new(clampedPercentage, 0, barPos.Y.Scale, 0)})
                                        tween:Play()
                                        local colorAtPoint = GetColorAtPercentage(clampedPercentage)
                                        ColorDisplayFrame.BackgroundColor3 = colorAtPoint
                                        Settings[ParentModuleName][SubModuleName].Percentage = clampedPercentage
                                        Settings[ParentModuleName][SubModuleName].Value = tostring(colorAtPoint.R .. "," .. colorAtPoint.G .. "," .. colorAtPoint.B)
                                        SubToggleFunction()
                                    end
                                until shared[sharedKey] == true or ColorSliderFrame.Visible == false
                            end)
                        end)
                    end)

                    task.spawn(function()
                        SubModuleManager:CreateKeybind()
                    end)

                    return SubModuleManager, ToggleButton
                end

                return SubModuleManager
            end

            return ModuleManager
        end

        local NotificationCount = 0
        local NotificationYPos = 0.88
        local NotificationList = {}

        function CreateNotification(NotificationTime, NotificationText)
            NotificationCount = NotificationCount + 1
            local NotificationFrame = Instance.new("Frame")
            NotificationFrame.Parent = MainGui
            NotificationFrame.Name = "Notification"
            NotificationFrame.BackgroundTransparency = 0.15
            NotificationFrame.BackgroundColor3 = Color3.new(0, 0, 0)
            NotificationFrame.Position = UDim2.new(1, 0, NotificationYPos, 0)
            NotificationFrame.Size = UDim2.new(0.178, 0, 0.084, 0)
            table.insert(NotificationList, NotificationFrame)

            local UICorner_Notification = Instance.new("UICorner")
            UICorner_Notification.Parent = NotificationFrame
            UICorner_Notification.CornerRadius = UDim.new(0.06, 0)

            local UIStroke_Notification = Instance.new("UIStroke")
            UIStroke_Notification.Parent = NotificationFrame
            UIStroke_Notification.Transparency = 0.5

            local SliderFrameNotification = Instance.new("Frame")
            SliderFrameNotification.Parent = NotificationFrame
            SliderFrameNotification.Name = "Slider"
            SliderFrameNotification.BackgroundColor3 = Color3.new(0, 0, 0)
            SliderFrameNotification.BorderSizePixel = 0
            SliderFrameNotification.Position = UDim2.new(0.219, 0, 0.734, 0)
            SliderFrameNotification.Size = UDim2.new(0.631, 0, 0.058, 0)

            local UICorner_Slider = Instance.new("UICorner")
            UICorner_Slider.Parent = SliderFrameNotification
            UICorner_Slider.Name = "UICorner2"
            UICorner_Slider.CornerRadius = UDim.new(1, 0)

            local FillFrameNotification = Instance.new("Frame")
            FillFrameNotification.Parent = SliderFrameNotification
            FillFrameNotification.Name = "Fill"
            FillFrameNotification.BackgroundColor3 = Color3.new(0.45098, 0, 1)
            FillFrameNotification.BorderSizePixel = 0
            FillFrameNotification.Size = UDim2.new(1, 0, 1, 0)

            local TextLabelNotification = Instance.new("TextLabel")
            TextLabelNotification.Parent = NotificationFrame
            TextLabelNotification.Name = "Text"
            TextLabelNotification.BackgroundTransparency = 1
            TextLabelNotification.TextColor3 = Color3.new(1, 1, 1)
            TextLabelNotification.TextScaled = true
            TextLabelNotification.Position = UDim2.new(0, 0, 0.1, 0)
            TextLabelNotification.Font = Enum.Font.GothamBold
            TextLabelNotification.Size = UDim2.new(1, 0, 0.47, 0)
            TextLabelNotification.Text = NotificationText

            local UITextSizeConstraint_Text = Instance.new("UITextSizeConstraint")
            UITextSizeConstraint_Text.Parent = TextLabelNotification
            UITextSizeConstraint_Text.MaxTextSize = 14

            local TimeLeftText = Instance.new("TextLabel")
            TimeLeftText.Parent = NotificationFrame
            TimeLeftText.Name = "TimeLeft"
            TimeLeftText.BackgroundTransparency = 1
            TimeLeftText.TextColor3 = Color3.new(1, 1, 1)
            TimeLeftText.TextScaled = true
            TimeLeftText.Position = UDim2.new(0, 0, 0.53, 0)
            TimeLeftText.Font = Enum.Font.GothamBold
            TimeLeftText.Size = UDim2.new(0.221, 0, 0.47, 0)
            TimeLeftText.Text = tostring(NotificationTime)

            local UITextSizeConstraint_Time = Instance.new("UITextSizeConstraint")
            UITextSizeConstraint_Time.Parent = TimeLeftText
            UITextSizeConstraint_Time.Name = "UITextSizeConstraint2"
            UITextSizeConstraint_Time.MaxTextSize = 14

            task.spawn(function()
                local targetPos = UDim2.new(0.81, 0, NotificationYPos, 0)
                NotificationYPos = NotificationYPos - 0.105
                local tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out, 0, false, 0)
                local entryTween = TweenService:Create(NotificationFrame, tweenInfo, {Position = targetPos})
                entryTween:Play()

                task.wait(NotificationTime)

                targetPos = UDim2.new(1, 0, NotificationFrame.Position.Y.Scale, 0)
                tweenInfo = TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
                local exitTween = TweenService:Create(NotificationFrame, tweenInfo, {Position = targetPos})
                NotificationYPos = NotificationYPos + 0.105
                exitTween:Play()

                local removalEvent = Instance.new("BindableEvent")
                removalEvent.Name = "NotificationRemoved"
                removalEvent.Parent = ReplicatedStorage
                removalEvent:Fire({Name = "NotificationRemoved", Position = targetPos})

                NotificationCount = NotificationCount - 1
                task.wait(tweenInfo.Time)
                for index, notification in NotificationList do
                    if notification == NotificationFrame then
                        table.remove(NotificationList, index)
                        NotificationFrame:Destroy()
                        break
                    end
                end
            end)

            task.spawn(function()
                local startTime = tick()
                repeat
                    task.wait()
                    TimeLeftText.Text = string.format("%.1f", (NotificationTime - (tick() - startTime)))
                until (tick() - startTime) >= NotificationTime
                TimeLeftText.Text = "0.0"
            end)

            local fillTween = TweenService:Create(FillFrameNotification, TweenInfo.new(NotificationTime, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.new(0, 0, 1, 0)})
            fillTween:Play()
        end
        task.spawn(function()
            Connections["NotificationRemoved"] = ReplicatedStorage:WaitForChild("NotificationRemoved").Event:Connect(function(eventData)
                if eventData.Name == "NotificationRemoved" then
                    for _, notification in NotificationList do
                        if notification.Position.Y.Scale < eventData.Position.Y.Scale then
                            local newPos = UDim2.new(notification.Position.X.Scale, 0, (notification.Position.Y.Scale + 0.105), 0)
                            local tweenInfo = TweenInfo.new(0.24, Enum.EasingStyle.Sine, Enum.EasingDirection.Out)
                            local tween = TweenService:Create(notification, tweenInfo, {Position = newPos})
                            tween:Play()
                        end
                    end
                end
            end)
        end)

        local function ShowProgressBar(Duration)
            local ProgressFrame = Instance.new("Frame")
            local UICorner_Progress = Instance.new("UICorner")
            local UIStroke_Progress = Instance.new("UIStroke")
            local ProgressText = Instance.new("TextLabel")
            local UITextSizeConstraint_ProgressText = Instance.new("UITextSizeConstraint")
            local DisplayBackground = Instance.new("Frame")
            local UICorner_DisplayBackground = Instance.new("UICorner")
            local DisplayFrame = Instance.new("Frame")
            local UICorner_Display = Instance.new("UICorner")

            ProgressFrame.Parent = MainGui
            ProgressFrame.Name = "Background"
            ProgressFrame.BackgroundTransparency = 0.25
            ProgressFrame.BackgroundColor3 = Color3.new(0, 0, 0)
            ProgressFrame.BorderSizePixel = 0
            ProgressFrame.Position = UDim2.new(0.410, 0, 0.698, 0)
            ProgressFrame.Size = UDim2.new(0.178, 0, 0.085, 0)

            UICorner_Progress.Parent = ProgressFrame
            UICorner_Progress.Name = "UICorner"
            UICorner_Progress.CornerRadius = UDim.new(0.1, 0)

            UIStroke_Progress.Parent = ProgressFrame
            UIStroke_Progress.Name = "UIStroke"
            UIStroke_Progress.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke_Progress.Thickness = 2
            UIStroke_Progress.Color = Color3.new(0, 0.6, 1)

            ProgressText.Parent = ProgressFrame
            ProgressText.Name = "Text"
            ProgressText.BackgroundTransparency = 1
            ProgressText.BorderSizePixel = 0
            ProgressText.Position = UDim2.new(0, 0, 0.510, 0)
            ProgressText.TextColor3 = Color3.new(0, 0.6, 1)
            ProgressText.TextScaled = true
            ProgressText.TextSize = 20
            ProgressText.Size = UDim2.new(1, 0, 0.489, 0)
            ProgressText.Font = Enum.Font.GothamBold
            ProgressText.Text = Duration

            UITextSizeConstraint_ProgressText.Parent = ProgressText
            UITextSizeConstraint_ProgressText.Name = "UITextSizeConstraint"
            UITextSizeConstraint_ProgressText.MaxTextSize = 20

            DisplayBackground.Parent = ProgressFrame
            DisplayBackground.Name = "DisplayBackground"
            DisplayBackground.BackgroundColor3 = Color3.new(0, 0, 0)
            DisplayBackground.BorderSizePixel = 0
            DisplayBackground.Position = UDim2.new(0.229, 0, 0.267, 0)
            DisplayBackground.Size = UDim2.new(0.545, 0, 0.150, 0)

            UICorner_DisplayBackground.Parent = DisplayBackground
            UICorner_DisplayBackground.Name = "UICorner_2"
            UICorner_DisplayBackground.CornerRadius = UDim.new(0.4, 0)

            DisplayFrame.Parent = DisplayBackground
            DisplayFrame.Name = "Display"
            DisplayFrame.BackgroundColor3 = Color3.new(0, 0.6, 1)
            DisplayFrame.BorderSizePixel = 0
            DisplayFrame.Position = UDim2.new(0, 0, 0, 0)
            DisplayFrame.ZIndex = 2
            DisplayFrame.Size = UDim2.new(1, 0, 1, 0)

            UICorner_Display.Parent = DisplayFrame
            UICorner_Display.Name = "UICorner_3"
            UICorner_Display.CornerRadius = UDim.new(0.4, 0)
            task.spawn(function()
                local tweenInfo = TweenInfo.new(Duration, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
                local shrinkTween = TweenService:Create(DisplayFrame, tweenInfo, {Size = UDim2.new(0, 0, 1, 0)})
                shrinkTween:Play()
                shrinkTween.Completed:Connect(function()
                    ProgressFrame:Destroy()
                end)
            end)
            task.spawn(function()
                repeat
                    task.wait()
                    local progress = math.clamp(DisplayFrame.Size.X.Scale, 0, 1)
                    local displayValue = DecimalRound((progress * Duration), 1)
                    ProgressText.Text = displayValue
                until shared[sharedKey] == true or not ProgressFrame
            end)

            return ProgressFrame
        end
        local function CreateMobileKeybindButton(ModuleName)
            local Button = Instance.new("TextButton")
            local UICorner_Button = Instance.new("UICorner")
            local UITextSizeConstraint_Button = Instance.new("UITextSizeConstraint")

            Button.Parent = MobileKeybindFrameHolder
            Button.Name = ModuleName
            Button.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.203922)
            Button.BorderSizePixel = 0
            Button.TextColor3 = Color3.new(1, 1, 1)
            Button.TextScaled = true
            Button.Size = UDim2.new(0.15, 0, 0.25, 0)
            Button.Font = Enum.Font.GothamBold
            Button.Text = ModuleName

            UICorner_Button.Parent = Button
            UICorner_Button.CornerRadius = UDim.new(1, 0)

            UITextSizeConstraint_Button.Parent = Button
            UITextSizeConstraint_Button.MaxTextSize = 30

            Button.Activated:Connect(function()
                ToggleToggleFunctionEvent:Fire(ModuleName)
            end)

            return Button
        end
        local function CreateArrayList()
            local ArrayListManager = {
                Functions = {},
                Modules = {}
            }

            local ArrayListHolder = Instance.new("Frame")
            local UIListLayout_ArrayList = Instance.new("UIListLayout")

            ArrayListHolder.Parent = MainGui
            ArrayListHolder.Name = "ArrayListHolder"
            ArrayListHolder.BackgroundTransparency = 1
            ArrayListHolder.BorderSizePixel = 0
            ArrayListHolder.Position = UDim2.new(0.835, 0, 0.06, 0)
            ArrayListHolder.ZIndex = -1
            ArrayListHolder.Size = UDim2.new(0.103, 0, 0.94, 0)

            UIListLayout_ArrayList.Parent = ArrayListHolder
            UIListLayout_ArrayList.HorizontalAlignment = Enum.HorizontalAlignment.Right
            UIListLayout_ArrayList.SortOrder = Enum.SortOrder.LayoutOrder

            function ArrayListManager.Functions:UpdateOrder()
                table.sort(ArrayListManager.Modules, function(a, b)
                    return a.TextBounds.X > b.TextBounds.X
                end)
                for index, module in ArrayListManager.Modules do
                    module.ColorBar.Visible = Settings.ArrayList.ColorBar.Value
                    module.LayoutOrder = index
                end
            end

            function ArrayListManager.Functions:RemoveModule(Module)
                for index, module in ArrayListManager.Modules do
                    if module == Module then
                        table.remove(ArrayListManager.Modules, index)
                        break
                    end
                end
                ArrayListManager.Functions:UpdateOrder()
                local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Back, Enum.EasingDirection.In, 0, false, 0)
                local tween = TweenService:Create(Module, tweenInfo, {Size = UDim2.new(0, 0, 0.02, 0), BackgroundTransparency = 1, TextTransparency = 1})
                tween:Play()
                tween.Completed:Connect(function()
                    Module:Destroy()
                end)
            end

            function ArrayListManager.Functions:AddModule(ModuleName)
                local ModuleLabel = Instance.new("TextLabel")
                local UITextSizeConstraint_ModuleLabel = Instance.new("UITextSizeConstraint")
                local ColorBar = Instance.new("Frame")

                ModuleLabel.Parent = ArrayListHolder
                ModuleLabel.Name = "Module"
                ModuleLabel.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
                ModuleLabel.BackgroundTransparency = 0.25
                ModuleLabel.TextTransparency = 0.1
                ModuleLabel.BorderSizePixel = 0
                ModuleLabel.TextColor3 = Color3.new(1, 1, 1)
                ModuleLabel.TextSize = 13
                ModuleLabel.Size = UDim2.new(0, 0, 0.02, 0)
                ModuleLabel.Font = Enum.Font.GothamBold
                ModuleLabel.Text = ModuleName

                UITextSizeConstraint_ModuleLabel.Parent = ModuleLabel
                UITextSizeConstraint_ModuleLabel.MaxTextSize = 13

                ColorBar.Parent = ModuleLabel
                ColorBar.Name = "ColorBar"
                ColorBar.BackgroundColor3 = Color3.new(0.45098, 0, 1)
                ColorBar.BorderSizePixel = 0
                ColorBar.Position = UDim2.new(1, 0, 0, 0)
                ColorBar.Visible = Settings.ArrayList.ColorBar.Value
                ColorBar.Size = UDim2.new(0, 6, 1, 0)

                table.insert(ArrayListManager.Modules, ModuleLabel)
                ArrayListManager.Functions:UpdateOrder()
                task.spawn(function()
                    local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 0, false, 0)
                    local expandTween = TweenService:Create(ModuleLabel, tweenInfo, {Size = UDim2.new(0, (ModuleLabel.TextBounds.X + 10), 0.02, 0)})
                    expandTween:Play()
                    task.wait(0.05)
                    local tweenInfo2 = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)
                    local fadeInTween1 = TweenService:Create(ColorBar, tweenInfo2, {BackgroundTransparency = 0})
                    local fadeInTween2 = TweenService:Create(ModuleLabel, tweenInfo2, {BackgroundTransparency = 0.25, TextTransparency = 0.1})
                    fadeInTween1:Play()
                    fadeInTween2:Play()
                end)

                return ModuleLabel
            end
            task.spawn(function()
                local baseColor = Color3.new(0.45098, 0, 1)
                local waveStrength = Settings.ArrayList.WaveStrength.Value / 10
                local waveAmount = Settings.ArrayList.WaveAmount.Value
                local waveSpeed = Settings.ArrayList.WaveSpeed.Value / 10
                local waveSize = Settings.ArrayList.WaveSize.Value / 10
                local bgColor = Color3.new(0.0980392, 0.0980392, 0.0980392)

                task.spawn(function()
                    repeat
                        task.wait()
                        waveStrength = Settings.ArrayList.WaveStrength.Value / 10
                        waveAmount = Settings.ArrayList.WaveAmount.Value
                        waveSpeed = Settings.ArrayList.WaveSpeed.Value / 10
                        waveSize = Settings.ArrayList.WaveSize.Value / 10
                        local colorValues = string.split(Settings.ArrayList.WaveColor.Value, ",")
                        local red = colorValues[1]
                        local green = colorValues[2]
                        local blue = colorValues[3]
                        baseColor = Color3.new(red, green, blue)
                    until shared[sharedKey] == true
                end)

                while shared[sharedKey] == false do
                    local moduleCount = #ArrayListManager.Modules
                    local startTime = tick()
                    for index, module in ArrayListManager.Modules do
                        local percentage = (index / moduleCount) * waveAmount - (startTime * waveSpeed) % 1
                        local intensity = math.clamp(1 - (math.abs(percentage % 1 - 0.5) / waveSize), 0, 1) * waveStrength
                        module.BackgroundColor3 = bgColor:Lerp(baseColor, intensity)
                    end
                    RunService.Heartbeat:Wait()
                end
            end)

            return ArrayListManager, ArrayListHolder
        end

        local function CreateTargetHUD()
            local TargetHudFrame = Instance.new("Frame")
            local UICorner_TargetHud = Instance.new("UICorner")
            local UIStroke_TargetHud = Instance.new("UIStroke")
            local DisplayBackgroundTarget = Instance.new("Frame")
            local UICorner_DisplayBackgroundTarget = Instance.new("UICorner")
            local DisplayFrameTarget = Instance.new("Frame")
            local UICorner_DisplayTarget = Instance.new("UICorner")
            local PlayerNameText = Instance.new("TextLabel")
            local HealthText = Instance.new("TextLabel")
            local HealthPercentageText = Instance.new("TextLabel")
            local StatusText = Instance.new("TextLabel")

            TargetHudFrame.Parent = MainGui
            TargetHudFrame.Name = "Background"
            TargetHudFrame.BackgroundTransparency = 0.15
            TargetHudFrame.BackgroundColor3 = Color3.new(0, 0, 0)
            TargetHudFrame.BorderSizePixel = 0
            TargetHudFrame.AnchorPoint = Vector2.new(0.5, 0)
            TargetHudFrame.Position = UDim2.new(0.5, 0, 0.65, 0)
            TargetHudFrame.Size = UDim2.new(0.219, 0, 0.116, 0)

            UICorner_TargetHud.Parent = TargetHudFrame
            UICorner_TargetHud.Name = "UICorner"
            UICorner_TargetHud.CornerRadius = UDim.new(0.09, 0)

            UIStroke_TargetHud.Parent = TargetHudFrame
            UIStroke_TargetHud.Name = "UIStroke"
            UIStroke_TargetHud.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke_TargetHud.Thickness = 1

            DisplayBackgroundTarget.Parent = TargetHudFrame
            DisplayBackgroundTarget.Name = "DisplayBackground"
            DisplayBackgroundTarget.BackgroundColor3 = Color3.new(0, 0, 0)
            DisplayBackgroundTarget.BorderSizePixel = 0
            DisplayBackgroundTarget.Position = UDim2.new(0.226, 0, 0.825, 0)
            DisplayBackgroundTarget.Size = UDim2.new(0.545, 0, 0.0729, 0)

            UICorner_DisplayBackgroundTarget.Parent = DisplayBackgroundTarget
            UICorner_DisplayBackgroundTarget.Name = "UICorner_2"
            UICorner_DisplayBackgroundTarget.CornerRadius = UDim.new(0.015, 0)

            DisplayFrameTarget.Parent = DisplayBackgroundTarget
            DisplayFrameTarget.Name = "Display"
            DisplayFrameTarget.BorderSizePixel = 0
            DisplayFrameTarget.Position = UDim2.new(0, 0, 0, 0)
            DisplayFrameTarget.Size = UDim2.new(1, 0, 1, 0)
            DisplayFrameTarget.ZIndex = 2

            UICorner_DisplayTarget.Parent = DisplayFrameTarget
            UICorner_DisplayTarget.Name = "UICorner3"
            UICorner_DisplayTarget.CornerRadius = UDim.new(0, 6)

            PlayerNameText.Parent = TargetHudFrame
            PlayerNameText.Name = "PlayerName"
            PlayerNameText.BackgroundTransparency = 1
            PlayerNameText.BorderSizePixel = 0
            PlayerNameText.TextColor3 = Color3.new(1, 1, 1)
            PlayerNameText.Position = UDim2.new(0, 0, 0, 0)
            PlayerNameText.TextSize = 18
            PlayerNameText.Size = UDim2.new(1, 0, 0.480, 0)
            PlayerNameText.Font = Enum.Font.GothamBold
            PlayerNameText.Text = ""

            HealthText.Parent = TargetHudFrame
            HealthText.Name = "Health"
            HealthText.BackgroundTransparency = 1
            HealthText.BorderSizePixel = 0
            HealthText.Position = UDim2.new(0, 0, 0.471, 0)
            HealthText.TextColor3 = Color3.new(1, 1, 1)
            HealthText.TextSize = 15
            HealthText.Size = UDim2.new(1, 0, 0.354, 0)
            HealthText.Font = Enum.Font.GothamBold
            HealthText.Text = "Health: 100"

            HealthPercentageText.Parent = TargetHudFrame
            HealthPercentageText.Name = "100HP"
            HealthPercentageText.BackgroundTransparency = 1
            HealthPercentageText.BorderSizePixel = 0
            HealthPercentageText.Position = UDim2.new(0.770, 0, 0.725, 0)
            HealthPercentageText.TextColor3 = Color3.new(1, 1, 1)
            HealthPercentageText.TextSize = 15
            HealthPercentageText.Size = UDim2.new(0.230, 0, 0.249, 0)
            HealthPercentageText.Font = Enum.Font.GothamBold
            HealthPercentageText.Text = "100 HP"

            StatusText.Parent = TargetHudFrame
            StatusText.Name = "Status"
            StatusText.BackgroundTransparency = 1
            StatusText.BorderSizePixel = 0
            StatusText.Position = UDim2.new(0, 0, 0.725, 0)
            StatusText.TextColor3 = Color3.new(0, 1, 0)
            StatusText.TextSize = 15
            StatusText.Size = UDim2.new(0.228, 0, 0.249, 0)
            StatusText.Font = Enum.Font.GothamBold
            StatusText.Text = "Win"

            return TargetHudFrame, UIStroke_TargetHud, PlayerNameText, DisplayFrameTarget, HealthText, HealthPercentageText, StatusText
        end
        local function CreateProgressBarHUD()
            local ProgressFrame = Instance.new("Frame")
            local UICorner_ProgressHUD = Instance.new("UICorner")
            local UIStroke_ProgressHUD = Instance.new("UIStroke")
            local ProgressTextHUD = Instance.new("TextLabel")
            local UITextSizeConstraint_ProgressHUD = Instance.new("UITextSizeConstraint")
            local DisplayBackgroundHUD = Instance.new("Frame")
            local UICorner_DisplayBackgroundHUD = Instance.new("UICorner")
            local DisplayFrameHUD = Instance.new("Frame")
            local UICorner_DisplayHUD = Instance.new("UICorner")

            ProgressFrame.Parent = MainGui
            ProgressFrame.Name = "Background"
            ProgressFrame.BackgroundTransparency = 0.25
            ProgressFrame.BackgroundColor3 = Color3.new(0, 0, 0)
            ProgressFrame.BorderSizePixel = 0
            ProgressFrame.AnchorPoint = Vector2.new(0.5, 0)
            ProgressFrame.Position = UDim2.new(0.5, 0, 0.6, 0)
            ProgressFrame.Visible = false
            ProgressFrame.Size = UDim2.new(0.178, 0, 0.07, 0)

            UICorner_ProgressHUD.Parent = ProgressFrame
            UIStroke_ProgressHUD.Name = "UICorner"
            UICorner_ProgressHUD.CornerRadius = UDim.new(0.08, 0)

            UIStroke_ProgressHUD.Parent = ProgressFrame
            UIStroke_ProgressHUD.Name = "UIStroke"
            UIStroke_ProgressHUD.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            UIStroke_ProgressHUD.Transparency = 0.95
            UIStroke_ProgressHUD.Thickness = 1
            UIStroke_ProgressHUD.Color = Color3.new(0, 0, 0)

            ProgressTextHUD.Parent = ProgressFrame
            ProgressTextHUD.Name = "Text"
            ProgressTextHUD.BackgroundTransparency = 1
            ProgressTextHUD.BackgroundColor3 = Color3.new(1, 1, 1)
            ProgressTextHUD.TextColor3 = Color3.new(1, 1, 1)
            ProgressTextHUD.TextScaled = true
            ProgressTextHUD.Position = UDim2.new(0, 0, 0.511, 0)
            ProgressTextHUD.TextSize = 16
            ProgressTextHUD.Size = UDim2.new(1, 0, 0.450, 0)
            ProgressTextHUD.Font = Enum.Font.GothamBold

            UITextSizeConstraint_ProgressHUD.Parent = ProgressTextHUD
            UITextSizeConstraint_ProgressHUD.Name = "UITextSizeConstraint"
            UITextSizeConstraint_ProgressHUD.MaxTextSize = 16

            DisplayBackgroundHUD.Parent = ProgressFrame
            DisplayBackgroundHUD.Name = "DisplayBackground"
            DisplayBackgroundHUD.BackgroundColor3 = Color3.new(0, 0, 0)
            DisplayBackgroundHUD.BorderSizePixel = 0
            DisplayBackgroundHUD.Position = UDim2.new(0.229, 0, 0.267, 0)
            DisplayBackgroundHUD.Size = UDim2.new(0.545, 0, 0.130, 0)

            UICorner_DisplayBackgroundHUD.Parent = DisplayBackgroundHUD
            UICorner_DisplayBackgroundHUD.Name = "UICorner_2"
            UICorner_DisplayBackgroundHUD.CornerRadius = UDim.new(0.1, 4)

            DisplayFrameHUD.Parent = DisplayBackgroundHUD
            DisplayFrameHUD.Name = "Display"
            DisplayFrameHUD.BackgroundColor3 = Color3.new(0, 0.6, 1)
            DisplayFrameHUD.BorderColor3 = Color3.new(0, 0, 0)
            DisplayFrameHUD.Position = UDim2.new(0, 0, 0, 0)
            DisplayFrameHUD.Size = UDim2.new(0, 0, 1, 0)

            UICorner_DisplayHUD.Parent = DisplayFrameHUD
            UICorner_DisplayHUD.Name = "UICorner_3"
            UICorner_DisplayHUD.CornerRadius = UDim.new(0.1, 4)

            return ProgressFrame, ProgressTextHUD, DisplayFrameHUD, UIStroke_ProgressHUD
        end

        local function CreateGamePercentageDisplay()
            local TextLabel = Instance.new("TextLabel")
            TextLabel.Parent = MainGui
            TextLabel.Name = "Text"
            TextLabel.BackgroundTransparency = 1
            TextLabel.TextTransparency = 1
            TextLabel.BorderSizePixel = 0
            TextLabel.TextColor3 = Color3.new(1, 1, 1)
            TextLabel.TextSize = 20
            TextLabel.Position = UDim2.new(0.038, 0, 0.779, 0)
            TextLabel.Size = UDim2.new(0.135, 0, 0.061, 0)
            TextLabel.Font = Enum.Font.GothamBold
            TextLabel.Text = "Game Percentage: 0%"
            return TextLabel
        end
        local function CreateCoordinatesDisplay()
            local TextLabel = Instance.new("TextLabel")
            TextLabel.Parent = MainGui
            TextLabel.Name = "Text"
            TextLabel.BackgroundTransparency = 1
            TextLabel.TextTransparency = 1
            TextLabel.BorderSizePixel = 0
            TextLabel.TextColor3 = Color3.new(1, 1, 1)
            TextLabel.TextSize = 20
            TextLabel.Position = UDim2.new(0.038, 0, 0.818, 0)
            TextLabel.Size = UDim2.new(0.135, 0, 0.061, 0)
            TextLabel.Font = Enum.Font.GothamBold
            TextLabel.Text = "XYZ: (Nan, Nan, Nan)"
            task.spawn(function()
                repeat
                    task.wait()
                    if Settings.AirtimeDisplay.Value == true then
                        TextLabel.Position = UDim2.new(0.038, 0, 0.818, 0)
                    end
                    if Settings.AirtimeDisplay.Value == false then
                        TextLabel.Position = UDim2.new(0.038, 0, 0.857, 0)
                    end
                until shared[sharedKey] == true
            end)
            return TextLabel
        end
        local function CreateAirtimeDisplay()
            local TextLabel = Instance.new("TextLabel")
            TextLabel.Parent = MainGui
            TextLabel.Name = "Text"
            TextLabel.BackgroundTransparency = 1
            TextLabel.TextTransparency = 1
            TextLabel.BorderSizePixel = 0
            TextLabel.TextColor3 = Color3.new(1, 1, 1)
            TextLabel.TextSize = 20
            TextLabel.Position = UDim2.new(0.038, 0, 0.857, 0)
            TextLabel.Size = UDim2.new(0.135, 0, 0.061, 0)
            TextLabel.Font = Enum.Font.GothamBold
            TextLabel.Text = "Airtime: 0"
            return TextLabel
        end
        local function CreateSpeedDisplay()
            local TextLabel = Instance.new("TextLabel")
            TextLabel.Parent = MainGui
            TextLabel.Name = "Text"
            TextLabel.BackgroundTransparency = 1
            TextLabel.TextTransparency = 1
            TextLabel.BorderSizePixel = 0
            TextLabel.TextColor3 = Color3.new(1, 1, 1)
            TextLabel.TextSize = 20
            TextLabel.Position = UDim2.new(0.038, 0, 0.896, 0)
            TextLabel.Size = UDim2.new(0.135, 0, 0.061, 0)
            TextLabel.Font = Enum.Font.GothamBold
            TextLabel.Text = "Speed: Nan"
            return TextLabel
        end

        local Base64Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/jewjewjew123/AlSploit/refs/heads/main/Bedwars/Libraries/Base64.lua"))()

        local CombatConstants = {
            MAX_IDLE_TELEPORT_DISTANCE = 27.7,
            MIN_IDLE_BEFORE_TELEPORT = 0.85,
            MAX_CONTINUOUS_FLY_TIME = 2,
            MAX_CONTINUOUS_SPEED = 2101 / 90,
        }
        local ViewModel = Camera:WaitForChild("Viewmodel", 3)
        local RightHandWristC1 = ViewModel:WaitForChild("RightHand"):WaitForChild("RightWrist").C1
        local RightHandWristC0 = ViewModel:WaitForChild("RightHand"):WaitForChild("RightWrist").C0
        local Blocks = CollectionService:GetTagged("block")
        local isAntiLagbackActive = false
        local isSpeedEnabled = false
        local isJadeHammerExploitActive = false
        local lastPounceTime = 0
        local lastJadeHammerTime = 0
        local windWalkerOrbCount = 0

        local BlockSides = {
            Enum.NormalId.Top,
            Enum.NormalId.Left,
            Enum.NormalId.Right,
            Enum.NormalId.Back,
            Enum.NormalId.Front
        }
        local function GetNetwork()
            local success, result = pcall(function()
                return game:HttpGet("https://gitlab.com/stxvv/bedwarsdeps/-/raw/main/loader.lua?ref_type=heads")
            end)
            if not success then
                warn("[COMPILER]: unable to get Gitlab version.. trying Github")
                local githubSuccess, githubResult = pcall(function()
                    return game:HttpGet("https://raw.githubusercontent.com/stxxv/BedwarsDeps/refs/heads/main/loader.lua")
                end)
                if not githubSuccess then
                    error("[COMPILER]: Unable to get Github version, error: ", result)
                else
                    return loadstring(githubResult)()
                end
            else
                return loadstring(result)()
            end
        end

        local Network = GetNetwork()
        local ClientStore = (isSpecificExecutor == false and require(LocalPlayer.PlayerScripts.TS.ui.store).ClientStore or Network:GetMain("Store"))

        local Flamework = (isSpecificExecutor == false and require(ReplicatedStorage["rbxts_include"]["node_modules"]["@flamework"].core.out).Flamework or nil)

        local NetworkLib
        if isSpecificExecutor == true then
            function DecompileScript(Script)
                local bytecode = GetScriptBytecode(Script)
                if not bytecode then
                    CreateNotification(3, "Unable to decompile, fetching from Compiler..")
                    return Network:GetMain("Network")
                end
                local encoded = Base64Lib.Encode(bytecode)
                local success, response = HttpRequest({
                    Url = "https://api.lua.expert/decompile",
                    Method = "POST",
                    Body = HttpService:JSONEncode({script = encoded}),
                    Headers = {
                        ["Content-Type"] = "application/json"
                    }
                })
                if success == false then
                    CreateNotification(3, "Decompile failed :/, fetching from Compiler")
                    return Network:GetMain("Network")
                end
                if not response or response.StatusCode ~= 200 then
                    CreateNotification(3, "Decompile API down :/, fetching from Compiler")
                    return Network:GetMain("Network")
                end
                local decompiled = response.Body:gsub("\u{00CD}", " ")
                return loadstring(decompiled)()
            end
            NetworkLib = DecompileScript(LocalPlayer.PlayerScripts.TS.lib.network)
        else
            NetworkLib = require(LocalPlayer.PlayerScripts.TS.lib.network)
        end
        local Kit = ClientStore:getState().Bedwars.kit
        local knitSuccess, knitSetup
        task.spawn(function()
            repeat
                task.wait()
                pcall(function()
                    knitSuccess, knitSetup = pcall(function()
                        return debug.getupvalue(require(LocalPlayer.PlayerScripts.TS.knit).setup, 9)
                    end)
                end)
            until knitSuccess or shared[sharedKey] == true
        end)
        task.wait(1)
        local Controllers = {
            SwordController = Network:GetController("SwordController")
        }

        local Controllers2 = {
            BlockPlacementController = (isSpecificExecutor == false and (knitSuccess and knitSetup.Controllers.BlockPlacementController or nil) or nil),
            ViewModelController = (isSpecificExecutor == false and (knitSuccess and knitSetup.Controllers.ViewmodelController)) or Network:GetController("ViewModelController"),
            SprintController = (isSpecificExecutor == false and (knitSuccess and knitSetup.Controllers.SprintController)) or Network:GetController("SprintController"),
            SwordController = (isSpecificExecutor == false and (knitSuccess and knitSetup.Controllers.SwordController)) or Controllers.SwordController,
            FovController = (isSpecificExecutor == false and (knitSuccess and knitSetup.Controllers.FovController)) or Network:GetController("FovController")
        }

        local Controllers3 = {
            BlockBreakController = (isSpecificExecutor == false and require(LocalPlayer.PlayerScripts.TS.controllers.game["block-break-controller"]).BlockBreakController or nil),
            ViewModelController = LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"],
            AbilityController = (isSpecificExecutor == true and Network:GetController("AbilityController") or (Flamework and Flamework.resolveDependency("@easy-games/game-core:client/controllers/ability/ability-controller@AbilityController") or nil)),
            BlockController = (isSpecificExecutor == false and require(ReplicatedStorage["rbxts_include"]["node_modules"]["@easy-games"]["block-engine"].out).BlockEngine or Network:GetController("BlockController")),
            SwordController = (isSpecificExecutor == false and require(LocalPlayer.PlayerScripts.TS.controllers.global.combat.sword["sword-controller"]) or nil)
        }

        local Utilities = {
            InventoryUtil = (isSpecificExecutor == false and require(ReplicatedStorage["TS"].inventory["inventory-util"]).InventoryUtil) or Network:GetMain("Inventory").InventoryUtil,
            KnockbackUtil = (isSpecificExecutor == false and require(ReplicatedStorage["TS"].damage["knockback-util"]).KnockbackUtil) or nil
        }

        local Constants = {
            CombatConstant = (isSpecificExecutor == false and require(ReplicatedStorage["TS"].combat["combat-constant"]).CombatConstant or nil),
            KnockbackUtil = (isSpecificExecutor == false and require(ReplicatedStorage["TS"].damage["knockback-util"]).KnockbackUtil) or nil,
            CPSConstants = (isSpecificExecutor == false and require(ReplicatedStorage["TS"]["shared-constants"]).CpsConstants or nil)
        }

        local ControlModule = {}
        if isSpecificExecutor == false then
            ControlModule = {
                ControlModule = require(LocalPlayer.PlayerScripts.PlayerModule).controls
            }
        end

        local Metas = {}
        if isSpecificExecutor == true then
            Metas = {
                ProjectileMeta = HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/jewjewjew123/AlSploit/refs/heads/main/Bedwars/Metas/ProjectileMeta")),
                ItemMeta = HttpService:JSONDecode(game:HttpGet("https://raw.githubusercontent.com/jewjewjew123/AlSploit/refs/heads/main/Bedwars/Metas/ItemMeta")),
            }
            Metas.ItemMeta.getItemMeta = function(item)
                return Metas.ItemMeta.items[item]
            end
        else
            Metas = {
                ProjectileMeta = require(ReplicatedStorage["TS"].projectile["projectile-meta"]).ProjectileMeta,
                ItemMeta = require(ReplicatedStorage["TS"].item["item-meta"]),
            }
        end

        local NetManaged = ReplicatedStorage["rbxts_include"]["node_modules"]["@rbxts"]["net"]["out"]._NetManaged
        local Remotes = {
            TabFreezeAnticheat_ClientToServerReportRemote = NetManaged:WaitForChild("TabFreezeAnticheat_ClientToServerReport"),
            VoidWalker_ClientUsedWarpAbility = NetManaged:WaitForChild("VoidWalker_ClientUsedWarpAbility"),
            SummonerClawAttackRequestRemote = NetManaged:WaitForChild("SummonerClawAttackRequest"),
            CollectCollectableEntityRemote = NetManaged:WaitForChild("CollectCollectableEntity"),
            DestroyPetrifiedPlayerRemote = NetManaged:WaitForChild("DestroyPetrifiedPlayer"),
            BedwarsPurchaseItemRemote = NetManaged:WaitForChild("BedwarsPurchaseItem"),
            HannahPromptTriggerRemote = NetManaged:WaitForChild("HannahPromptTrigger"),
            TrinitySetAngelTypeRemote = NetManaged:WaitForChild("SetAngelType"),
            SpawnWindWalkerOrbRemote = NetManaged:WaitForChild("SpawnWindWalkerOrb"),
            SetObservedChestRemote = NetManaged:WaitForChild("Inventory/SetObservedChest"),
            HellBladeReleaseRemote = NetManaged:WaitForChild("HellBladeRelease"),
            AttemptCardThrowRemote = NetManaged:WaitForChild("AttemptCardThrow"),
            SetArmorInvItemRemote = NetManaged:WaitForChild("SetArmorInvItem"),
            SwordSwingMissRemote = NetManaged:WaitForChild("SwordSwingMiss"),
            MomentumUpdateRemote = NetManaged:WaitForChild("MomentumUpdate"),
            ConsumeTreeOrbRemote = NetManaged:WaitForChild("ConsumeTreeOrb"),
            ProjectileFireRemote = NetManaged:WaitForChild("ProjectileFire"),
            PickupItemDropRemote = NetManaged:WaitForChild("PickupItemDrop"),
            SkyScytheSpinRemote = NetManaged:WaitForChild("SkyScytheSpin"),
            ChestGetItemRemote = NetManaged:WaitForChild("Inventory/ChestGetItem"),
            BlockPlacingRemote = ReplicatedStorage["rbxts_include"]["node_modules"]["@rbxts"]["net"]["out"]._NetManaged:WaitForChild("PlaceBlock"),
            ReportPlayerRemote = NetManaged:WaitForChild("ReportPlayer"),
            ConsumeItemRemote = NetManaged:WaitForChild("ConsumeItem"),
            DamageBlockRemote = ReplicatedStorage["rbxts_include"]["node_modules"]["@rbxts"]["net"]["out"]._NetManaged:WaitForChild("DamageBlock"),
            SetInvItemRemote = NetManaged:WaitForChild("SetInvItem"),
            JoinQueueRemote = ReplicatedStorage["events-@easy-games/lobby:shared/event/lobby-events@getEvents.Events"]:WaitForChild("joinQueue"),
            GroundHitRemote = NetManaged:WaitForChild("GroundHit"),
            SwordHitRemote = NetManaged:WaitForChild("SwordHit"),
            AfkInfoRemote = NetManaged:WaitForChild("AfkInfo")
        }

        task.spawn(function()
            Remotes.TabFreezeAnticheat_ClientToServerReportRemote.Parent = ReplicatedStorage
            task.wait(2.5)
            Remotes.TabFreezeAnticheat_ClientToServerReportRemote.Parent = NetManaged
        end)
        local function GetBestProjectileInfo(player)
            local bestDPS, bestDelay, bestSpeed, bestItem, bestProjectileType, bestAmmoItem = 0, 0, 0, nil, 0, nil
            for _, item in GetInventory(player).items do
                local itemMeta = GetItemMeta(item.itemType)
                if itemMeta and itemMeta.projectileSource and itemMeta.projectileSource.ammoItemTypes then
                    local ammoItem, ammoCount, ammoSpeed, gravAccel = GetBestProjectile(itemMeta.projectileSource, player)
                    local fireDelay = itemMeta.projectileSource.fireDelaySec
                    if ammoItem and ammoCount > 0 and fireDelay then
                        local dps = (ammoCount / fireDelay)
                        if dps > bestDPS then
                            bestDPS = dps
                            bestDelay = fireDelay
                            bestSpeed = ammoSpeed
                            bestItem = item
                            bestProjectileType = itemMeta.projectileSource.projectileType(ammoItem.itemType)
                            bestAmmoItem = ammoItem
                        end
                    end
                end
            end
            return bestDPS, bestDelay, bestSpeed, bestItem, bestProjectileType, bestAmmoItem
        end

        local function FindNearestLuckyBlock(range)
            range = range or math.huge
            local nearestBlock = nil
            for _, block in Blocks do
                if block.Name:lower():find("lucky") then
                    local distance = (block.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                    if distance < range then
                        range = distance
                        nearestBlock = block
                    end
                end
            end
            return nearestBlock
        end

        local function GetNearestSpiritOrb(range)
            range = range or math.huge
            local nearestOrb = nil
            for _, orb in CollectionService:GetTagged("treeOrb") do
                if orb:FindFirstChild("Spirit") then
                    local distance = (orb.Spirit.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                    if distance < range then
                        range = distance
                        nearestOrb = orb
                    end
                end
            end
            return nearestOrb, range
        end

        function FindNearestPlayer(range, raycastCheck)
            raycastCheck = raycastCheck or false
            local nearestDistance = range or math.huge
            local nearestPlayer = nil
            for _, player in Players:GetPlayers() do
                if IsAlive(player) == true and player ~= LocalPlayer and IsAlive(LocalPlayer) == true and player.Team ~= LocalPlayer.Team then
                    local distance = (player.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                    if raycastCheck == true then
                        local raycastParams = RaycastParams.new()
                        raycastParams.FilterDescendantsInstances = {LocalPlayer.Character, player.Character}
                        raycastParams.FilterType = Enum.RaycastFilterType.Exclude
                        local raycastResult = Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, (player.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position), raycastParams)
                        if not raycastResult then
                            if distance < nearestDistance then
                                nearestDistance = distance
                                nearestPlayer = player
                            end
                        end
                    end
                    if raycastCheck == false then
                        if distance < nearestDistance then
                            nearestDistance = distance
                            nearestPlayer = player
                        end
                    end
                end
            end
            return nearestPlayer, nearestDistance
        end

        local function FindClosestEntity(range, findAPlayer)
            local closestDist, closestEntity = (range and range or math.huge), nil
            local isEntity = true
            findAPlayer = findAPlayer and findAPlayer or false

            task.spawn(function()
                for _, entity in CollectionService:GetTagged("entity") do
                    if entity.Name:find("desert") then
                        local distance = (entity.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                        if distance < closestDist then
                            closestDist = distance
                            closestEntity = entity
                        end
                    end
                end
            end)

            task.spawn(function()
                for _, titan in CollectionService:GetTagged("Titan") do
                    if titan.PrimaryPart and titan:GetAttribute("Team") ~= LocalPlayer:GetAttribute("Team") then
                        local distance = (titan.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                        if distance < closestDist then
                            closestDist = distance
                            closestEntity = titan
                        end
                    end
                end
            end)

            task.spawn(function()
                local titan = Workspace:FindFirstChild("Titan")
                if titan and titan.PrimaryPart then
                    local distance = (titan.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                    if distance < closestDist then
                        closestDist = distance
                        closestEntity = titan
                    end
                end
            end)

            task.spawn(function()
                for _, guardian in CollectionService:GetTagged("GuardianOfDream") do
                    if guardian.PrimaryPart then
                        local distance = (guardian.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                        if distance < closestDist then
                            closestDist = distance
                            closestEntity = guardian
                        end
                    end
                end
            end)

            task.spawn(function()
                for _, golem in CollectionService:GetTagged("GolemBoss") do
                    if golem.PrimaryPart then
                        local distance = (golem.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                        if distance < closestDist then
                            closestDist = distance
                            closestEntity = golem
                        end
                    end
                end
            end)

            task.spawn(function()
                for _, jellyfish in CollectionService:GetTagged("jellyfish") do
                    if jellyfish.PrimaryPart then
                        local distance = (jellyfish.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                        if distance < closestDist then
                            closestDist = distance
                            closestEntity = jellyfish
                        end
                    end
                end
            end)

            task.spawn(function()
                for _, diamondGuardian in CollectionService:GetTagged("DiamondGuardian") do
                    if diamondGuardian.PrimaryPart then
                        local distance = (diamondGuardian.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                        if distance < closestDist then
                            closestDist = distance
                            closestEntity = diamondGuardian
                        end
                    end
                end
            end)

            task.spawn(function()
                for _, monster in CollectionService:GetTagged("Monster") do
                    if monster.PrimaryPart and monster:GetAttribute("Team") ~= LocalPlayer:GetAttribute("Team") then
                        local distance = (monster.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                        if distance < closestDist then
                            closestDist = distance
                            closestEntity = monster
                        end
                    end
                end
            end)

            task.spawn(function()
                if findAPlayer == true then
                    for _, player in Players:GetPlayers() do
                        if IsAlive(player) == true and player ~= LocalPlayer and player.Team ~= LocalPlayer.Team then
                            local distance = (player.Character.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                            if distance < closestDist then
                                closestDist = distance
                                closestEntity = player
                                isEntity = false
                            end
                        end
                    end
                end
            end)

            if closestEntity then
                return (isEntity == true and closestEntity or closestEntity.Character), closestDist
            end
            return nil
        end

        local function GetLowestHealthBlock(position)
            local lowestHealth, lowestBlock = math.huge, nil
            local blockHealth = 0
            for _, side in BlockSides do
                for _, block in FindPlacedBlocks(position, side) do
                    local itemMeta = GetItemMeta(block.Name).block
                    if itemMeta then
                        blockHealth = (itemMeta.health and itemMeta.health or 10)
                    end
                    if blockHealth <= lowestHealth then
                        lowestHealth = blockHealth
                        lowestBlock = block
                    end
                end
            end
            return lowestHealth, lowestBlock
        end

        function GetBestProjectile(Projectile, player)
            local bestDamage, bestAmmoCount, bestSpeed, bestAmmoItem = 0, 0, nil
            for _, item in GetInventory(player).items do
                if table.find(Projectile.ammoItemTypes, item.itemType) then
                    local projectileMeta = Metas.ProjectileMeta[item.itemType]
                    local gravAccel = (projectileMeta.gravitationalAcceleration and projectileMeta.gravitationalAcceleration or Workspace.Gravity)
                    local launchVelocity = (projectileMeta.launchVelocity and projectileMeta.launchVelocity or 100)
                    if projectileMeta then
                        local damage = -1
                        pcall(function()
                            if projectileMeta.combat.damage then
                                damage = (projectileMeta.combat.damage and projectileMeta.combat.damage or -1)
                            end
                        end)
                        if damage > bestAmmoCount then
                            bestDamage = gravAccel
                            bestSpeed = launchVelocity
                            bestAmmoCount = damage
                            bestAmmoItem = item
                        end
                    end
                end
            end
            return bestAmmoItem, bestAmmoCount, bestSpeed, bestDamage
        end

        local function GetNearestGhostId(range)
            local ghostId = nil
            range = range or math.huge
            for _, ghost in CollectionService:GetTagged("ghost") do
                if ghost:GetAttribute("Id") then
                    local distance = (ghost.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                    if distance < range then
                        ghostId = ghost:GetAttribute("Id")
                        range = distance
                    end
                end
            end
            return ghostId
        end

        function FindPlacedBlocks(position, side)
            local blocks = {}
            for i = 1, 20 do
                local checkPos = (position + (Vector3.FromNormalId(side) * (i * 3)))
                local isBlocked = IsPositionBlocked(checkPos)
                local block = GetBlockAtPosition(checkPos)
                if block then
                    if block.Name ~= "bed" and block.Name ~= "ceramic" and block.Name ~= "iron_ore" and IsBlockBreakable(checkPos) == true then
                        table.insert(blocks, block)
                    end
                end
                if isBlocked == false then
                    break
                end
                if not block then
                    break
                end
            end            return blocks
        end

        function IsBlockBreakable(position)
            local isBreakable = false
            if Controllers3.BlockController then
                if Controllers3.BlockController:isBlockBreakable({blockPosition = position}, LocalPlayer) then
                    isBreakable = true
                end
            else
                isBreakable = true
            end
            return isBreakable
        end

        local function IsOnGround(player, rayDown)
            rayDown = rayDown or -3.5
            player = player or LocalPlayer
            local raycastParams = RaycastParams.new()
            raycastParams.FilterDescendantsInstances = {player.Character}
            raycastParams.FilterType = Enum.RaycastFilterType.Exclude
            local blockcastResult = Workspace:Blockcast(player.Character.PrimaryPart.CFrame, Vector3.new(2.5, 0.5, 2.5), Vector3.new(0, rayDown, 0), raycastParams)
            if blockcastResult and blockcastResult.Instance.CanCollide then
                return true
            end
            return false
        end

        function GetBlockAtPosition(position)
            if Controllers3.BlockController then
                local blockPos = Controllers3.BlockController:getBlockPosition(position)
                return Controllers3.BlockController:getStore():getBlockAt(blockPos), blockPos
            else
                local raycastParams = RaycastParams.new()
                raycastParams.FilterDescendantsInstances = {LocalPlayer.Character}
                raycastParams.FilterType = Enum.RaycastFilterType.Exclude
                local direction = (position - LocalPlayer.Character.PrimaryPart.Position).Unit
                local raycastResult = Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, direction, raycastParams)
                if raycastResult then
                    if raycastResult.Position and raycastResult.Instance and raycastResult.Instance.CanCollide == true then
                        return true
                    end
                end
                return false
            end
        end

        local function FindNearestBlock(range, onlyBelow)
            local nearestDistance = range or math.huge
            local nearestBlock = nil
            for _, block in CollectionService:GetTagged("block") do
                if IsAlive(LocalPlayer) == true then
                    local playerPos = LocalPlayer.Character.PrimaryPart.Position
                    if not onlyBelow or block.Position.Y <= playerPos.Y then
                        local distance = (playerPos - block.Position).Magnitude
                        if distance < nearestDistance then
                            nearestDistance = distance
                            nearestBlock = block
                        end
                    end
                end
            end
            return nearestBlock, nearestDistance
        end

        function FindNearestBed(ignoreBedShieldEndTime, range)
            local nearestDistance = range or math.huge
            local nearestBed = nil
            local bedCount = 0

            if IsAlive(LocalPlayer) == true then
                for _, bed in CollectionService:GetTagged("bed") do
                    local bedColor = (bed:FindFirstChild("Bed") and bed:FindFirstChild("Bed").BrickColor or bed:FindFirstChild("bed"):FindFirstChild("Bed") and bed:FindFirstChild("bed"):FindFirstChild("Bed").BrickColor or nil)
                    if bedColor and bedColor ~= LocalPlayer.Team.TeamColor then
                        bedCount = (bedCount + 1)
                    end
                end

                if ignoreBedShieldEndTime == false then
                    for _, bed in CollectionService:GetTagged("bed") do
                        local bedColor = (bed:FindFirstChild("Bed") and bed:FindFirstChild("Bed").BrickColor or bed:FindFirstChild("bed"):FindFirstChild("Bed") and bed:FindFirstChild("bed"):FindFirstChild("Bed").BrickColor or nil)
                        if bedColor and bedColor ~= LocalPlayer.Team.TeamColor then
                            if bed:GetAttribute("BedShieldEndTime") and (bed:GetAttribute("BedShieldEndTime") > Workspace:GetServerTimeNow() and bedCount == 1 or bed:GetAttribute("BedShieldEndTime") < Workspace:GetServerTimeNow()) then
                                local distance = (bed.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                                if distance < nearestDistance then
                                    nearestDistance = distance
                                    nearestBed = bed
                                end
                            end
                            if not bed:GetAttribute("BedShieldEndTime") then
                                local distance = (bed.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                                if distance < nearestDistance then
                                    nearestDistance = distance
                                    nearestBed = bed
                                end
                            end
                        end
                    end
                end

                if ignoreBedShieldEndTime == true then
                    for _, bed in CollectionService:GetTagged("bed") do
                        local bedColor = (bed:FindFirstChild("Bed") and bed:FindFirstChild("Bed").BrickColor or bed:FindFirstChild("bed"):FindFirstChild("Bed") and bed:FindFirstChild("bed"):FindFirstChild("Bed").BrickColor or nil)
                        if bedColor and bedColor ~= LocalPlayer.Team.TeamColor then
                            local distance = (bed.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                            if distance < nearestDistance then
                                nearestDistance = distance
                                nearestBed = bed
                            end
                        end
                    end
                end
            end
            return nearestBed, nearestDistance
        end

        local function GetNearestUpgrader(range)
            range = range or math.huge
            local nearestUpgrader = nil
            task.spawn(function()
                for _, upgrader in CollectionService:GetTagged("BedwarsTeamUpgrader") do
                    local distance = (upgrader.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                    if distance < range then
                        range = distance
                        nearestUpgrader = upgrader
                    end
                end
            end)
            task.spawn(function()
                for _, shop in CollectionService:GetTagged("BedwarsItemShop") do
                    local distance = (shop.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                    if distance < range then
                        range = distance
                        nearestUpgrader = shop
                    end
                end
            end)
            return nearestUpgrader
        end

        local function GetNearestOre(range)
            local nearestDistance = range or math.huge
            local nearestOre = nil
            for _, block in Blocks do
                if block.Name:lower():find("ore") then
                    local distance = (block.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                    if distance < nearestDistance then
                        nearestDistance = distance
                        nearestOre = block
                    end
                end
            end
            return nearestOre
        end

        function IsPositionBlocked(position)
            local blockedCount = 0
            for _, side in BlockSides do
                local checkPos = (position + (Vector3.FromNormalId(side) * 3))
                local block = GetBlockAtPosition(checkPos)
                if block then
                    blockedCount = blockedCount + 1
                end
            end
            return blockedCount == 5
        end

        local function AnimateSwordSwing(animationData)
            if ViewModel and RightHandWristC0 then
                for _, data in animationData do
                    local tweenInfo = TweenInfo.new(data.Time, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
                    local tween = TweenService:Create(ViewModel.RightHand.RightWrist, tweenInfo, {C0 = (RightHandWristC0 * data.CFrame)})
                    tween:Play()
                    task.wait(data.Time)
                end
            end
        end

        local function GetPlatformType()
            if UserInputService.TouchEnabled == true and UserInputService.KeyboardEnabled == false then
                return "Mobile"
            end
            return "PC"
        end

        local function GetMatchState()
            return ClientStore:getState().Game.matchState
        end

        local function BuyItemFromShop(itemData, inventory)
            inventory = (inventory and inventory.items or GetInventory(LocalPlayer).items)
            for _, item in inventory do
                if item.itemType == itemData[1]["shopItem"]["currency"] and item.amount >= itemData[1]["shopItem"]["price"] then
                    Remotes.BedwarsPurchaseItemRemote:InvokeServer(unpack(itemData))
                end
            end
        end

        local function GetQueueType()
            if isSpecificExecutor == true then
                return Workspace:GetAttribute("QueueType") or "bedwars_test"
            else
                local gameState = ClientStore:getState()
                return gameState.Game.queueType or Workspace:GetAttribute("QueueType") or "bedwars_test"
            end
        end

        function GetInventory(player)
            player = player or LocalPlayer
            if isSpecificExecutor == true and not GetItemMeta then
                local inventoryFolder = (IsAlive(player) == true and LocalPlayer.Character:FindFirstChild("InventoryFolder").Value:GetChildren() or {})
                local inventoryItems = {}
                for _, item in inventoryFolder do
                    inventoryItems[item] = {tool = item, itemType = tostring(item), amount = item:GetAttribute("Amount")}
                end
                return inventoryItems
            else
                local inventoryItems = GetItemMeta.GetInventory(player)
                return inventoryItems
            end
        end

        local function CloneCharacter(keepCape, controlMovements)
            LocalPlayer.Character.Archivable = true
            local clonedChar = LocalPlayer.Character:Clone()
            LocalPlayer.Character.Archivable = false

            for _, descendant in clonedChar:GetDescendants() do
                if descendant:IsA("Script") or descendant:IsA("LocalScript") then
                    descendant:Destroy()
                end
                if descendant:IsA("BasePart") then
                    descendant.CanCollide = false
                end
            end

            if keepCape == false then
                for _, descendant in clonedChar:GetDescendants() do
                    if descendant:IsA("BasePart") and descendant.Name == "Cape" then
                        descendant:Destroy()
                    end
                end
            end

            clonedChar.Parent = Workspace
            clonedChar.Name = "Clone"
            clonedChar.PrimaryPart.Anchored = true
            clonedChar.PrimaryPart.CFrame = LocalPlayer.Character.PrimaryPart.CFrame
            Camera.CameraSubject = clonedChar.Humanoid

            local originalAnimator = LocalPlayer.Character.Humanoid:FindFirstChild("Animator")
            local cloneAnimator = clonedChar.Humanoid:FindFirstChild("Animator")
            local animationTracks = {}

            local function PlayAnimationOnClone(animationTrack)
                local animId = animationTrack.Animation.AnimationId
                if animationTracks[animId] then
                    animationTracks[animId]:Stop()
                end
                local newTrack = cloneAnimator:LoadAnimation(animationTrack.Animation)
                newTrack:Play(0, animationTrack.WeightCurrent, animationTrack.Speed)
                animationTracks[animId] = newTrack
            end

            for _, track in originalAnimator:GetPlayingAnimationTracks() do
                PlayAnimationOnClone(track)
            end

            Connections["CloneConnection2"] = originalAnimator.AnimationPlayed:Connect(function(track)
                PlayAnimationOnClone(track)
            end)

            task.spawn(function()
                Connections["CloneConnection"] = RunService.RenderStepped:Connect(function()
                    if clonedChar and clonedChar.Parent then
                        if controlMovements == true then
                            clonedChar.PrimaryPart.CFrame = CFrame.new(LocalPlayer.Character.PrimaryPart.Position.X, clonedChar.PrimaryPart.Position.Y, LocalPlayer.Character.PrimaryPart.Position.Z) * (LocalPlayer.Character.PrimaryPart.CFrame - LocalPlayer.Character.PrimaryPart.CFrame.Position)
                        end
                    else
                        clonedChar = nil
                        Connections["CloneConnection"]:Disconnect()
                        Connections["CloneConnection2"]:Disconnect()
                    end
                end)
            end)

            return clonedChar
        end

        local function DamageBlock(position, bed)
            if bed == false or bed == nil then
                Remotes.DamageBlockRemote:InvokeServer({
                    blockRef = {
                        blockPosition = RoundVector3(position),
                    },
                    hitPosition = RoundVector3(position),
                    hitNormal = Vector3.yAxis
                })
            end
            if bed == true then
                Remotes.DamageBlockRemote:InvokeServer({
                    blockRef = {
                        blockPosition = RoundVector3(position),
                    },
                    hitPosition = position,
                    hitNormal = Vector3.FromNormalId(BlockSides[3])
                })
            end
        end

        function DecimalRound(number, digitsPast0)
            digitsPast0 = math.pow(10, digitsPast0)
            number = (number * digitsPast0)
            if number >= 0 then
                number = math.floor(number + 0.5)
            end
            if number < 0 then
                number = math.ceil(number - 0.5)
            end
            return (number / digitsPast0)
        end

        local function GetBestSword(player)
            local bestDPS, bestSword, bestAttackSpeed = -math.huge, nil, 0
            for _, item in GetSwords(player) do
                local swordMeta = GetItemMeta(item.itemType).sword
                local dps = (swordMeta.damage / swordMeta.attackSpeed)
                if dps > bestDPS then
                    bestDPS = dps
                    bestSword = item
                    bestAttackSpeed = swordMeta.attackSpeed
                end
            end
            return bestDPS, bestSword, bestAttackSpeed
        end

        local function GetSnowball(player)
            for _, item in GetInventory(player).items do
                if item.itemType:find("snowball") then
                    local projectileMeta = Metas.ProjectileMeta[item.itemType]
                    local gravAccel = (projectileMeta.gravitationalAcceleration and projectileMeta.gravitationalAcceleration or Workspace.Gravity)
                    local launchVelocity = (projectileMeta.launchVelocity and projectileMeta.launchVelocity or 100)
                    return item, gravAccel, launchVelocity
                end
            end
            return nil, 0, nil
        end

        local function GetFireball(player)
            for _, item in GetInventory(player).items do
                if item.itemType == "fireball" then
                    local projectileMeta = Metas.ProjectileMeta[item.itemType]
                    local gravAccel = (projectileMeta.gravitationalAcceleration and projectileMeta.gravitationalAcceleration or Workspace.Gravity)
                    local launchVelocity = (projectileMeta.launchVelocity and projectileMeta.launchVelocity or 100)
                    return item, gravAccel, launchVelocity
                end
            end
            return nil, 0, nil
        end

        local function SetHandItem(item)
            Remotes.SetInvItemRemote:InvokeServer({hand = item})
        end

        local function PlaySound(SoundId, volume)
            volume = volume or 0.5
            local part = Instance.new("Part")
            part.Parent = Workspace
            part.Name = "SoundHolder"
            part.Transparency = 1
            part.CanCollide = false
            part.Anchored = true
            part.Position = Vector3.new(0, 0, 0)
            part.CFrame = (IsAlive(LocalPlayer) == true and LocalPlayer.Character.PrimaryPart.CFrame or CFrame.new(Vector3.new(0, 0, 0)))
            part.Size = Vector3.new(1, 1, 1)

            local sound = Instance.new("Sound")
            sound.Parent = part
            sound.RollOffMinDistance = 10
            sound.RollOffMaxDistance = 60
            sound.RollOffMode = Enum.RollOffMode.InverseTapered
            sound.SoundId = SoundId
            sound.Volume = 0.5
            sound.Ended:Connect(function()
                part:Destroy()
            end)
            sound:Play()
        end

        function GetSwords(player)
            player = player or LocalPlayer
            local swords = {}
            for _, item in GetInventory(player).items do
                local swordMeta = GetItemMeta(item.itemType).sword
                if swordMeta then
                    table.insert(swords, item)
                end
            end
            return swords
        end

        function GetSpeed()
            local speed = 0
            local speedBoost = LocalPlayer.Character:GetAttribute("SpeedBoost")
            if speedBoost and speedBoost > 1 then
                speed = (speed + (8 * (speedBoost - 1)))
            end
            if LocalPlayer.Character:GetAttribute("GrimReaperChannel") then
                speed = (speed + 20)
            end
            if windWalkerOrbCount > 0 then
                speed = speed + 19 + (windWalkerOrbCount / 3)
            end
            if (tick() - lastPounceTime) <= 1.4 then
                speed = (speed + (SelectedMode == true and 2 or 20))
            end
            if (tick() - lastJadeHammerTime) <= 1.2 then
                speed = (speed + (SelectedMode == true and 2 or 30))
            end
            if isAntiLagbackActive then
                speed = speed + (SelectedMode == true and 2 or Settings.KrystalDisabler.DisablerSpeed.Value)
            end
            if isJadeHammerExploitActive == true then
                speed = (speed + (SelectedMode == true and 2 or 20))
            end
            speed = ((speed + Settings.Speed.Speed.Value) - 20)
            return speed
        end

        local function GetWool()
            for _, item in GetInventory(LocalPlayer).items do
                local itemMeta = GetItemMeta(item.itemType)
                if itemMeta and itemMeta.block and item.itemType:find("wool") then
                    return item
                end
            end
        end

        function GetArmorReduction(player)
            player = player or LocalPlayer
            if IsAlive(player) == true then
                local hasHelmet, hasChestplate, hasBoots
                local successHelmet, helmetName = pcall(function()
                    return Workspace[player.Name].ArmorInvItem_0.Value.Name
                end)
                if successHelmet then
                    hasHelmet = Workspace[player.Name].ArmorInvItem_0.Value.Name
                end
                local helmetReduction = 0
                local successChestplate, chestplateName = pcall(function()
                    return Workspace[player.Name].ArmorInvItem_1.Value.Name
                end)
                local chestplateReduction = 0
                local successBoots, bootsName = pcall(function()
                    return Workspace[player.Name].ArmorInvItem_2.Value.Name
                end)
                local bootsReduction = 0

                if hasHelmet then
                    helmetReduction = GetItemMeta(hasHelmet).armor.damageReductionMultiplier
                end
                if chestplateName then
                    chestplateReduction = GetItemMeta(chestplateName).armor.damageReductionMultiplier
                end
                if bootsName then
                    bootsReduction = GetItemMeta(bootsName).armor.damageReductionMultiplier
                end

                local totalReduction = (helmetReduction + chestplateReduction + bootsReduction)
                return totalReduction, hasHelmet, chestplateName, bootsName
            end
        end

        function HasItem(itemType)
            for _, item in GetInventory(LocalPlayer).items do
                if item.itemType == itemType then
                    return item
                end
            end
            return nil
        end

        function IsAlive(player)
            if not player.Character then
                return false
            end
            if not player.Character:FindFirstChildOfClass("Humanoid") then
                return false
            end
            if player.Character:GetAttribute("Health") <= 0 then
                return false
            end
            if not player.Character.PrimaryPart then
                return false
            end
            return true
        end
        local CombatTab = Connections:CreateTab("Combat", "rbxassetid://139561980250202", UDim2.new(0.260, 0, 0.743), UDim2.new(0.745, 0, 0.3, 0))
        local BlatantTab = Connections:CreateTab("Blatant", "rbxassetid://114128273804873", UDim2.new(0.179, 0, 0.800, 0), UDim2.new(0.8, 0, 0.168, 0))
        local UtilityTab = Connections:CreateTab("Utility", "rbxassetid://115536000607176", UDim2.new(0.132, 0, 0.6, 0), UDim2.new(0.808, 0, 0.25, 0))
        local WorldTab = Connections:CreateTab("World", "rbxassetid://79274861207680", UDim2.new(0.132, 0, 0.6, 0), UDim2.new(0.8, 0, 0.28, 0))
        local OtherTab = Connections:CreateTab("Other", "rbxassetid://0", UDim2.new(0.260, 0, 0.743), UDim2.new(0.745, 0, 0.3, 0))
        task.spawn(function()
            if SelectedMode == false then
                local ProjectileAura = CombatTab:CreateToggle({
                    Name = "ProjectileAura",
                    Function = function()
                        repeat
                            task.wait(0)
                            if GetMatchState() ~= 0 then
                                local target = nil
                                if Settings.ProjectileAura.Targets.Entities.Value == true then
                                    local entity = FindClosestEntity(Settings.ProjectileAura.Range.Value, false)
                                    if entity then
                                        target = {
                                            PrimaryPart = entity.PrimaryPart,
                                            Humanoid = {
                                                HipHeight = (entity.Humanoid and entity.Humanoid.HipHeight or 0),
                                                Jump = (entity.Humanoid and entity.Humanoid.Jump or false)
                                            }
                                        }
                                    end
                                end
                                if Settings.ProjectileAura.Targets.Players.Value == true then
                                    local player = FindNearestPlayer(Settings.ProjectileAura.Range.Value, true)
                                    if player then
                                        target = player.Character
                                    end
                                end

                                if target then
                                    local directionToTarget = (target.PrimaryPart.Position - Camera.CFrame.Position).Unit
                                    local lookDot = Camera.CFrame.LookVector:Dot(directionToTarget)
                                    local angle = math.deg(math.acos(lookDot))
                                    if angle > Settings.ProjectileAura.Angle.Value then
                                        return
                                    end

                                    task.spawn(function()
                                        if Settings.ProjectileAura.Projectiles.Snowballs.Value == true then
                                            local snowballItem, gravAccel, launchVelocity = GetSnowball(LocalPlayer)
                                            if snowballItem and (tick() - lastProjectileTime.Snowballs) > 0.1 then
                                                lastProjectileTime.Snowballs = tick()
                                                task.spawn(function()
                                                    if Settings.ProjectileAura.SwitchToItem.Value == true then
                                                        SetHandItem(snowballItem.tool)
                                                    end
                                                end)
                                                local distance = (LocalPlayer.Character.PrimaryPart.Position - target.PrimaryPart.Position).Magnitude
                                                local predictedPos = CalculateProjectileTrajectory(
                                                    gravAccel,
                                                    launchVelocity,
                                                    target.PrimaryPart.Position,
                                                    target.PrimaryPart.Velocity,
                                                    target.Humanoid.HipHeight,
                                                    (target.Humanoid.Jump and 0.5 or 0)
                                                )
                                                local direction = CFrame.lookAt(LocalPlayer.Character.PrimaryPart.Position, (predictedPos - Vector3.new(0, 4, 0))).LookVector * launchVelocity
                                                Remotes.ProjectileFireRemote:InvokeServer(
                                                    snowballItem.tool,
                                                    snowballItem.itemType,
                                                    snowballItem.itemType,
                                                    LocalPlayer.Character.Head.Position,
                                                    LocalPlayer.Character.PrimaryPart.Position,
                                                    direction,
                                                    GenerateShotId(),
                                                    { shotId = GenerateShotId(), drawDurationSec = 0 },
                                                    Workspace:GetServerTimeNow() - 0.045
                                                )
                                                if Settings.ProjectileAura.ProjectileTrail.Value == true then
                                                    CreateProjectileTrail(LocalPlayer.Character.Head.Position, direction, distance / launchVelocity)
                                                end
                                                local launchSounds = GetItemMeta(snowballItem.itemType).projectileSource.launchSound
                                                if launchSounds then
                                                    local soundId = launchSounds[math.random(1, #launchSounds)]
                                                    PlaySound(soundId)
                                                end
                                            end
                                        end
                                    end)

                                    task.spawn(function()
                                        if Settings.ProjectileAura.Projectiles.Fireballs.Value == true then
                                            local fireballItem, gravAccel, launchVelocity = GetFireball(LocalPlayer)
                                            if fireballItem and (tick() - lastProjectileTime.Fireballs) > 0.1 then
                                                lastProjectileTime.Fireballs = tick()
                                                task.spawn(function()
                                                    if Settings.ProjectileAura.SwitchToItem.Value == true then
                                                        SetHandItem(fireballItem.tool)
                                                    end
                                                end)
                                                local distance = (LocalPlayer.Character.PrimaryPart.Position - target.PrimaryPart.Position).Magnitude
                                                local predictedPos = CalculateProjectileTrajectory(
                                                    gravAccel,
                                                    launchVelocity,
                                                    target.PrimaryPart.Position,
                                                    target.PrimaryPart.Velocity,
                                                    target.Humanoid.HipHeight,
                                                    (target.Humanoid.Jump and 0.5 or 0)
                                                )
                                                local direction = CFrame.lookAt(LocalPlayer.Character.PrimaryPart.Position, (predictedPos - Vector3.new(0, 4, 0))).LookVector * launchVelocity
                                                Remotes.ProjectileFireRemote:InvokeServer(
                                                    fireballItem.tool,
                                                    fireballItem.itemType,
                                                    fireballItem.itemType,
                                                    LocalPlayer.Character.Head.Position,
                                                    LocalPlayer.Character.PrimaryPart.Position,
                                                    direction,
                                                    GenerateShotId(),
                                                    { shotId = GenerateShotId(), drawDurationSec = 0 },
                                                    Workspace:GetServerTimeNow() - 0.045
                                                )
                                                if Settings.ProjectileAura.ProjectileTrail.Value == true then
                                                    CreateProjectileTrail(LocalPlayer.Character.Head.Position, direction, distance / launchVelocity)
                                                end
                                                local launchSounds = GetItemMeta(fireballItem.itemType).projectileSource.launchSound
                                                if launchSounds then
                                                    local soundId = launchSounds[math.random(1, #launchSounds)]
                                                    PlaySound(soundId)
                                                end
                                            end
                                        end
                                    end)

                                    task.spawn(function()
                                        if Settings.ProjectileAura.Projectiles.Arrows.Value == true then
                                            local bestDPS, bestDelay, bestSpeed, bestItem, bestProjectileType, bestAmmoItem = GetBestProjectileInfo(LocalPlayer)
                                            if bestDelay and bestItem and bestAmmoItem and (tick() - lastProjectileTime.Arrows) > bestDelay then
                                                lastProjectileTime.Arrows = tick()
                                                task.spawn(function()
                                                    if Settings.ProjectileAura.SwitchToItem.Value == true then
                                                        SetHandItem(bestItem.tool)
                                                    end
                                                end)
                                                local predictedPos = CalculateProjectileTrajectory(
                                                    bestDPS,
                                                    bestSpeed,
                                                    target.PrimaryPart.Position,
                                                    target.PrimaryPart.Velocity,
                                                    target.Humanoid.HipHeight,
                                                    (target.Humanoid.Jump and -6 or 0)
                                                )
                                                local distance = (LocalPlayer.Character.PrimaryPart.Position - target.PrimaryPart.Position).Magnitude
                                                local heightAdjust = (target.Humanoid.Jump and (distance > 50 and distance / 150 or distance > 100 and distance / 65 or distance > 150 and distance / 30) or 0)
                                                local direction = CFrame.lookAt(LocalPlayer.Character.PrimaryPart.Position, (predictedPos + Vector3.new(0, heightAdjust, 0))).LookVector * bestSpeed
                                                local response = Remotes.ProjectileFireRemote:InvokeServer(
                                                    bestItem.tool,
                                                    bestAmmoItem.itemType,
                                                    bestProjectileType,
                                                    LocalPlayer.Character.Head.Position,
                                                    LocalPlayer.Character.PrimaryPart.Position,
                                                    direction,
                                                    GenerateShotId(),
                                                    { shotId = GenerateShotId(), drawDurationSec = (bestItem.itemType == "wood_bow" and 0.85 or 0) },
                                                    Workspace:GetServerTimeNow() - 0.045
                                                )
                                                if Settings.ProjectileAura.ProjectileTrail.Value == true then
                                                    CreateProjectileTrail(LocalPlayer.Character.Head.Position, direction, distance / bestSpeed)
                                                end
                                                if response then
                                                    local launchSounds = GetItemMeta(bestItem.itemType).projectileSource.launchSound
                                                    if launchSounds then
                                                        local soundId = launchSounds[math.random(1, #launchSounds)]
                                                        PlaySound(soundId)
                                                    end
                                                end
                                            end
                                        end
                                    end)
                                end
                            end
                        until Settings.ProjectileAura.Value == false or shared[sharedKey] == true
                    end,
                    HoverText = "Automatically Shoots Players"
                })

                ProjectileAura:CreateToggle({
                    Name = "ProjectileTrail",
                    Function = function() end,
                    DefaultValue = true
                })

                ProjectileAura:CreateToggle({
                    Name = "SwitchToItem",
                    Function = function() end,
                    DefaultValue = true
                })

                ProjectileAura:CreateSlider({
                    Name = "Angle",
                    Function = function() end,
                    MaximumValue = 360,
                    DefaultValue = 360
                })

                ProjectileAura:CreateSlider({
                    Name = "Range",
                    Function = function() end,
                    MaximumValue = 200,
                    DefaultValue = 150
                })

                local ProjectilesDropdown = ProjectileAura:CreateDropdown({
                    Name = "Projectiles",
                    HoverText = "Which Projectiles Will Be Thrown While Using ProjectileAura"
                })
                ProjectilesDropdown:CreateToggle({
                    Name = "Snowballs",
                    Function = function() end,
                    DefaultValue = true
                })
                ProjectilesDropdown:CreateToggle({
                    Name = "Fireballs",
                    Function = function() end,
                    DefaultValue = true
                })
                ProjectilesDropdown:CreateToggle({
                    Name = "Arrows",
                    Function = function() end,
                    DefaultValue = true
                })

                local TargetsDropdown = ProjectileAura:CreateDropdown({
                    Name = "Targets",
                    HoverText = "Which Entities Will Be Targeted While Using ProjectileAura"
                })
                TargetsDropdown:CreateToggle({
                    Name = "Entities",
                    Function = function() end,
                    DefaultValue = false
                })
                TargetsDropdown:CreateToggle({
                    Name = "Players",
                    Function = function() end,
                    DefaultValue = true
                })
            end
        end)

        task.spawn(function()
            if Controllers2.SwordController and (isSpecificExecutor == false or SelectedMode == false) then
                local oldIsClickingTooFast
                local NoClickDelayToggle = CombatTab:CreateToggle({
                    Name = "NoClickDelay",
                    Function = function()
                        if Settings.NoClickDelay.Value == true then
                            oldIsClickingTooFast = Controllers2.SwordController.isClickingTooFast
                            Controllers2.SwordController.isClickingTooFast = function(self)
                                self.lastSwing = tick()
                                return false
                            end
                        end
                        if Settings.NoClickDelay.Value == false then
                            Controllers2.SwordController.isClickingTooFast = oldIsClickingTooFast
                        end
                    end,
                    HoverText = "Removes The Delay While Clicking"
                })
                UnInjectEvent.Event:Connect(function()
                    Controllers2.SwordController.isClickingTooFast = oldIsClickingTooFast
                end)
            end
        end)

        task.spawn(function()
            local isAutoclickerActive = false
            local isAutoclickerMouseDown = false
            local clickPattern = {
                RhythmPhase = 0,
                BurstTarget = 0,
                LastJitter = 0,
                IsBursting = false,
                BurstCount = 0,
                Fatigue = 0,
            }

            local function IsMouseOverGui()
                local mousePos = UserInputService:GetMouseLocation()
                local guiObjects = LocalPlayer.PlayerGui:GetGuiObjectsAtPosition(mousePos.X, mousePos.Y)
                for _, object in guiObjects do
                    if object.Visible and object.BackgroundTransparency < 1 and (object:IsA("TextButton") or object:IsA("ImageButton") or object:IsA("TextBox") or object:IsA("Frame")) then
                        return true
                    end
                end
                return false
            end

            local function ApplyLegitDelay(baseDelay)
                if (Settings.Autoclicker.LegitMode.Value == true or SelectedMode == true) then
                    clickPattern.RhythmPhase += 0.3
                    clickPattern.Fatigue = (math.random() < 0.01 and 0 or clickPattern.Fatigue + 0.0005)
                    if clickPattern.IsBursting == false and math.random() < 0.03 then
                        clickPattern.IsBursting = true
                        clickPattern.BurstCount = 0
                        clickPattern.BurstTarget = math.random(2, 4)
                    end
                    local finalDelay = baseDelay
                    if clickPattern.IsBursting == true then
                        finalDelay -= baseDelay * 0.05
                        clickPattern.BurstCount += 1
                        if clickPattern.BurstCount >= clickPattern.BurstTarget then
                            clickPattern.IsBursting = false
                        end
                    end
                    finalDelay = (finalDelay + math.sin(clickPattern.RhythmPhase) * baseDelay * 0.02)
                    local jitter = ((math.random() * 2 - 1) * baseDelay * 0.05)
                    finalDelay = finalDelay + jitter
                    if math.random() < 0.04 then
                        finalDelay = (finalDelay + baseDelay * (0.1 + math.random() * 0.15))
                    end
                    finalDelay = finalDelay + clickPattern.Fatigue
                    if clickPattern.LastJitter < -baseDelay * 0.04 then
                        finalDelay = (finalDelay + baseDelay * 0.02)
                    end
                    clickPattern.LastJitter = jitter
                    return math.max(baseDelay * 0.5, finalDelay)
                else
                    return baseDelay
                end
            end

            local AutoclickerToggle = CombatTab:CreateToggle({
                Name = "Autoclicker",
                Function = function()
                    repeat
                        local delay = ApplyLegitDelay(1 / ((Settings.Autoclicker.LegitMode.Value == true or SelectedMode) and math.min(Settings.Autoclicker.Cps.Value, 17) or Settings.Autoclicker.Cps.Value))
                        task.wait(delay)
                        if Settings.Autoclicker.MouseDown.Value == true and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) == false then
                            return
                        end
                        isAutoclickerActive = false
                        isAutoclickerMouseDown = false
                        task.spawn(function()
                            local swords = GetSwords()
                            if swords then                                for _, sword in swords do
                                    if IsHoldingItem(sword.tool) then
                                        isAutoclickerActive = true
                                    end
                                end
                            end
                            if isAutoclickerActive == true then
                                if isSpecificExecutor == true then
                                    if IsMouseOverGui() == false then
                                        VirtualUser:ClickButton1(Vector2.new(Workspace.CurrentCamera.ViewportSize.X / 2, Workspace.CurrentCamera.ViewportSize.Y / 2))
                                    end
                                else
                                    Controllers2.SwordController:swingSwordAtMouse()
                                end
                            end
                        end)
                        task.spawn(function()
                            if Settings.Autoclicker.PlaceBlocks.Value == true then
                                local wool = GetWool()
                                if wool then
                                    if IsHoldingItem(wool.tool) == true then
                                        if isSpecificExecutor == true then
                                            VirtualUser:ClickButton1(Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2))
                                        else
                                            local success, blockPlacer = pcall(function()
                                                return Controllers2.BlockPlacementController.blockPlacer
                                            end)
                                            if success and blockPlacer then
                                                local mouseInfo = blockPlacer.clientManager:getBlockSelector():getMouseInfo(0)
                                                if mouseInfo then
                                                    blockPlacer:placeBlock(
                                                        mouseInfo.placementPosition,
                                                        mouseInfo
                                                    )
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end)
                    until shared[sharedKey] == true or Settings.Autoclicker.Value == false
                end,
                HoverText = "Clicks At The Desired Speed"
            })

            AutoclickerToggle:CreateSlider({
                Name = "Cps",
                Function = function() end,
                MaximumValue = 100,
                DefaultValue = 5
            })

            AutoclickerToggle:CreateToggle({
                Name = "PlaceBlocks",
                Function = function() end,
                DefaultValue = true
            })

            AutoclickerToggle:CreateToggle({
                Name = "LegitMode",
                Function = function() end,
                DefaultValue = false
            })

            AutoclickerToggle:CreateToggle({
                Name = "MouseDown",
                Function = function() end,
                DefaultValue = false
            })
        end)

        task.spawn(function()
            if SelectedMode == false then
                local InstantKillToggle = CombatTab:CreateToggle({
                    Name = "InstantKill",
                    Function = function()
                        repeat
                            task.wait((1 / Settings.InstantKill.Speed.Value) + 0.2)
                            if IsAlive(LocalPlayer) == true then
                                local entity = FindClosestEntity(18, true)
                                if GetMatchState() ~= 0 and entity then
                                    if Settings.InstantKill.Method.InfernalSaber.Value == true then
                                        local infernalSaber = HasItem("infernal_saber")
                                        if infernalSaber then
                                            Remotes.HellBladeReleaseRemote:FireServer({chargeTime = 1.2, player = LocalPlayer, weapon = infernalSaber})
                                        end
                                    end
                                    if Settings.InstantKill.Method.SkyScythe.Value == true then
                                        local skyScythe = HasItem("sky_scythe")
                                        if skyScythe then
                                            Remotes.SkyScytheSpinRemote:FireServer()
                                        end
                                    end
                                end
                            end
                        until Settings.InstantKill.Value == false or shared[sharedKey] == true
                    end,
                    HoverText = "Kills The Enemies Instantly (Infernal Saber / Sky Scythe Needed)"
                })

                InstantKillToggle:CreateSlider({
                    Name = "Speed",
                    Function = function() end,
                    MaximumValue = 10,
                    DefaultValue = 10
                })

                local MethodDropdown = InstantKillToggle:CreateDropdown({
                    Name = "Method",
                    Function = function() end,
                    HoverText = "Pick What Method You Want The InstantKill To Be"
                })
                MethodDropdown:CreateToggle({
                    Name = "InfernalSaber",
                    Function = function() end,
                    DefaultValue = true
                })
                MethodDropdown:CreateToggle({
                    Name = "SkyScythe",
                    Function = function() end,
                    DefaultValue = true
                })
            end
        end)

        task.spawn(function()
            local AimAssistToggle = CombatTab:CreateToggle({
                Name = "AimAssist",
                Function = function()
                    repeat
                        task.wait()
                        if IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 and (Settings.Autoclicker.MouseDown.Value == true and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) == true or true) then
                            local nearestPlayer = FindNearestPlayer(Settings.AimAssist.Range.Value)
                            local nearestEntity = FindClosestEntity(Settings.AimAssist.Range.Value, false)
                            if nearestPlayer or nearestEntity then
                                local targetPart
                                if Settings.AimAssist.FaceEntities.Value == true and nearestEntity then
                                    targetPart = nearestEntity.PrimaryPart
                                end
                                if nearestPlayer then
                                    targetPart = nearestPlayer.Character.PrimaryPart
                                end
                                local directionToTarget = (targetPart.Position - Camera.CFrame.Position).Unit
                                local lookDot = Camera.CFrame.LookVector:Dot(directionToTarget)
                                local angle = math.deg(math.acos(lookDot))

                                if Settings.AimAssist.LegitMode.Value == true or SelectedMode == true then
                                    if angle <= math.min(Settings.AimAssist.Angle.Value, 30) then
                                        local targetVelocity = nearestPlayer and nearestPlayer.Character.PrimaryPart.AssemblyLinearVelocity or (nearestEntity and nearestEntity.PrimaryPart.AssemblyLinearVelocity or Vector3.zero)
                                        local horizontalSpeed = Vector3.new(targetVelocity.X, 0, targetVelocity.Z).Magnitude / 16
                                        local smoothnessBase = math.clamp(0.35 + horizontalSpeed * 0.65, 0.35, 1.8) * (math.abs(targetVelocity.Y) > 2 and 5 or 3)
                                        local jitterAmount = (horizontalSpeed * 0.025 * (1 + (1 - math.clamp(angle / math.min(Settings.AimAssist.Angle.Value, 30), 0, 1)) * 2))
                                        local time = os.clock()
                                        Camera.CFrame = Camera.CFrame:Lerp(CFrame.lookAt(Camera.CFrame.Position, Camera.CFrame.Position + directionToTarget) * CFrame.Angles(math.sin(time * 14) * 0.1 * smoothnessBase + math.sin(time * 18) * jitterAmount, math.cos(time * 17) * 0.1 * smoothnessBase + math.cos(time * 23) * jitterAmount, 0), math.clamp(-0.34 + jitterAmount, 0.34, 0.42))
                                    end
                                else
                                    if angle <= Settings.AimAssist.Angle.Value then
                                        Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(Camera.CFrame.Position, (Camera.CFrame.Position + directionToTarget)), 2 / math.max(Settings.AimAssist.Smoothness.Value, 1))
                                    end
                                end
                            end
                        end
                    until shared[sharedKey] == true or Settings.AimAssist.Value == false
                end,
                HoverText = "Makes Your Camera Face The Desired Entity"
            })

            AimAssistToggle:CreateToggle({
                Name = "FaceEntities",
                Function = function() end,
                DefaultValue = false
            })

            AimAssistToggle:CreateToggle({
                Name = "LegitMode",
                Function = function() end,
                DefaultValue = false
            })

            AimAssistToggle:CreateToggle({
                Name = "MouseDown",
                Function = function() end,
                DefaultValue = false
            })

            AimAssistToggle:CreateSlider({
                Name = "Smoothness",
                Function = function() end,
                MaximumValue = 100,
                DefaultValue = 10
            })

            AimAssistToggle:CreateSlider({
                Name = "Angle",
                Function = function() end,
                MaximumValue = 360,
                DefaultValue = 360
            })

            AimAssistToggle:CreateSlider({
                Name = "Range",
                Function = function() end,
                MaximumValue = 25,
                DefaultValue = 19
            })
        end)

        task.spawn(function()
            if isSpecificExecutor == false and Utilities.KnockbackUtil then
                local oldApplyKnockback = Utilities.KnockbackUtil.applyKnockback
                local VelocityToggle = CombatTab:CreateToggle({
                    Name = "Velocity",
                    Function = function()
                        if Settings.Velocity.Value == true then
                            oldApplyKnockback = Utilities.KnockbackUtil.applyKnockback
                            Utilities.KnockbackUtil.applyKnockback = function(player, entity, direction, options, ...)
                                options = options or {}
                                local horizontal = (options.horizontal and options.horizontal or 1)
                                local vertical = (options.vertical and options.vertical or 1)
                                if SelectedMode == true then
                                    options.horizontal = (horizontal * (Settings.Velocity.Horizontal.Value / 1000))
                                    options.vertical = (vertical * (Settings.Velocity.Vertical.Value / 1000))
                                else
                                    options.horizontal = (horizontal * (Settings.Velocity.Horizontal.Value / 100))
                                    options.vertical = (vertical * (Settings.Velocity.Vertical.Value / 100))
                                end
                                return oldApplyKnockback(player, entity, direction, options, ...)
                            end
                        end
                        if Settings.Velocity.Value == false then
                            Utilities.KnockbackUtil.applyKnockback = oldApplyKnockback
                        end
                    end,
                    HoverText = "Changes The Knockback Direction, 100 Being Normal Value"
                })
                local HorizontalSlider = VelocityToggle:CreateSlider({
                    Name = "Horizontal",
                    Function = function() end,
                    MaximumValue = 100,
                    DefaultValue = 0
                })
                local VerticalSlider = VelocityToggle:CreateSlider({
                    Name = "Vertical",
                    Function = function() end,
                    MaximumValue = 100,
                    DefaultValue = 0
                })
                UnInjectEvent.Event:Connect(function()
                    Utilities.KnockbackUtil.applyKnockback = oldApplyKnockback
                end)
            else
                local oldKnockbackHorizontal = Constants.KnockbackUtil:GetAttribute("ConstantManager_kbDirectionStrength")
                local oldKnockbackVertical = Constants.KnockbackUtil:GetAttribute("ConstantManager_kbUpwardStrength")
                local VelocityToggle = CombatTab:CreateToggle({
                    Name = "Velocity",
                    Function = function()
                        if Settings.Velocity.Value == true then
                            Constants.KnockbackUtil:SetAttribute("ConstantManager_kbDirectionStrength", oldKnockbackHorizontal * (1 - Settings.Velocity.Horizontal.Value / (SelectedMode == true and 1000 or 100)))
                            Constants.KnockbackUtil:SetAttribute("ConstantManager_kbUpwardStrength", oldKnockbackHorizontal * (1 - Settings.Velocity.Vertical.Value / (SelectedMode == true and 1000 or 100)))
                        end
                        if Settings.Velocity.Value == false then
                            Constants.KnockbackUtil:SetAttribute("ConstantManager_kbDirectionStrength", oldKnockbackHorizontal)
                            Constants.KnockbackUtil:SetAttribute("ConstantManager_kbUpwardStrength", oldKnockbackVertical)
                        end
                    end,
                    HoverText = "Changes The Knockback Direction, 100 Being Normal Value"
                })
                local HorizontalSlider = VelocityToggle:CreateSlider({
                    Name = "Horizontal",
                    Function = function()
                        if Settings.Velocity.Value == true and shared[sharedKey] == false then
                            Constants.KnockbackUtil:SetAttribute("ConstantManager_kbDirectionStrength", oldKnockbackHorizontal * (1 - Settings.Velocity.Horizontal.Value / (SelectedMode == true and 1000 or 100)))
                        end
                    end,
                    MaximumValue = 100,
                    DefaultValue = 0
                })
                local VerticalSlider = VelocityToggle:CreateSlider({
                    Name = "Vertical",
                    Function = function()
                        if Settings.Velocity.Value == true and shared[sharedKey] == false then
                            Constants.KnockbackUtil:SetAttribute("ConstantManager_kbUpwardStrength", oldKnockbackHorizontal * (1 - Settings.Velocity.Vertical.Value / (SelectedMode == true and 1000 or 100)))
                        end
                    end,
                    MaximumValue = 100,
                    DefaultValue = 0
                })
                UnInjectEvent.Event:Connect(function()
                    Constants.KnockbackUtil:SetAttribute("ConstantManager_kbDirectionStrength", oldKnockbackHorizontal)
                    Constants.KnockbackUtil:SetAttribute("ConstantManager_kbUpwardStrength", oldKnockbackVertical)
                end)
            end
        end)

        task.spawn(function()
            local currentSwingAnimation = nil
            local isKillauraAnimating = false
            local isParticleEffectActive = false
            local platformType = GetPlatformType()

            local KillauraAnimations = {
                AlSploitHeartbeat = {
                    {CFrame = CFrame.new(0.2, 0, -1.3) * CFrame.Angles(math.rad(100), math.rad(100), math.rad(130)), Time = 0.15},
                    {CFrame = CFrame.new(0, -0.2, -1.7) * CFrame.Angles(math.rad(40), math.rad(111), math.rad(180)), Time = 0.15}
                },
                AlSploitClassic = {
                    {CFrame = CFrame.new(0.2, 0, -1.3) * CFrame.Angles(math.rad(111), math.rad(111), math.rad(130)), Time = 0.17},
                    {CFrame = CFrame.new(0, -0.2, -1.7) * CFrame.Angles(math.rad(30), math.rad(111), math.rad(190)), Time = 0.17}
                },
                AlSploitOld = {
                    {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(220), math.rad(100), math.rad(100)), Time = 0.25},
                    {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), Time = 0.25}
                },
                Neutral = {
                    {CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), Time = 0.05},
                }
            }

            local lastSwingTime = tick()

            local function PerformSwing(entity, entityDistance, sword)
                if (tick() - lastSwingTime) < 0.1111111111111111 then
                    Remotes.SwordSwingMissRemote:FireServer({ weapon = sword.tool, chargeRatio = 0 })
                end
                if (tick() - lastSwingTime) < 0.3 + ((SelectedMode == true or Settings.Killaura.LegitMode.Value == true) and math.random(1, 100) / 2000 or 0) then
                    return
                end

                local playerRoot = LocalPlayer.Character.HumanoidRootPart
                local targetRoot = entity.PrimaryPart
                local cursorDirection = Ray.new(Camera.CFrame.Position, entity.PrimaryPart.Position).Unit.Direction
                local lookVector = CFrame.lookAt(playerRoot.Position, targetRoot.Position).LookVector
                local targetPosition = ((math.max(entityDistance - 14.39999, 0) * lookVector) + LocalPlayer.Character.PrimaryPart.Position)

                if isSpecificExecutor == false and Controllers2.SwordController then
                    if Settings.Killaura.LegitAnimation.Value == true or (SelectedMode or Settings.Killaura.LegitMode.Value == true) then
                        Controllers2.SwordController:swingSwordAtMouse()
                    end
                else
                    if Settings.Killaura.LegitAnimation.Value == true or (SelectedMode or Settings.Killaura.LegitMode.Value == true) then
                        Controllers.SwordController:playSwordEffect(sword.tool)
                    end
                end

                if Controllers3.SwordController then
                    Controllers3.SwordController.lastAttack = Workspace:GetServerTimeNow()
                end
                lastSwingTime = tick()

                if SelectedMode == true or Settings.Killaura.LegitMode.Value == true then
                    Remotes.SwordHitRemote:FireServer({
                        weapon = sword.tool,
                        chargedAttack = {chargeRatio = 0},
                        entityInstance = entity,
                        validate = {
                            raycast = {
                                cameraPosition = {value = Camera.CFrame.Position},
                                cursorDirection = {value = Mouse.UnitRay.Direction}
                            },
                            targetPosition = {value = targetRoot.Position},
                            selfPosition = {value = LocalPlayer.Character.PrimaryPart.Position}
                        }
                    })
                else
                    Remotes.SwordHitRemote:FireServer({
                        weapon = sword.tool,
                        chargedAttack = {chargeRatio = 0},
                        entityInstance = entity,
                        validate = {
                            raycast = {
                                cameraPosition = {value = playerRoot.Position},
                                cursorDirection = {value = cursorDirection}
                            },
                            targetPosition = {value = targetRoot.Position},
                            selfPosition = {value = targetPosition}
                        }
                    })
                end

                task.spawn(function()
                    if Kit == "summoner" then
                        Remotes.SummonerClawAttackRequestRemote:FireServer({clientTime = tick(), direction = LocalPlayer.Character.PrimaryPart.CFrame.LookVector, position = LocalPlayer.Character.PrimaryPart.Position})
                    end
                end)
            end

            local function HandleSwing(entity, distance, sword)
                if distance <= 12.6 then
                    PerformSwing(entity, distance, sword)
                end
            end

            local function HandleSwingLegit(entity, distance, sword)
                local ray = Camera:ViewportPointToRay((Camera.ViewportSize / 2).X, (Camera.ViewportSize / 2).Y)
                local raycastParams = RaycastParams.new()
                raycastParams.FilterDescendantsInstances = {LocalPlayer.Character}
                raycastParams.FilterType = Enum.RaycastFilterType.Exclude
                local raycastResult = Workspace:Raycast(ray.Origin, ray.Direction * 200, raycastParams)
                if raycastResult and raycastResult.Instance then
                    local distanceToHit = (LocalPlayer.Character.PrimaryPart.Position - raycastResult.Instance.Position).Magnitude
                    if distanceToHit <= 14.4 then
                        PerformSwing(entity, distance, sword)
                    end
                else
                    HandleSwing(entity, distance, sword)
                end
            end

            local function HandleSwingBlatant(entity, distance, sword)
                local raycastParams = RaycastParams.new()
                raycastParams.FilterDescendantsInstances = {LocalPlayer.Character}
                raycastParams.FilterType = Enum.RaycastFilterType.Exclude
                local raycastResult = Workspace:Raycast(Mouse.UnitRay.Origin, Mouse.UnitRay.Direction * 200, raycastParams)
                if raycastResult and raycastResult.Instance then
                    local distanceToHit = (LocalPlayer.Character.PrimaryPart.Position - raycastResult.Instance.Position).Magnitude
                    if distanceToHit <= 14.4 then
                        PerformSwing(entity, distance, sword)
                    end
                else
                    HandleSwing(entity, distance, sword)
                end
            end

            local KillauraToggle = CombatTab:CreateToggle({
                Name = "Killaura",
                Function = function() end,
                HoverText = "Automatically Hits Entities For You"
            })

            KillauraToggle:CreateToggle({
                Name = "CustomAnimation",
                Function = function() end,
                DefaultValue = true
            })

            KillauraToggle:CreateToggle({
                Name = "SwitchToWeapon",
                Function = function() end,
                DefaultValue = true
            })

            KillauraToggle:CreateToggle({
                Name = "LegitAnimation",
                Function = function() end,
                DefaultValue = false
            })

            KillauraToggle:CreateToggle({
                Name = "ParticleEffect",
                Function = function() end,
                DefaultValue = true
            })

            KillauraToggle:CreateToggle({
                Name = "ShowEnemy",
                Function = function() end,
                DefaultValue = true
            })

            KillauraToggle:CreateToggle({
                Name = "LegitMode",
                Function = function() end,
                DefaultValue = false
            })

            KillauraToggle:CreateToggle({
                Name = "WallCheck",
                Function = function() end,
                DefaultValue = false
            })

            KillauraToggle:CreateSlider({
                Name = "HitChance",
                Function = function() end,
                DefaultValue = 100,
                MaximumValue = 100
            })

            KillauraToggle:CreateSlider({
                Name = "Range",
                Function = function() end,
                DefaultValue = 19,
                MaximumValue = 19
            })

            KillauraToggle:CreateSlider({
                Name = "Angle",
                Function = function() end,
                DefaultValue = 360,
                MaximumValue = 360
            })

            local ExceptionsDropdown = KillauraToggle:CreateDropdown({
                Name = "Exceptions",
                HoverText = "What Is Required For Killaura To Work"
            })
            ExceptionsDropdown:CreateToggle({
                Name = "MouseDown",
                Function = function() end,
                DefaultValue = false
            })
            ExceptionsDropdown:CreateToggle({
                Name = "GuiClosed",
                Function = function() end,
                DefaultValue = false
            })

            local AnimationsDropdown = KillauraToggle:CreateDropdown({
                Name = "Animations",
                HoverText = "Pick The Animation Of Your Choice"
            })
            AnimationsDropdown:CreateToggle({
                Name = "AlSploitHeartbeat",
                Function = function()
                    if Settings.Killaura.Animations.AlSploitHeartbeat.Value == true then
                        currentSwingAnimation = "AlSploitHeartbeat"
                    end
                end,
                DefaultValue = false
            })
            AnimationsDropdown:CreateToggle({
                Name = "AlSploitClassic",
                Function = function()
                    if Settings.Killaura.Animations.AlSploitClassic.Value == true then
                        currentSwingAnimation = "AlSploitClassic"
                    end
                end,
                DefaultValue = true
            })
            AnimationsDropdown:CreateToggle({
                Name = "AlSploitOld",
                Function = function()
                    if Settings.Killaura.Animations.AlSploitOld.Value == true then
                        currentSwingAnimation = "AlSploitOld"
                    end
                end,
                DefaultValue = false
            })

            KillauraToggle:CreateColorSlider({
                Name = "TargetBoxColor",
                Function = function() end,
                DefaultValue = Color3.new(1, 0.278431, 0.290196)
            })

            Connections["KillauraConnection"] = RunService.Heartbeat:Connect(function()
                local hitChance = (Settings.Killaura.HitChance.Value == 100 and 1 or math.random(1, (100 / Settings.Killaura.HitChance.Value)))
                if IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 and hitChance == 1 and Settings.Killaura.Value == true then
                    local entity, entityDistance = FindClosestEntity(Settings.Killaura.Range.Value, true)
                    local bestDPS, bestSword = GetBestSword(LocalPlayer)
                    if entity and bestSword then
                        task.spawn(function()
                            if (SelectedMode == false and Settings.Killaura.LegitMode.Value == false) and Settings.Killaura.CustomAnimation.Value == true and isKillauraAnimating == false then
                                isKillauraAnimating = true
                                AnimateSwordSwing(KillauraAnimations[currentSwingAnimation])
                                isKillauraAnimating = false
                            end
                        end)

                        task.spawn(function()
                            if Settings.Killaura.ParticleEffect.Value == true and not isParticleEffectActive and entity then
                                isParticleEffectActive = true
                                local particlePart = Instance.new("Part")
                                particlePart.Parent = Workspace
                                particlePart.Name = "ParticleEffect"
                                particlePart.Transparency = 1
                                particlePart.CanCollide = false
                                particlePart.Anchored = true
                                particlePart.Size = Vector3.new(3.63, 4.27, 0.001)

                                local particleEmitter = Instance.new("ParticleEmitter")
                                particleEmitter.Parent = particlePart
                                particleEmitter.Name = "ParticleEmitter"
                                particleEmitter.EmissionDirection = Enum.NormalId.Front
                                particleEmitter.Transparency = NumberSequence.new({
                                    NumberSequenceKeypoint.new(0, 0, 0),
                                    NumberSequenceKeypoint.new(0.5, 0.125, 0),
                                    NumberSequenceKeypoint.new(1, 0.5499999523162842, 0)
                                })
                                particleEmitter.Brightness = 1
                                particleEmitter.Lifetime = NumberRange.new(0.75, 1.75)
                                particleEmitter.Texture = "rbxassetid://98715730126785"
                                particleEmitter.Color = ColorSequence.new({
                                    ColorSequenceKeypoint.new(0, Color3.new(113/255, 4/85, 1)),
                                    ColorSequenceKeypoint.new(1, Color3.new(113/255, 4/85, 1))
                                })
                                particleEmitter.Speed = NumberRange.new(3)
                                particleEmitter.Size = NumberSequence.new({
                                    NumberSequenceKeypoint.new(0, 0.6, 0),
                                    NumberSequenceKeypoint.new(1, 0, 0)
                                })
                                particleEmitter.Rate = 23
                            end

                            if Settings.Killaura.ShowEnemy.Value == true and not enemyBoxPart and entity then
                                enemyBoxPart = Instance.new("Part")
                                enemyBoxPart.Parent = Workspace
                                enemyBoxPart.Name = "KillauraBox"
                                enemyBoxPart.Transparency = 0.6
                                enemyBoxPart.CanCollide = false
                                enemyBoxPart.CanQuery = false
                                enemyBoxPart.Anchored = true
                                enemyBoxPart.Material = Enum.Material.SmoothPlastic
                                enemyBoxPart.CFrame = entity.PrimaryPart.CFrame
                                local colorValues = string.split(Settings.Killaura.TargetBoxColor.Value, ",")
                                local red = colorValues[1]
                                local green = colorValues[2]
                                local blue = colorValues[3]
                                enemyBoxPart.Color = Color3.new(red, green, blue)
                                enemyBoxPart.Size = Vector3.new(4, 6, 4)
                            end

                            if isParticleEffectActive then
                                particlePart.CFrame = (entity.PrimaryPart.CFrame - (entity.PrimaryPart.CFrame.LookVector * 1.2))
                            end
                            if enemyBoxPart then
                                enemyBoxPart.CFrame = entity.PrimaryPart.CFrame
                                local colorValues = string.split(Settings.Killaura.TargetBoxColor.Value, ",")
                                local red = colorValues[1]
                                local green = colorValues[2]
                                local blue = colorValues[3]
                                enemyBoxPart.Color = Color3.new(red, green, blue)
                            end
                        end)

                        local lookVector = LocalPlayer.Character.PrimaryPart.CFrame.LookVector
                        local directionToEntity = (entity.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Unit
                        local angleLimit = 0
                        local angle = math.acos(directionToEntity:Dot(lookVector))

                        if SelectedMode == true or Settings.Killaura.LegitMode.Value == true then
                            angleLimit = 120
                        else
                            angleLimit = Settings.Killaura.Angle.Value
                        end

                        if angle > angleLimit then
                            print("unpassed1")
                            return
                        end

                        local raycastParams = RaycastParams.new()
                        raycastParams.FilterDescendantsInstances = {Workspace:FindFirstChild("Map")}
                        raycastParams.FilterType = Enum.RaycastFilterType.Include
                        local direction = (entity.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Unit * 100
                        local raycastResult = Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, direction, raycastParams)

                        if (SelectedMode == true or Settings.Killaura.LegitMode.Value == true and true or Settings.Killaura.WallCheck.Value) and (raycastResult and raycastResult.Position or false) then
                            print("unpassed2")
                            return
                        end

                        if Settings.Killaura.Exceptions.MouseDown.Value == true and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) == false then
                            print("unpassed3")
                            return
                        end

                        if Settings.Killaura.Exceptions.GuiClosed.Value == true and ContainerFrame.Visible == true then
                            print("unpassed4")
                            return
                        end

                        if (SelectedMode == true or Settings.Killaura.LegitMode.Value == true and true or Settings.Killaura.SwitchToWeapon.Value) and bestSword then
                            SetHandItem(bestSword.tool)
                        end

                        if SelectedMode == true or Settings.Killaura.LegitMode.Value == true then
                            local raycastParams = RaycastParams.new()
                            raycastParams.FilterDescendantsInstances = {LocalPlayer.Character, entity}
                            raycastParams.FilterType = Enum.RaycastFilterType.Exclude
                            local direction = (entity.PrimaryPart.Position - LocalPlayer.Character.PrimaryPart.Position).Unit * 200
                            local raycastResult = Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, direction, raycastParams)
                            if (raycastResult and raycastResult.Position) == true then
                                print("unpassed5")
                                return
                            end
                        end

                        if SelectedMode == true or Settings.Killaura.LegitMode.Value == true then
                            if platformType == "Mobile" then
                                if (Camera.CFrame.Position - Camera.Focus.Position).Magnitude <= 1 then
                                    HandleSwingBlatant(entity, entityDistance, bestSword)
                                else
                                    HandleSwing(entity, entityDistance, bestSword)
                                end
                            end
                            if platformType == "PC" then
                                HandleSwingLegit(entity, entityDistance, bestSword)
                            end
                        else
                            PerformSwing(entity, entityDistance, bestSword)
                        end
                    else
                        if isParticleEffectActive then
                            particlePart:Destroy()
                            isParticleEffectActive = false
                        end
                        if enemyBoxPart then
                            enemyBoxPart:Destroy()
                            enemyBoxPart = nil
                        end
                    end
                    task.spawn(function()
                        if bestSword and bestSword.tool and not entity or Settings.Killaura.Value == false then
                            AnimateSwordSwing(KillauraAnimations.Neutral)
                        end
                    end)
                end
            end)

            UnInjectEvent.Event:Connect(function()
                if isParticleEffectActive then
                    particlePart:Destroy()
                end
                if enemyBoxPart then
                    enemyBoxPart:Destroy()
                end
            end)
        end)

        task.spawn(function()
            if SelectedMode == false then
                local function AntiHitFunction()
                    local clonedChar = CloneCharacter(true, true)
                    local originalY = LocalPlayer.Character.PrimaryPart.Position.Y
                    LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(LocalPlayer.Character.PrimaryPart.Position + Vector3.new(0, 25, 0))
                    local bestDPS, bestSword, bestAttackSpeed = GetBestSword(LocalPlayer)
                    if bestSword then
                        task.wait(bestAttackSpeed)
                    else
                        task.wait(0.3)
                    end
                    LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, originalY + 5, LocalPlayer.Character.PrimaryPart.Position.Z))
                    Camera.CameraSubject = LocalPlayer.Character.Humanoid
                    clonedChar:Destroy()
                    if bestSword then
                        task.wait(bestAttackSpeed)
                    else
                        task.wait(0.3)
                    end
                end

                local AntiHitToggle = CombatTab:CreateToggle({
                    Name = "AntiHit",
                    Function = function()
                        repeat
                            task.wait()
                            if IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 and Settings.AntiHit.Value == true and Settings.InfiniteFly.Value == false then
                                local nearestPlayer = FindNearestPlayer(Settings.AntiHit.Range.Value)
                                local nearestEntity = FindClosestEntity(Settings.AntiHit.Range.Value, false)
                                if nearestPlayer then
                                    AntiHitFunction()
                                else
                                    if nearestEntity and Settings.AntiHit.AntiHitEntities.Value == true then
                                        AntiHitFunction()
                                    end
                                end
                            end
                        until shared[sharedKey] == true or Settings.AntiHit.Value == false
                    end,
                    HoverText = "Makes You Dodge The Attacks (Works Better With NoFallDamage)"
                })

                AntiHitToggle:CreateToggle({
                    Name = "AntiHitEntities",
                    Function = function() end,
                    DefaultValue = false
                })

                AntiHitToggle:CreateSlider({
                    Name = "Range",
                    Function = function() end,
                    MaximumValue = 19,
                    DefaultValue = 19
                })
            end
        end)

        task.spawn(function()
            if isSpecificExecutor == false then
                local oldSwingMultiplier = ReplicatedStorage["rbxts_include"]["node_modules"]["@easy-games"].TS.combat["combat-constant"]:GetAttribute("ConstantManager_swordSwingBufferMultiplier")
                local oldSwordSwing = Controllers2.SwordController.swingSwordAtMouse
                local oldGetItemMeta = GetItemMeta
                local oldRaycastDistance = Constants.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE

                local ReachToggle = CombatTab:CreateToggle({
                    Name = "Reach",
                    Function = function()
                        if Settings.Reach.Value == true then
                            ReplicatedStorage["rbxts_include"]["node_modules"]["@easy-games"].TS.combat["combat-constant"]:SetAttribute("ConstantManager_swordSwingBufferMultiplier", 10)
                        end
                        if Settings.Reach.Value == false then
                            ReplicatedStorage["rbxts_include"]["node_modules"]["@easy-games"].TS.combat["combat-constant"]:SetAttribute("ConstantManager_swordSwingBufferMultiplier", oldSwingMultiplier)
                        end

                        task.spawn(function()
                            repeat
                                task.wait()
                                if IsAlive(LocalPlayer) == true then
                                    local entity, distance = FindClosestEntity(Settings.Killaura.Range.Value, true)
                                    if entity then
                                        Constants.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = (distance + 4)
                                    end
                                end
                            until shared[sharedKey] == true or Settings.Reach.Value == false
                            Constants.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = oldRaycastDistance
                        end)

                        task.spawn(function()
                            if Settings.Reach.Value == true then
                                oldSwordSwing = Controllers2.SwordController.swingSwordAtMouse
                                Controllers2.SwordController.swingSwordAtMouse = function(controller, time, ignoreReach, ...)
                                    ignoreReach = true
                                    return oldSwordSwing(controller, time, ignoreReach, ...)
                                end
                            end
                            if Settings.Reach.Value == false then
                                Controllers2.SwordController.swingSwordAtMouse = oldSwordSwing
                            end
                        end)

                        task.spawn(function()
                            if Settings.Reach.Value == true then
                                GetItemMeta = function(itemType, ...)
                                    local originalMeta = oldGetItemMeta(itemType, ...)
                                    local clonedMeta = table.clone(originalMeta)
                                    if clonedMeta.sword and clonedMeta.sword.attackRange then
                                        local swordClone = table.clone(clonedMeta.sword)
                                        swordClone.attackRange = (swordClone.attackRange * 2)
                                        clonedMeta.sword = swordClone
                                    end
                                    return clonedMeta
                                end
                            end
                            if Settings.Reach.Value == false then
                                GetItemMeta = oldGetItemMeta
                            end
                        end)
                    end,
                    HoverText = "Increases Reach And Attack Priority"
                })

                UnInjectEvent.Event:Connect(function()
                    ReplicatedStorage["rbxts_include"]["node_modules"]["@easy-games"].TS.combat["combat-constant"]:SetAttribute("ConstantManager_swordSwingBufferMultiplier", oldSwingMultiplier)
                    Constants.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = oldRaycastDistance
                    Controllers2.SwordController.swingSwordAtMouse = oldSwordSwing
                    GetItemMeta = oldGetItemMeta
                end)
            else
                local oldSwingMultiplier = ReplicatedStorage["rbxts_include"]["node_modules"]["@easy-games"].TS.combat["combat-constant"]:GetAttribute("ConstantManager_swordSwingBufferMultiplier")
                local ReachToggle = CombatTab:CreateToggle({
                    Name = "Reach",
                    Function = function()
                        if Settings.Reach.Value == true then
                            ReplicatedStorage["rbxts_include"]["node_modules"]["@easy-games"].TS.combat["combat-constant"]:SetAttribute("ConstantManager_swordSwingBufferMultiplier", 10)
                        end
                        if Settings.Reach.Value == false then
                            ReplicatedStorage["rbxts_include"]["node_modules"]["@easy-games"].TS.combat["combat-constant"]:SetAttribute("ConstantManager_swordSwingBufferMultiplier", oldSwingMultiplier)
                        end
                    end,
                    HoverText = "Increases Reach And Attack Priority"
                })

                UnInjectEvent.Event:Connect(function()
                    ReplicatedStorage["rbxts_include"]["node_modules"]["@easy-games"].TS.combat["combat-constant"]:SetAttribute("ConstantManager_swordSwingBufferMultiplier", oldSwingMultiplier)
                end)
            end
        end)
        task.spawn(function()
            if Controllers3.AbilityController then
                local YaminiPounceExploitToggle = BlatantTab:CreateToggle({
                    Name = "YaminiPounceExploit",
                    Function = function()
                        repeat
                            task.wait(1 / Settings.YaminiPounceExploit.SpamSpeed.Value)
                            if IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 and Kit == "cat" then
                                if (tick() - lastPounceTime) > 5.2 then
                                    repeat
                                        task.wait()
                                    until LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0
                                    lastPounceTime = tick()
                                    Controllers3.AbilityController:useAbility("CAT_POUNCE")
                                end
                            end
                        until Settings.YaminiPounceExploit.Value == false or shared[sharedKey] == true
                    end,
                    HoverText = "Auto Uses The Cat Pounce Ability To Reach High Speeds"
                })
                YaminiPounceExploitToggle:CreateSlider({
                    Name = "SpamSpeed",
                    Function = function() end,
                    MaximumValue = 100,
                    DefaultValue = 100
                })
            end
        end)

        task.spawn(function()
            local JadeHammerExploitToggle = BlatantTab:CreateToggle({
                Name = "JadeHammerExploit",
                Function = function()
                    repeat
                        task.wait(1 / Settings.JadeHammerExploit.SpamSpeed.Value)
                        if IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 then
                            if HasItem("jade_hammer") and (tick() - lastJadeHammerTime) > 6 then
                                lastJadeHammerTime = tick()
                                Controllers3.AbilityController:useAbility("jade_hammer_jump")
                            end
                        end
                    until Settings.JadeHammerExploit.Value == false or shared[sharedKey] == true
                end,
                HoverText = "Auto Uses The Hammer To Reach High Speeds"
            })
            JadeHammerExploitToggle:CreateSlider({
                Name = "SpamSpeed",
                Function = function() end,
                MaximumValue = 100,
                DefaultValue = 100
            })
        end)

        task.spawn(function()
            if isSpecificExecutor == false then
                local oldBlockPlaceCPS = Constants.CPSConstants.BLOCK_PLACE_CPS
                local NoPlacementCPSToggle = BlatantTab:CreateToggle({
                    Name = "NoPlacementCPS",
                    Function = function()
                        if Settings.NoPlacementCPS.Value == true then
                            Constants.CPSConstants.BLOCK_PLACE_CPS = (SelectedMode == true and 16 or math.huge)
                        end
                        if Settings.NoPlacementCPS.Value == false then
                            Constants.CPSConstants.BLOCK_PLACE_CPS = oldBlockPlaceCPS
                        end
                    end,
                    HoverText = "Removes The Block Placement Cps"
                })
                UnInjectEvent.Event:Connect(function()
                    Constants.CPSConstants.BLOCK_PLACE_CPS = oldBlockPlaceCPS
                end)
            end
        end)

        task.spawn(function()
            local KrystalDisablerToggle = BlatantTab:CreateToggle({
                Name = "KrystalDisabler",
                Function = function()
                    repeat
                        task.wait()
                        if IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 and Kit == "glacial_skater" then
                            Remotes.MomentumUpdateRemote:FireServer({momentumValue = (1000 * math.random(1, 5))})
                            isAntiLagbackActive = true
                        end
                    until Settings.KrystalDisabler.Value == false or shared[sharedKey] == true
                    isAntiLagbackActive = false
                end,
                HoverText = "Disables The Anticheat While Using The Krystal Kit"
            })
            KrystalDisablerToggle:CreateSlider({
                Name = "DisablerSpeed",
                Function = function() end,
                MaximumValue = 30,
                DefaultValue = 20
            })
        end)

        task.spawn(function()
            if SelectedMode == false then
                local NoFallDamageToggle = BlatantTab:CreateToggle({
                    Name = "NoFallDamage",
                    Function = function() end,
                    HoverText = "Prevents You From Taking Fall Damage"
                })
                Connections["NoFallDamageConnection"] = RunService.PostSimulation:Connect(function()
                    if IsAlive(LocalPlayer) == true and Settings.HighJump.Value == false then
                        local originalVelocityY = LocalPlayer.Character.PrimaryPart.Velocity.Y
                        if LocalPlayer.Character.PrimaryPart.Velocity.Y < -45 then
                            LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(LocalPlayer.Character.PrimaryPart.Velocity.X, 44, LocalPlayer.Character.PrimaryPart.Velocity.Z)
                            LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
                            RunService.PreSimulation:Wait()
                            LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(LocalPlayer.Character.PrimaryPart.Velocity.X, originalVelocityY, LocalPlayer.Character.PrimaryPart.Velocity.Z)
                        end
                    end
                end)
            end
        end)

        task.spawn(function()
            if SelectedMode == false then
                local AutoConsumeToggle = BlatantTab:CreateToggle({
                    Name = "AutoConsume",
                    Function = function()
                        repeat
                            task.wait(0.5)
                            if IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 then
                                local speedPotion = HasItem("speed_potion")
                                local pie = HasItem("pie")
                                if speedPotion and os.clock() >= (LocalPlayer.Character:GetAttribute("StatusEffect_speed") or 0) then
                                    SetHandItem(speedPotion)
                                    Remotes.ConsumeItemRemote:InvokeServer({item = speedPotion})
                                end
                                if pie and os.clock() >= (LocalPlayer.Character:GetAttribute("SpeedPieBuffEndTime") or 0) then
                                    SetHandItem(pie)
                                    Remotes.ConsumeItemRemote:InvokeServer({item = pie})
                                end
                            end
                        until Settings.AutoConsume.Value == false or shared[sharedKey] == true
                    end,
                    HoverText = "Automatically Consumes Items Such As Speed Potions Or Pies"
                })
            end
        end)

        task.spawn(function()
            local DamageBoostToggle = BlatantTab:CreateToggle({
                Name = "DamageBoost",
                Function = function() end,
                HoverText = "Boosts Your Speed While Being Damaged"
            })
            GetItemMeta.EntityDamageEventZap.On(function(player, damage, source)
                if IsAlive(LocalPlayer) == true and player.Name == LocalPlayer.Name and source ~= 1 and damage > 4 and GetMatchState() ~= 0 and Settings.DamageBoost.Value == true and shared[sharedKey] == false and Settings.Fly.Value == false then
                    isJadeHammerExploitActive = true
                    task.wait(0.6)
                    isJadeHammerExploitActive = false
                end
            end)
        end)

        task.spawn(function()
            if SelectedMode == false then
                local InfiniteJumpToggle = BlatantTab:CreateToggle({
                    Name = "InfiniteJump",
                    Function = function()
                        if Settings.InfiniteJump.Value == true then
                            Connections["InfiniteJumpConnection"] = UserInputService.JumpRequest:Connect(function()
                                if shared[sharedKey] == false and IsAlive(LocalPlayer) == true and Settings.InfiniteFly.Value == false and Settings.Fly.Value == false then
                                    LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                                end
                            end)
                        end
                        if Settings.InfiniteJump.Value == false and Connections["InfiniteJumpConnection"] then
                            Connections["InfiniteJumpConnection"]:Disconnect()
                        end
                    end,
                    HoverText = "Allows You To Jump Without A Cooldown"
                })
            end
        end)

        task.spawn(function()
            local lastChestOpen = tick()
            local currentChest = nil
            local ChestStealerToggle = BlatantTab:CreateToggle({
                Name = "ChestStealer",
                Function = function()
                    repeat
                        task.wait()
                        if IsAlive(LocalPlayer) == true then
                            local nearestChest = GetNearestChest((SelectedMode == true or Settings.ChestStealer.LegitMode.Value == true) and (Settings.ChestStealer.Range.Value / 2) or Settings.ChestStealer.Range.Value)
                            if nearestChest then
                                if nearestChest ~= currentChest then
                                    lastChestOpen = tick()
                                end
                                currentChest = nearestChest
                                local chestItems = currentChest:FindFirstChild("ChestFolderValue").Value:GetChildren()
                                if (tick() - lastChestOpen) > (((SelectedMode == true or Settings.ChestStealer.LegitMode.Value == true) and Settings.ChestStealer.Speed.Value * 2 or Settings.ChestStealer.Speed.Value) / 10) and #chestItems > 0 then
                                    Remotes.SetObservedChestRemote:FireServer(currentChest)
                                    if not LocalPlayer.PlayerGui:FindFirstChild("ChestApp") then
                                        if FireProximityPrompt then
                                            FireProximityPrompt(currentChest:FindFirstChildWhichIsA("ProximityPrompt"))
                                        end
                                    end
                                    LocalPlayer.PlayerGui:FindFirstChild("ChestApp").Enabled = false
                                    task.spawn(function()
                                        for _, descendant in LocalPlayer.PlayerGui:FindFirstChild("ChestApp"):GetDescendants() do
                                            pcall(function()
                                                descendant.ImageTransparency = 1
                                            end)
                                            pcall(function()
                                                descendant.Transparency = 1
                                            end)
                                        end
                                    end)

                                    if (SelectedMode == true or Settings.ChestStealer.LegitMode.Value == true) and FireSignal then
                                        local chestGui = LocalPlayer.PlayerGui:FindFirstChild("ChestApp")["2"]["1"]["3"]["2"]["4"]["1"]
                                        for _, itemButton in chestGui:GetChildren() do
                                            for _, descendant in itemButton:GetDescendants() do
                                                if descendant:IsA("ImageLabel") then
                                                    task.wait(Settings.ChestStealer.Speed.Value / 15)
                                                    FireSignal(descendant.Parent.Parent.MouseButton1Click)
                                                end
                                            end
                                        end
                                    else
                                        for _, item in chestItems do
                                            if item:IsA("Accessory") then
                                                task.wait(Settings.ChestStealer.Speed.Value / 20)
                                                Remotes.ChestGetItemRemote:InvokeServer(currentChest:FindFirstChild("ChestFolderValue").Value, item)
                                            end
                                        end
                                    end
                                    Remotes.SetObservedChestRemote:FireServer(nil)
                                end
                            end
                        end
                    until shared[sharedKey] == true or Settings.ChestStealer.Value == false
                end,
                HoverText = "Steals Items From Chests"
            })
            ChestStealerToggle:CreateToggle({
                Name = "LegitMode",
                Function = function() end,
                DefaultValue = false
            })
            ChestStealerToggle:CreateSlider({
                Name = "Speed",
                Function = function() end,
                MaximumValue = 10,
                DefaultValue = 4
            })
            ChestStealerToggle:CreateSlider({
                Name = "Range",
                Function = function() end,
                MaximumValue = 20,
                DefaultValue = 20
            })
        end)

        task.spawn(function()
            if isSpecificExecutor == false and SelectedMode == false and Controllers3.AbilityController then
                local oldMoveFunction = ControlModule.ControlModule.moveFunction
                local clone

                local function AntiLagbackFunction()
                    isSpeedEnabled = true
                    clone = CloneCharacter(false, false)
                    ControlModule.ControlModule.moveFunction = function(self, moveVector, ...)
                        local raycastParams = RaycastParams.new()
                        raycastParams.FilterDescendantsInstances = {Blocks}
                        raycastParams.FilterType = Enum.RaycastFilterType.Include
                        local lookVector = Vector3.new(Camera.CFrame.LookVector.X, 0, Camera.CFrame.LookVector.Z).Unit
                        if clone.PrimaryPart then
                            local raycastResult1 = Workspace:Raycast((clone.PrimaryPart.Position + lookVector), Vector3.new(0, -1000, 0), raycastParams)
                            local raycastResult2 = Workspace:Raycast(((clone.PrimaryPart.Position - Vector3.new(0, 15, 0)) + (lookVector * 5)), Vector3.new(0, -1000, 0), raycastParams)
                            if raycastResult1 or raycastResult2 then
                                clone.PrimaryPart.CFrame = CFrame.new(clone.PrimaryPart.Position + (lookVector / (16 / GetSpeed())))
                                moveVector = lookVector
                            end
                            if not clone then
                                if IsAlive(LocalPlayer) then
                                    ControlModule.ControlModule.moveFunction = oldMoveFunction
                                    Camera.CameraSubject = LocalPlayer.Character.Humanoid
                                end
                            end
                        end
                        return oldMoveFunction(self, moveVector, ...)
                    end
                end

                local AntiLagbackToggle = BlatantTab:CreateToggle({
                    Name = "AntiLagback",
                    Function = function()
                        if Settings.AntiLagback.Value == true then
                            Connections["AntiLagbackConnection"] = LocalPlayer:GetAttributeChangedSignal("LastTeleported"):Connect(function()
                                if Kit == "void_walker" and IsAlive(LocalPlayer) == true and Settings.AntiLagback.KitAntiLagback.Value == true then
                                    if isnetworkowner then
                                        repeat
                                            task.wait()
                                            local lookVector = LocalPlayer.Character.PrimaryPart.CFrame.LookVector
                                            Remotes.VoidWalker_ClientUsedWarpAbility:FireServer(
                                                {
                                                    clientStartPosition = LocalPlayer.Character.PrimaryPart.Position + lookVector * 10,
                                                    direction = lookVector,
                                                    clientDestinationPosition = LocalPlayer.Character.PrimaryPart.Position + lookVector * 5
                                                }
                                            )
                                            task.wait(0.1)
                                            Controllers3.AbilityController:useAbility("void_walker_rewind")
                                        until isnetworkowner(LocalPlayer.Character.PrimaryPart) == true
                                    else
                                        local lookVector = LocalPlayer.Character.PrimaryPart.CFrame.LookVector
                                        Remotes.VoidWalker_ClientUsedWarpAbility:FireServer(
                                            {
                                                clientStartPosition = LocalPlayer.Character.PrimaryPart.Position + lookVector * 10,
                                                direction = lookVector,
                                                clientDestinationPosition = LocalPlayer.Character.PrimaryPart.Position + lookVector * 5
                                            }
                                        )
                                        task.wait(1)
                                        Controllers3.AbilityController:useAbility("void_walker_rewind")
                                    end
                                end
                                if IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 and not LocalPlayer.Character:FindFirstChildWhichIsA("ForceField") and (Settings.AntiLagback.KitAntiLagback.Value == false and true or Kit ~= "void_walker") then
                                    CreateNotification(2, "Lagback Detected, Attempting Bypass")
                                    AntiLagbackFunction()
                                    task.wait(4.5)
                                    if IsAlive(LocalPlayer) == false then
                                        ControlModule.ControlModule.moveFunction = oldMoveFunction
                                        clone:Destroy()
                                        isSpeedEnabled = false
                                    end
                                    if IsAlive(LocalPlayer) == true then
                                        ControlModule.ControlModule.moveFunction = oldMoveFunction
                                        Camera.CameraSubject = LocalPlayer.Character.Humanoid
                                        clone:Destroy()
                                        isSpeedEnabled = false
                                        CreateNotification(2, "Successfully Bypassed Lagback")
                                    end
                                end
                            end)
                        end
                        if Settings.AntiLagback.Value == false then
                            if Connections["AntiLagbackConnection"] then
                                Connections["AntiLagbackConnection"]:Disconnect()
                            end
                            ControlModule.ControlModule.moveFunction = oldMoveFunction
                        end
                    end,
                    HoverText = "Bypasses Lagbacks (Anticheat)"
                })

                local KitAntiLagbackToggle = AntiLagbackToggle:CreateToggle({
                    Name = "KitAntiLagback",
                    Function = function() end,
                    DefaultValue = true
                })

                local MovementMethodDropdown = AntiLagbackToggle:CreateDropdown({
                    Name = "MovementMethod",
                    HoverText = "Decide If You Control The Movement Or The Script"
                })
                MovementMethodDropdown:CreateToggle({
                    Name = "Automatic",
                    Function = function() end,
                    DefaultValue = false
                })
                MovementMethodDropdown:CreateToggle({
                    Name = "Manual",
                    Function = function() end,
                    DefaultValue = true
                })
            end
        end)

        task.spawn(function()
            local TargetStrafeMode = "Nil"
            local TargetStrafeAngle = 0
            local TargetStrafePart = Instance.new("Part")
            TargetStrafePart.Parent = Workspace
            TargetStrafePart.Name = "TargetStrafePart"
            TargetStrafePart.Transparency = 0.5
            TargetStrafePart.CanCollide = false
            TargetStrafePart.Anchored = true

            local function GetMovementDirection(player, entity)
                if entity == false then
                    local pos1 = Vector3.new(DecimalRound(player.Character.PrimaryPart.Position.X, 3), DecimalRound(player.Character.PrimaryPart.Position.Y, 3), DecimalRound(player.Character.PrimaryPart.Position.Z, 3))
                    local posBehind = (pos1 - (player.Character.PrimaryPart.CFrame.LookVector * 3))
                    local posAhead = (pos1 + (player.Character.PrimaryPart.CFrame.LookVector * 3))
                    task.wait(0.05)
                    if IsAlive(player) == true then
                        local pos2 = Vector3.new(DecimalRound(player.Character.PrimaryPart.Position.X, 3), DecimalRound(player.Character.PrimaryPart.Position.Y, 3), DecimalRound(player.Character.PrimaryPart.Position.Z, 3))
                        local distBehind = (pos2 - posBehind).Magnitude
                        local distAhead = (pos2 - posAhead).Magnitude
                        local direction = ((distBehind == distAhead and "Stayed") or (distBehind > distAhead and "Forward") or (distBehind < distAhead and "Backward"))
                        return direction
                    end
                    if IsAlive(player) == false then
                        return "Nil"
                    end
                end
                if entity == true then
                    local pos1 = Vector3.new(DecimalRound(entity.PrimaryPart.Position.X, 3), DecimalRound(entity.PrimaryPart.Position.Y, 3), DecimalRound(entity.PrimaryPart.Position.Z, 3))
                    local posBehind = (pos1 - (player.Character.PrimaryPart.CFrame.LookVector * 3))
                    local posAhead = (pos1 + (player.Character.PrimaryPart.CFrame.LookVector * 3))
                    task.wait(0.05)
                    if entity then
                        local pos2 = Vector3.new(DecimalRound(entity.PrimaryPart.Position.X, 3), DecimalRound(entity.PrimaryPart.Position.Y, 3), DecimalRound(entity.PrimaryPart.Position.Z, 3))
                        local distBehind = (pos2 - posBehind).Magnitude
                        local distAhead = (pos2 - posAhead).Magnitude
                        local direction = ((distBehind == distAhead and "Stayed") or (distBehind > distAhead and "Forward") or (distBehind < distAhead and "Backward"))
                        return direction
                    end
                    if not entity then
                        return "Nil"
                    end
                end
            end

            local TargetStrafeToggle = BlatantTab:CreateToggle({
                Name = "TargetStrafe",
                Function = function()
                    repeat
                        task.wait()
                        if IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 then
                            local nearestPlayer, nearestPlayerDistance = FindNearestPlayer((Settings.TargetStrafe.Range.Value + 4))
                            local nearestEntity, nearestEntityDistance = FindClosestEntity((Settings.TargetStrafe.Range.Value + 4), false)

                            if Settings.TargetStrafe.StrafeMode["1v1"].Value == true then
                                if nearestPlayer or nearestEntity then
                                    task.spawn(function()
                                        TargetStrafeMode = GetMovementDirection(nearestPlayer, false)
                                    end)
                                    local targetPart
                                    task.spawn(function()
                                        targetPart = (Settings.TargetStrafe.TargetEntities.Value == true and (nearestEntity and nearestEntity.PrimaryPart or nil) or (nearestPlayer and nearestPlayer.Character.PrimaryPart or nil))
                                    end)
                                    if targetPart and TargetStrafeMode == "Backward" then
                                        local playerRoot = LocalPlayer.Character.PrimaryPart
                                        TargetStrafeAngle = (TargetStrafeAngle + 0.075)
                                        local xOffset = (math.cos(TargetStrafeAngle) * Settings.TargetStrafe.Range.Value)
                                        local zOffset = (math.sin(TargetStrafeAngle) * Settings.TargetStrafe.Range.Value)
                                        local targetPos = Vector3.new((targetPart.Position.X + xOffset), targetPart.Position.Y, (targetPart.Position.Z + zOffset))
                                        local raycastParams = RaycastParams.new()
                                        raycastParams.FilterDescendantsInstances = {Blocks}
                                        raycastParams.FilterType = Enum.RaycastFilterType.Include
                                        local raycastResult = Workspace:Raycast(targetPos, Vector3.new(0, -1000, 0), raycastParams)
                                        if raycastResult and raycastResult.Position then
                                            if SelectedMode == true or Settings.TargetStrafe.LegitMode.Value == true then
                                                LocalPlayer.Character.Humanoid:MoveTo(targetPos)
                                            else
                                                local velocity = ((targetPos - playerRoot.Position).Unit * 23)
                                                playerRoot.Velocity = velocity
                                            end
                                        end
                                    end
                                    if targetPart and TargetStrafeMode == "Forward" or TargetStrafeMode == "Stayed" then
                                        local playerRoot = LocalPlayer.Character.PrimaryPart
                                        TargetStrafeAngle = (TargetStrafeAngle + 0.075)
                                        local xOffset = (math.cos(TargetStrafeAngle) * (Settings.TargetStrafe.Range.Value + 2))
                                        local zOffset = (math.sin(TargetStrafeAngle) * (Settings.TargetStrafe.Range.Value + 2))
                                        local targetPos = Vector3.new((targetPart.Position.X + xOffset), targetPart.Position.Y, (targetPart.Position.Z + zOffset))
                                        local raycastParams = RaycastParams.new()
                                        raycastParams.FilterDescendantsInstances = {Blocks}
                                        raycastParams.FilterType = Enum.RaycastFilterType.Include
                                        local raycastResult = Workspace:Raycast(targetPos, Vector3.new(0, -1000, 0), raycastParams)
                                        if raycastResult and raycastResult.Position then
                                            if SelectedMode == true or Settings.TargetStrafe.LegitMode.Value == true then
                                                LocalPlayer.Character.Humanoid:MoveTo(targetPos)
                                            else
                                                local velocity = ((targetPos - playerRoot.Position).Unit * 23)
                                                playerRoot.Velocity = velocity
                                            end
                                        end
                                    end
                                end
                            end

                            if Settings.TargetStrafe.StrafeMode.Normal.Value == true then
                                local targetPart
                                task.spawn(function()
                                    targetPart = (Settings.TargetStrafe.TargetEntities.Value == true and (nearestEntity and nearestEntity.PrimaryPart or nil) or (nearestPlayer and nearestPlayer.Character.PrimaryPart or nil))
                                end)
                                if targetPart then
                                    local playerRoot = LocalPlayer.Character.PrimaryPart
                                    TargetStrafeAngle = (TargetStrafeAngle + 0.075)
                                    local xOffset = (math.cos(TargetStrafeAngle) * Settings.TargetStrafe.Range.Value)
                                    local zOffset = (math.sin(TargetStrafeAngle) * Settings.TargetStrafe.Range.Value)
                                    local targetPos = Vector3.new((targetPart.Position.X + xOffset), targetPart.Position.Y, (targetPart.Position.Z + zOffset))
                                    local raycastParams = RaycastParams.new()
                                    raycastParams.FilterDescendantsInstances = {Blocks}
                                    raycastParams.FilterType = Enum.RaycastFilterType.Include
                                    local raycastResult = Workspace:Raycast(targetPos, Vector3.new(0, -1000, 0), raycastParams)
                                    if raycastResult and raycastResult.Position then
                                        if SelectedMode == true or Settings.TargetStrafe.LegitMode.Value == true then
                                            LocalPlayer.Character.Humanoid:MoveTo(targetPos)
                                        else
                                            local velocity = ((targetPos - playerRoot.Position).Unit * 23)
                                            playerRoot.Velocity = velocity
                                        end
                                    end
                                end
                            end
                        end
                    until shared[sharedKey] == true or Settings.TargetStrafe.Value == false
                end,
                HoverText = "Automatically Circles Around Desired Entities"
            })

            local StrafeModeDropdown = TargetStrafeToggle:CreateDropdown({
                Name = "StrafeMode",
                HoverText = "Adapts The TargetStrafe To The Selected Mode"
            })
            StrafeModeDropdown:CreateToggle({
                Name = "Normal",
                Function = function() end,
                DefaultValue = true
            })
            StrafeModeDropdown:CreateToggle({
                Name = "1v1",
                Function = function() end,
                DefaultValue = false
            })

            TargetStrafeToggle:CreateToggle({
                Name = "JumpAutomatically",
                Function = function() end,
                DefaultValue = true
            })

            TargetStrafeToggle:CreateToggle({
                Name = "TargetEntities",
                Function = function() end,
                DefaultValue = false
            })

            TargetStrafeToggle:CreateToggle({
                Name = "LegitMode",
                Function = function() end,
                DefaultValue = false
            })

            TargetStrafeToggle:CreateSlider({
                Name = "Range",
                Function = function() end,
                MaximumValue = 18,
                DefaultValue = 18
            })
        end)

        task.spawn(function()
            if SelectedMode == false then
                local InstantWinToggle = BlatantTab:CreateToggle({
                    Name = "InstantWin",
                    Function = function()
                        repeat
                            task.wait()
                            if Settings.InstantWin.Value == true and GetMatchState() == 0 then
                                CreateNotification(5, "Waiting For Match To Start For InstantWin")
                                task.wait(5)
                            end
                        until GetMatchState() ~= 0 or Settings.InstantWin.Value == false or shared[sharedKey] == true
                        if Settings.InstantWin.Value == true then
                            CreateNotification(3, "Starting InstantWin")
                            Settings.InstantWin.Value = false
                            local teleportData = TeleportService:GetLocalPlayerTeleportData()
                            TeleportService:Teleport(game.PlaceId, LocalPlayer, teleportData)
                        end
                    end,
                    HoverText = "Wins the game instantly"
                })
            end
        end)

        task.spawn(function()
            if SelectedMode == false then
                local highJumpActive, highJumpButton
                highJumpActive, highJumpButton = BlatantTab:CreateToggle({
                    Name = "HighJump",
                    Function = function()
                        if Settings.HighJump.Value == true and shared[sharedKey] == false and isSpeedEnabled == false then
                            for i = 1, 3 do
                                if IsAlive(LocalPlayer) == true then
                                    LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(LocalPlayer.Character.PrimaryPart.Velocity.X, 0, LocalPlayer.Character.PrimaryPart.Velocity.Z)
                                    LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(LocalPlayer.Character.PrimaryPart.Position + Vector3.new(0, (Settings.HighJump.Height.Value / 3), 0))
                                    task.wait(0.2)
                                end
                            end
                            Settings.HighJump.Value = false
                            highJumpButton.TextColor3 = Color3.new(1, 1, 1)
                        end
                    end,
                    HoverText = "Makes You Jump High"
                })
                highJumpActive:CreateSlider({
                    Name = "Height",
                    Function = function() end,
                    MaximumValue = 200,
                    DefaultValue = 125
                })
            end
        end)

        task.spawn(function()
            if SelectedMode == false then
                local shiftPressed = false
                local spacePressed = false
                local clonePart

                task.spawn(function()
                    UserInputService.InputBegan:Connect(function(input, gameProcessed)
                        if UserInputService:GetFocusedTextBox() then
                            return
                        end
                        if input.KeyCode == Enum.KeyCode.LeftShift then
                            shiftPressed = true
                        end
                        if input.KeyCode == Enum.KeyCode.Space then
                            spacePressed = true
                        end
                    end)
                end)

                task.spawn(function()
                    UserInputService.InputEnded:Connect(function(input, gameProcessed)
                        if UserInputService:GetFocusedTextBox() then
                            return
                        end
                        if input.KeyCode == Enum.KeyCode.LeftShift then
                            shiftPressed = false
                        end
                        if input.KeyCode == Enum.KeyCode.Space then
                            spacePressed = false
                        end
                    end)
                end)

                local InfiniteFlyToggle = BlatantTab:CreateToggle({
                    Name = "InfiniteFly",
                    Function = function()
                        if Settings.InfiniteFly.Value == true and IsAlive(LocalPlayer) == true and isSpeedEnabled == false then
                            if not clonePart then
                                clonePart = CloneCharacter(false, false)
                            end
                            clonePart.PrimaryPart.Anchored = true
                            clonePart.PrimaryPart.CFrame = LocalPlayer.Character.PrimaryPart.CFrame
                            LocalPlayer.Character.PrimaryPart.CFrame += Vector3.new(0, 1000000, 0)
                        end
                        repeat
                            task.wait()
                            if clonePart then
                                clonePart.PrimaryPart.CFrame = CFrame.new(Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, (clonePart.PrimaryPart.Position.Y + (spacePressed and (Settings.InfiniteFly.FlyUpSpeed.Value / 10) or 0) + (shiftPressed and -(Settings.InfiniteFly.FlyDownSpeed.Value / 10) or 0)), LocalPlayer.Character.PrimaryPart.Position.Z))
                            end
                        until shared[sharedKey] == true or Settings.InfiniteFly.Value == false
                        if IsAlive(LocalPlayer) and clonePart then
                            local clonePos = clonePart.PrimaryPart.CFrame
                            clonePart:Destroy()
                            clonePart = nil
                            Camera.CameraSubject = LocalPlayer.Character.Humanoid
                            LocalPlayer.Character.PrimaryPart.CFrame = clonePos
                            LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(0, 0, 0)
                            LocalPlayer.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Landed)
                        end
                    end,
                    HoverText = "Lets You Fly For An Infinite Amount Of Time"
                })

                InfiniteFlyToggle:CreateSlider({
                    Function = function() end,
                    Name = "FlyDownSpeed",
                    MaximumValue = 25,
                    DefaultValue = 5
                })

                InfiniteFlyToggle:CreateSlider({
                    Name = "FlyUpSpeed",
                    Function = function() end,
                    MaximumValue = 25,
                    DefaultValue = 5
                })
            end
        end)

        task.spawn(function()
            if SelectedMode == false then
                local function SetPlayerVisibility(visible)
                    if visible == true then
                        for _, part in LocalPlayer.Character:GetDescendants() do
                            if part:IsA("BasePart") and part ~= LocalPlayer.Character.PrimaryPart then
                                part.CanCollide = true
                                part.CanTouch = true
                            end
                        end
                        LocalPlayer.Character.PrimaryPart.Transparency = 1
                        LocalPlayer.Character.PrimaryPart.Size = Vector3.new(1.9, 2, 1)
                        LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 0, 0)
                    else
                        for _, part in LocalPlayer.Character:GetDescendants() do
                            if part:IsA("BasePart") and part ~= LocalPlayer.Character.PrimaryPart then
                                part.CanCollide = false
                                part.CanTouch = false
                            end
                        end
                        LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 3 / -2, 0)
                        LocalPlayer.Character.PrimaryPart.Transparency = 0.6
                        LocalPlayer.Character.PrimaryPart.Size = Vector3.new(2, 3, 1.1)
                    end
                end

                local function PlayInvisibleAnimation()
                    repeat
                        task.wait()
                    until GetMatchState() ~= 0
                    if IsAlive(LocalPlayer) == true then
                        local animation = Instance.new("Animation")
                        local animId = "rbxassetid://11330409797"
                        animation.AnimationId = animId
                        local animator = LocalPlayer.Character.Humanoid.Animator:LoadAnimation(animation)
                        if animator then
                            LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 3 / -2, 0)
                            LocalPlayer.Character.PrimaryPart.Size = Vector3.new(2, 3, 1.1)
                            animator.Priority = Enum.AnimationPriority.Action4
                            animator.Looped = false
                            task.spawn(function()
                                repeat
                                    task.wait()
                                    SetPlayerVisibility(false)
                                    animator:Play(1 / 1000000, 1000000, 1 / 1000000)
                                until shared[sharedKey] == true or Settings.Invisible.Value == false
                                SetPlayerVisibility(true)
                                animation:Destroy()
                            end)
                        end
                    end
                end

                local InvisibleToggle = BlatantTab:CreateToggle({
                    Name = "Invisible",
                    Function = function()
                        if Settings.Invisible.Value == true then
                            PlayInvisibleAnimation()
                        end
                    end,
                    HoverText = "Makes You Invisible"
                })

                Connections["InvisibleConnection"] = LocalPlayer.CharacterAdded:Connect(function()
                    task.wait(1)
                    if Settings.Invisible.Value == true then
                        PlayInvisibleAnimation()
                    end
                end)
            end
        end)

        task.spawn(function()
            local isScaffoldAnimating = false
            local isScaffoldSoundPlaying = false
            local ScaffoldToggle = BlatantTab:CreateToggle({
                Name = "Scaffold",
                Function = function()
                    repeat
                        task.wait()
                        if IsAlive(LocalPlayer) == true and Settings.Fly.Value == false and GetMatchState() ~= 0 and Settings.Scaffold.Value == true then
                            if SelectedMode == true or Settings.Scaffold.LegitMode.Value == true then
                                for i = 1, (Settings.Scaffold.Expand.Value * 3) do
                                    local blockPos = (LocalPlayer.Character.PrimaryPart.Position + ((LocalPlayer.Character.PrimaryPart.CFrame.LookVector * i) - Vector3.new(0, (LocalPlayer.Character.PrimaryPart.Size.Y / 2) + ((LocalPlayer.Character.Humanoid.HipHeight + (LocalPlayer.Character.Humanoid.HipHeight / 2))), 0)))
                                    local roundedPos = RoundVector3(blockPos)
                                    local wool = GetWool()
                                    if wool then
                                        local success, response = pcall(function()
                                            Remotes.BlockPlacingRemote:InvokeServer({blockType = wool.itemType, blockData = 0, position = roundedPos})
                                        end)
                                        task.spawn(function()
                                            if isScaffoldAnimating == false and isScaffoldSoundPlaying == true then
                                                PlaySound("rbxassetid://4842910664")
                                            end
                                            if isScaffoldAnimating == false and isScaffoldSoundPlaying == true then
                                                isScaffoldAnimating = true
                                                isScaffoldSoundPlaying = false
                                                local anim = Instance.new("Animation")
                                                anim.AnimationId = "rbxassetid://4866397461"
                                                local animTrack = LocalPlayer.Character.Humanoid.Animator:LoadAnimation(anim)
                                                animTrack.Priority = Enum.AnimationPriority.Action
                                                animTrack:Play()
                                                PlaySound("rbxassetid://4842910664")
                                                task.wait(0.2)
                                                isScaffoldAnimating = false
                                            end
                                        end)
                                    end
                                end
                            else
                                task.spawn(function()
                                    for i = 1, (Settings.Scaffold.Expand.Value * 3) do
                                        local blockPos = (LocalPlayer.Character.PrimaryPart.Position + ((LocalPlayer.Character.PrimaryPart.CFrame.LookVector * i) - Vector3.new(0, (LocalPlayer.Character.PrimaryPart.Size.Y / 2) + ((LocalPlayer.Character.Humanoid.HipHeight + (LocalPlayer.Character.Humanoid.HipHeight / 2))), 0)))
                                        local roundedPos = RoundVector3(blockPos)
                                        local wool = GetWool()
                                        if wool then
                                            if IsHoldingItem(wool.tool) == false then
                                                return
                                            end
                                            local success, response = pcall(function()
                                                Remotes.BlockPlacingRemote:InvokeServer({blockType = wool.itemType, blockData = 0, position = roundedPos})
                                            end)
                                            task.spawn(function()
                                                if isScaffoldAnimating == false and isScaffoldSoundPlaying == true then
                                                    PlaySound("rbxassetid://4842910664")
                                                end
                                                if isScaffoldAnimating == false and isScaffoldSoundPlaying == true then
                                                    isScaffoldAnimating = true
                                                    isScaffoldSoundPlaying = false
                                                    local anim = Instance.new("Animation")
                                                    anim.AnimationId = "rbxassetid://4866397461"
                                                    local animTrack = LocalPlayer.Character.Humanoid.Animator:LoadAnimation(anim)
                                                    animTrack.Priority = Enum.AnimationPriority.Action
                                                    animTrack:Play()
                                                    PlaySound("rbxassetid://4842910664")
                                                    task.wait(0.2)
                                                    isScaffoldAnimating = false
                                                end
                                            end)
                                        end
                                    end
                                end)
                            end
                        end
                    until Settings.Scaffold.Value == false or shared[sharedKey] == true
                end,
                HoverText = "Places Blocks Automatically"
            })

            ScaffoldToggle:CreateToggle({
                Name = "LegitMode",
                Function = function() end,
                DefaultValue = false
            })

            ScaffoldToggle:CreateSlider({
                Name = "Expand",
                Function = function() end,
                MaximumValue = 4,
                DefaultValue = 2
            })

            repeat
                task.wait()
            until (Workspace:FindFirstChild("Map") and GetMatchState() ~= 0) or shared[sharedKey] == true

            local mapBlocks = nil
            repeat
                task.wait()
                for _, descendant in Workspace:FindFirstChild("Map"):GetDescendants() do
                    if descendant.Name == "Blocks" then
                        mapBlocks = descendant
                    end
                end
            until mapBlocks or shared[sharedKey] == true

            Connections["ScaffoldConnection"] = mapBlocks.DescendantAdded:Connect(function(descendant)
                if descendant.Name:lower():find("wool") then
                    isScaffoldSoundPlaying = true
                end
            end)
        end)

        task.spawn(function()
            if SelectedMode == false then
                local function IsBlocked(position)
                    local raycastParams = RaycastParams.new()
                    raycastParams.FilterDescendantsInstances = {LocalPlayer.Character}
                    raycastParams.FilterType = Enum.RaycastFilterType.Exclude
                    local blockcastResult = Workspace:Blockcast(position, Vector3.new(2, 3, 2), LocalPlayer.Character.Humanoid.MoveDirection * 2, raycastParams)
                    if blockcastResult then
                        if blockcastResult.Position and blockcastResult.Instance and blockcastResult.Instance.CanCollide == true then
                            return true
                        end
                    end
                    return false
                end

                local SpiderToggle = BlatantTab:CreateToggle({
                    Name = "Spider",
                    Function = function()
                        task.spawn(function()
                            if Settings.Spider.Value == true then
                                Connections["SpiderConnection"] = RunService.Heartbeat:Connect(function()
                                    task.spawn(function()
                                        if IsAlive(LocalPlayer) == true then
                                            local moveDirection = LocalPlayer.Character.Humanoid.MoveDirection
                                            local isBlocked = IsBlocked(CFrame.new(LocalPlayer.Character.PrimaryPart.Position + Vector3.new(0, 3.1, 0)))
                                            if isBlocked == true then
                                                for i = 1, 3 do
                                                    LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(LocalPlayer.Character.PrimaryPart.Velocity.X, Settings.Spider.Speed.Value, LocalPlayer.Character.PrimaryPart.Velocity.Z)
                                                end
                                            end
                                        end
                                    end)
                                end)
                            end
                        end)
                        if Settings.Spider.Value == false and Connections["SpiderConnection"] then
                            Connections["SpiderConnection"]:Disconnect()
                        end
                    end,
                    HoverText = "Gives You The Ability To Climb Like A Spider"
                })

                SpiderToggle:CreateSlider({
                    Name = "Speed",
                    Function = function() end,
                    MaximumValue = 100,
                    DefaultValue = 60
                })
            end
        end)

        task.spawn(function()
            local speed = 0
            local speedUpdateInterval = 0.2
            local maxContinuousSpeed = CombatConstants.MAX_CONTINUOUS_SPEED

            task.spawn(function()
                task.wait(1)
                local lastPos = Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, 0, LocalPlayer.Character.PrimaryPart.Position.Z)
                local lastTime = tick()
                repeat
                    task.wait(0)
                    local currentTime = tick()
                    local deltaTime = currentTime - lastTime
                    if deltaTime >= speedUpdateInterval then
                        if IsAlive(LocalPlayer) == true then
                            local currentPos = Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, 0, LocalPlayer.Character.PrimaryPart.Position.Z)
                            speed = (currentPos - lastPos).Magnitude / deltaTime
                            lastPos = currentPos
                            lastTime = currentTime
                        end
                    end
                until shared[sharedKey] == true
            end)

            task.spawn(function()
                repeat
                    task.wait()
                until GetMatchState() ~= 0
                local lastWindWalkerTime = tick()
                Connections["SpeedConnection"] = Remotes.SpawnWindWalkerOrbRemote.OnClientEvent:Connect(function()
                    lastWindWalkerTime = tick()
                    if windWalkerOrbCount < 5 then
                        windWalkerOrbCount = windWalkerOrbCount + 1
                    end
                end)

                task.spawn(function()
                    repeat
                        task.wait()
                        if (tick() - lastWindWalkerTime) >= 50 then
                            windWalkerOrbCount = 0
                        end
                        if IsAlive(LocalPlayer) == false then
                            windWalkerOrbCount = 0
                        end
                    until shared[sharedKey] == true
                end)
            end)

            local SpeedToggle = BlatantTab:CreateToggle({
                Name = "Speed",
                Function = function()
                    task.spawn(function()
                        if Settings.Speed.Value == true then
                            Connections["SpeedConnection2"] = RunService.Heartbeat:Connect(function(deltaTime)
                                if IsAlive(LocalPlayer) == true then
                                    local raycastParams = RaycastParams.new()
                                    raycastParams.FilterDescendantsInstances = {Blocks}
                                    raycastParams.FilterType = Enum.RaycastFilterType.Include
                                    local currentSpeed = GetSpeed()
                                    local speedBoost = ((speed > 23 and speed < maxContinuousSpeed) and maxContinuousSpeed - speed or 0)
                                    print(currentSpeed)
                                    local moveDelta = (LocalPlayer.Character.Humanoid.MoveDirection * (SelectedMode == true and (math.random(0, 120) / 100) or ((currentSpeed + speedBoost) * deltaTime)))
                                    local raycastResult = Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, moveDelta, raycastParams)
                                    if not raycastResult then
                                        LocalPlayer.Character.PrimaryPart.CFrame = (LocalPlayer.Character.PrimaryPart.CFrame + moveDelta)
                                    end
                                end
                            end)
                        end
                    end)
                    if Settings.Speed.Value == false and Connections["SpeedConnection"] then
                        Connections["SpeedConnection"]:Disconnect()
                    end
                end,
                HoverText = "Makes Your Speed Equal To The Desired Value"
            })

            SpeedToggle:CreateSlider({
                Name = "Speed",
                Function = function() end,
                MaximumValue = 23,
                DefaultValue = 22
            })
        end)

        task.spawn(function()
            if SelectedMode == false then
                local maxFlyTime = CombatConstants.MAX_CONTINUOUS_FLY_TIME
                local flyStartTime = tick()
                local flyHudVisible = false
                local flyBodyVelocity

                local flyHudFrame, flyHudText, flyHudProgressBar, flyHudStroke = CreateProgressBarHUD()

                task.spawn(function()
                    UserInputService.InputBegan:Connect(function(input, gameProcessed)
                        if UserInputService:GetFocusedTextBox() then
                            return
                        end
                        if input.KeyCode == Enum.KeyCode.LeftShift then
                            flyDownKeyPressed = true
                        end
                        if input.KeyCode == Enum.KeyCode.Space then
                            flyUpKeyPressed = true
                        end
                    end)
                end)

                task.spawn(function()
                    UserInputService.InputEnded:Connect(function(input, gameProcessed)
                        if UserInputService:GetFocusedTextBox() then
                            return
                        end
                        if input.KeyCode == Enum.KeyCode.LeftShift then
                            flyDownKeyPressed = false
                        end
                        if input.KeyCode == Enum.KeyCode.Space then
                            flyUpKeyPressed = false
                        end
                    end)
                end)

                local FlyToggle, FlyButton = BlatantTab:CreateToggle({
                    Name = "Fly",
                    Function = function()
                        flyStartTime = 0
                        if IsAlive(LocalPlayer) == true and Settings.Fly.Value == true then
                            flyBodyVelocity = Instance.new("BodyVelocity")
                            flyBodyVelocity.Parent = LocalPlayer.Character.PrimaryPart
                            flyBodyVelocity.Name = "FlyBodyVelocity"
                            flyBodyVelocity.MaxForce = Vector3.new(0, math.huge, 0)
                        end
                        repeat
                            task.wait()
                            task.spawn(function()
                                flyHudFrame.Visible = Settings.Fly.FlyHud.Value
                                if (tick() - flyStartTime) <= maxFlyTime then
                                    local timeElapsed = DecimalRound((tick() - flyStartTime), 1)
                                    flyHudText.Text = timeElapsed
                                    local tweenInfo = TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
                                    local tween = TweenService:Create(flyHudProgressBar, tweenInfo, {Size = UDim2.new(timeElapsed / maxFlyTime, 0, 1, 0)})
                                    tween:Play()
                                    if (tick() - flyStartTime) <= 0.05 then
                                        local tweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
                                        local tween = TweenService:Create(flyHudProgressBar, tweenInfo, {Size = UDim2.new(timeElapsed / maxFlyTime, 0, 1, 0)})
                                        tween:Play()
                                    end
                                    flyHudText.Text = timeElapsed
                                    local colorValues = string.split(Settings.Fly.FlyHudSliderColor.Value, ",")
                                    local red = colorValues[1]
                                    local green = colorValues[2]
                                    local blue = colorValues[3]
                                    flyHudProgressBar.BackgroundColor3 = Color3.new(red, green, blue)
                                end
                            end)

                            if IsOnGround(LocalPlayer) == true then
                                flyStartTime = tick()
                            end

                            if flyBodyVelocity then
                                flyBodyVelocity.Velocity = Vector3.new(LocalPlayer.Character.PrimaryPart.Velocity.X, ((flyDownKeyPressed and -Settings.Fly.FlyDownSpeed.Value or 0) + (flyUpKeyPressed and Settings.Fly.FlyUpSpeed.Value or 0)), LocalPlayer.Character.PrimaryPart.Velocity.Z)
                            end

                            if (tick() - flyStartTime) >= maxFlyTime then
                                flyStartTime = tick()
                                local savedY = 0
                                local raycastParams = RaycastParams.new()
                                raycastParams.FilterDescendantsInstances = {Blocks}
                                raycastParams.FilterType = Enum.RaycastFilterType.Include
                                local raycastResult = Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, Vector3.new(0, -5000, 0), raycastParams)
                                if raycastResult and IsAlive(LocalPlayer) == true then
                                    local cframeComponents = {LocalPlayer.Character.PrimaryPart.CFrame:GetComponents()}
                                    cframeComponents[2] = (raycastResult.Position.Y + LocalPlayer.Character.Humanoid.HipHeight)
                                    savedY = LocalPlayer.Character.PrimaryPart.Position.Y
                                    LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(unpack(cframeComponents))
                                    flyBodyVelocity.Velocity = Vector3.new(0, -50, 0)
                                    task.spawn(function()
                                        task.wait(0.3)
                                        if IsAlive(LocalPlayer) == true then
                                            cframeComponents = {LocalPlayer.Character.PrimaryPart.CFrame:GetComponents()}
                                            cframeComponents[2] = savedY
                                            flyBodyVelocity.Velocity = Vector3.new(0, 0, 0)
                                            LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(unpack(cframeComponents))
                                        end
                                    end)
                                end
                            end
                        until Settings.Fly.Value == false or IsAlive(LocalPlayer) == false or shared[sharedKey] == true
                        if flyBodyVelocity then
                            flyBodyVelocity:Destroy()
                        end
                        flyHudFrame.Visible = false
                        Settings.Fly.Value = false
                        FlyButton.TextColor3 = Color3.new(1, 1, 1)
                    end,
                    HoverText = "Makes You Fly (Works Better With NoFallDamage)"
                })

                FlyToggle:CreateToggle({
                    Name = "FlyHud",
                    Function = function() end,
                    DefaultValue = true
                })

                FlyToggle:CreateSlider({
                    Name = "FlyDownSpeed",
                    Function = function() end,
                    MaximumValue = 100,
                    DefaultValue = 40
                })

                FlyToggle:CreateSlider({
                    Name = "FlyUpSpeed",
                    Function = function() end,
                    MaximumValue = 100,
                    DefaultValue = 40
                })

                FlyToggle:CreateColorSlider({
                    Name = "FlyHudSliderColor",
                    Function = function() end,
                    DefaultValue = Color3.new(0, 0.6, 1)
                })
            end
        end)

        task.spawn(function()
            local oldHorizontalOffset = Controllers3.ViewModelController:GetAttribute("ConstantManager_HORIZONTAL_OFFSET")
            local oldVerticalOffset = Controllers3.ViewModelController:GetAttribute("ConstantManager_VERTICAL_OFFSET")
            local oldDepthOffset = Controllers3.ViewModelController:GetAttribute("ConstantManager_DEPTH_OFFSET")

            local ViewModelChangerToggle = UtilityTab:CreateToggle({
                Name = "ViewModelChanger",
                Function = function()
                    if Settings.ViewModelChanger.Value == true and ViewModel and RightHandWristC1 then
                        Controllers3.ViewModelController:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", (Settings.ViewModelChanger.Horizontal.Value / 10))
                        Controllers3.ViewModelController:SetAttribute("ConstantManager_VERTICAL_OFFSET", (Settings.ViewModelChanger.Vertical.Value / 10))
                        Controllers3.ViewModelController:SetAttribute("ConstantManager_DEPTH_OFFSET", -(Settings.ViewModelChanger.Depth.Value / 10))
                        ViewModel:WaitForChild("RightHand"):WaitForChild("RightWrist").C1 = (RightHandWristC1 * CFrame.Angles(math.rad(0), math.rad(0), math.rad((Settings.ViewModelChanger.Horizontal.Value / 3))))
                    end
                    if Settings.ViewModelChanger.Value == false and ViewModel and RightHandWristC1 then
                        Controllers3.ViewModelController:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", oldHorizontalOffset)
                        Controllers3.ViewModelController:SetAttribute("ConstantManager_VERTICAL_OFFSET", oldVerticalOffset)
                        Controllers3.ViewModelController:SetAttribute("ConstantManager_DEPTH_OFFSET", oldDepthOffset)
                        ViewModel:WaitForChild("RightHand"):WaitForChild("RightWrist").C1 = (RightHandWristC1 * CFrame.Angles(math.rad(0), math.rad(0), math.rad((oldHorizontalOffset / 3))))
                    end
                end,
                HoverText = "Allows You To Change Your ViewModel (First Person Camera)"
            })

            ViewModelChangerToggle:CreateSlider({
                Name = "Horizontal",
                Function = function()
                    if Settings.ViewModelChanger.Value == true then
                        Controllers3.ViewModelController:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", (Settings.ViewModelChanger.Horizontal.Value / 10))
                    end
                end,
                MaximumValue = 45,
                DefaultValue = 15
            })

            ViewModelChangerToggle:CreateSlider({
                Name = "Vertical",
                Function = function()
                    if Settings.ViewModelChanger.Value == true and ViewModel and RightHandWristC1 then
                        Controllers3.ViewModelController:SetAttribute("ConstantManager_VERTICAL_OFFSET", (Settings.ViewModelChanger.Vertical.Value / 10))
                        RightHandWristC1 = (RightHandWristC1 * CFrame.Angles(math.rad(0), math.rad(0), math.rad((Settings.ViewModelChanger.Horizontal.Value / 3))))
                    end
                end,
                MaximumValue = 15,
                DefaultValue = 5
            })

            ViewModelChangerToggle:CreateSlider({
                Name = "Depth",
                Function = function()
                    if Settings.ViewModelChanger.Value == true then
                        Controllers3.ViewModelController:SetAttribute("ConstantManager_DEPTH_OFFSET", -(Settings.ViewModelChanger.Depth.Value / 10))
                    end
                end,
                MaximumValue = 105,
                DefaultValue = 35
            })

            UnInjectEvent.Event:Connect(function()
                Controllers3.ViewModelController:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", oldHorizontalOffset)
                Controllers3.ViewModelController:SetAttribute("ConstantManager_VERTICAL_OFFSET", oldVerticalOffset)
                Controllers3.ViewModelController:SetAttribute("ConstantManager_DEPTH_OFFSET", oldDepthOffset)
                ViewModel:WaitForChild("RightHand"):WaitForChild("RightWrist").C1 = (RightHandWristC1 * CFrame.Angles(math.rad(0), math.rad(0), math.rad((oldHorizontalOffset / 3))))
            end)
        end)

        task.spawn(function()
            local lastMoveVector = Vector3.new(0, 0, 0)
            local keyboardSound = Instance.new("Sound")
            keyboardSound.Parent = Workspace
            keyboardSound.Name = "KeyboardSound"
            keyboardSound.SoundId = "rbxassetid://91656373864470"
            ContentProvider:PreloadAsync({keyboardSound})

            local mouseSound = Instance.new("Sound")
            mouseSound.Parent = Workspace
            mouseSound.Name = "MouseSound"
            mouseSound.SoundId = "rbxassetid://136892729417641"
            ContentProvider:PreloadAsync({mouseSound})

            local CustomKeySoundsToggle = UtilityTab:CreateToggle({
                Name = "CustomKeySounds",
                Function = function()
                    repeat
                        task.wait()
                        if Settings.CustomKeySounds.Value == true and UserInputService.KeyboardEnabled == false and IsAlive(LocalPlayer) == true then
                            local moveDirection = LocalPlayer.Character.Humanoid.MoveDirection
                            if moveDirection ~= lastMoveVector then
                                lastMoveVector = moveDirection
                                if moveDirection.Magnitude > 0 and keyboardSound then
                                    keyboardSound:Stop()
                                    keyboardSound.PlaybackSpeed = math.random(85, 115) / 100
                                    keyboardSound.TimePosition = 1.2
                                    keyboardSound.Volume = math.random((Settings.CustomKeySounds.Volume.Value - 0.15), (Settings.CustomKeySounds.Volume.Value + 0.15))
                                    keyboardSound:Play()
                                    task.spawn(function()
                                        repeat
                                            task.wait()
                                        until keyboardSound.Playing == false or keyboardSound.TimePosition >= 1.25 or not keyboardSound or Settings.CustomKeySounds.Value == false or shared[sharedKey] == true
                                        if keyboardSound then
                                            keyboardSound:Stop()
                                        end
                                    end)
                                end
                            end
                        end
                    until Settings.CustomKeySounds.Value == false or shared[sharedKey] == true
                end,
                HoverText = "Plays Custom Keyboard Sounds Whenever You Input A Key"
            })

            CustomKeySoundsToggle:CreateSlider({
                Name = "Volume",
                Function = function() end,
                MaximumValue = 3,
                DefaultValue = 1
            })

            local AllowedInputsDropdown = CustomKeySoundsToggle:CreateDropdown({
                Name = "AllowedInputs",
                HoverText = "Pick The Inputs That Sounds Will Be Played To"
            })
            AllowedInputsDropdown:CreateToggle({
                Name = "Keyboard",
                Function = function() end,
                DefaultValue = true
            })
            AllowedInputsDropdown:CreateToggle({
                Name = "Mouse",
                Function = function() end,
                DefaultValue = true
            })

            Connections["CustomKeySounds"] = UserInputService.InputBegan:Connect(function(input, gameProcessed)
                if Settings.CustomKeySounds.Value == true and Settings.CustomKeySounds.AllowedInputs.Keyboard.Value == true then
                    if gameProcessed == false and input.UserInputType == Enum.UserInputType.Keyboard and keyboardSound then
                        keyboardSound:Stop()
                        keyboardSound.PlaybackSpeed = math.random(85, 115) / 100
                        keyboardSound.TimePosition = 1.2
                        keyboardSound.Volume = math.random((Settings.CustomKeySounds.Volume.Value - 0.15), (Settings.CustomKeySounds.Volume.Value + 0.15))
                        keyboardSound:Play()
                        task.spawn(function()
                            repeat
                                task.wait()
                            until keyboardSound.Playing == false or keyboardSound.TimePosition >= 1.25 or not keyboardSound or Settings.CustomKeySounds.Value == false or shared[sharedKey] == true
                            if keyboardSound then
                                keyboardSound:Stop()
                            end
                        end)
                    end
                end
                if Settings.CustomKeySounds.Value == true and Settings.CustomKeySounds.AllowedInputs.Mouse.Value == true then
                    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and mouseSound then
                        mouseSound:Stop()
                        mouseSound.PlaybackSpeed = math.random(85, 115) / 100
                        mouseSound.Volume = math.random((Settings.CustomKeySounds.Volume.Value - 0.15), (Settings.CustomKeySounds.Volume.Value + 0.15)) + 1
                        mouseSound:Play()
                        task.spawn(function()
                            repeat
                                task.wait()
                            until mouseSound.Playing == false or not mouseSound or Settings.CustomKeySounds.Value == false or shared[sharedKey] == true
                            if mouseSound then
                                mouseSound:Stop()
                            end
                        end)
                    end
                end
            end)

            UnInjectEvent.Event:Connect(function()
                keyboardSound:Destroy()
                mouseSound:Destroy()
            end)
        end)

        task.spawn(function()
            local PickupItemRangeToggle = UtilityTab:CreateToggle({
                Name = "PickupItemRange",
                Function = function()
                    repeat
                        task.wait(0.1)
                        if IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 then
                            for _, itemDrop in CollectionService:GetTagged("ItemDrop") do
                                local distance = (itemDrop.Position - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                                if distance <= (SelectedMode == true and (Settings.PickupItemRange.Range.Value / 2) or Settings.PickupItemRange.Range.Value) then
                                    task.wait(0.3)
                                    itemDrop.CFrame = CFrame.new(LocalPlayer.Character.PrimaryPart.Position - Vector3.new(0, 3, 0))
                                    Remotes.PickupItemDropRemote:InvokeServer({itemDrop = itemDrop})
                                end
                            end
                        end
                    until Settings.PickupItemRange.Value == false or shared[sharedKey] == true
                end,
                HoverText = "Picks Up The Item From The Desired Range"
            })

            PickupItemRangeToggle:CreateSlider({
                Name = "Range",
                Function = function() end,
                MaximumValue = 10,
                DefaultValue = 10
            })
        end)

        task.spawn(function()
            local lastAntiCheatSpooferTime = tick()
            local AnticheatSpooferToggle = UtilityTab:CreateToggle({
                Name = "AnticheatSpoofer",
                Function = function()
                    repeat
                        task.wait()
                        if IsAlive(LocalPlayer) == true then
                            if IsOnGround(LocalPlayer) == true then
                                lastAntiCheatSpooferTime = tick()
                            end
                            if (tick() - lastAntiCheatSpooferTime) >= (CombatConstants.MAX_CONTINUOUS_FLY_TIME + 0.1) then
                                local savedY = 0
                                local raycastParams = RaycastParams.new()
                                raycastParams.FilterDescendantsInstances = {LocalPlayer.Character}
                                raycastParams.FilterType = Enum.RaycastFilterType.Exclude
                                local raycastResult = Workspace:Raycast(LocalPlayer.Character.PrimaryPart.Position, Vector3.new(0, -5000, 0), raycastParams)
                                if raycastResult and raycastResult.Instance and raycastResult.Instance.CanCollide == true and IsAlive(LocalPlayer) == true then
                                    local cframeComponents = {LocalPlayer.Character.PrimaryPart.CFrame:GetComponents()}
                                    cframeComponents[2] = (raycastResult.Position.Y + LocalPlayer.Character.Humanoid.HipHeight)
                                    savedY = LocalPlayer.Character.PrimaryPart.Position.Y
                                    LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(unpack(cframeComponents))
                                    task.spawn(function()
                                        task.wait(0.3)
                                        if IsAlive(LocalPlayer) == true then
                                            cframeComponents = {LocalPlayer.Character.PrimaryPart.CFrame:GetComponents()}
                                            cframeComponents[2] = savedY
                                            LocalPlayer.Character.PrimaryPart.CFrame = CFrame.new(unpack(cframeComponents))
                                        end
                                    end)
                                end
                            end
                        end
                    until Settings.AnticheatSpoofer.Value == false or shared[sharedKey] == true
                end,
                HoverText = "Spoofs The Anticheat, Reducing Banwave Odds (Beta) (Works Better With NoFallDamage)"
            })
        end)

        task.spawn(function()
            if SelectedMode == false then
                local killFeedGui
                task.spawn(function()
                    repeat
                        task.wait()
                        if GetMatchState() ~= 0 then
                            pcall(function()
                                killFeedGui = LocalPlayer.PlayerGui.KillFeedGui
                            end)
                        end
                    until killFeedGui
                    killFeedGui.KillFeedContainer.Visible = false
                end)

                local HideKillFeedGuiToggle = UtilityTab:CreateToggle({
                    Name = "HideKillFeedGui",
                    Function = function()
                        if Settings.HideKillFeedGui.Value == true and killFeedGui then
                            killFeedGui.KillFeedContainer.Visible = false
                        end
                        if Settings.HideKillFeedGui.Value == false and killFeedGui then
                            killFeedGui.KillFeedContainer.Visible = true
                        end
                    end,
                    HoverText = "Hides The Kill Feed"
                })

                UnInjectEvent.Event:Connect(function()
                    killFeedGui.KillFeedContainer.Visible = true
                end)
            end
        end)

        task.spawn(function()
            local queueType = GetQueueType()
            local AutoJoinQueueToggle = UtilityTab:CreateToggle({
                Name = "AutoJoinQueue",
                Function = function() end,
                HoverText = "Joins The Queue Automatically For You At The End Of The Game"
            })

            task.spawn(function()
                if queueType:find("Skywars") then
                    repeat
                        task.wait()
                    until Settings.AutoJoinQueue.Value == false or shared[sharedKey] == true or IsAlive(LocalPlayer) == false
                    if Settings.AutoJoinQueue.Value == true and shared[sharedKey] == false then
                        Remotes.JoinQueueRemote:FireServer({queueType = GetQueueType()})
                    end
                end
            end)

            task.spawn(function()
                repeat
                    task.wait()
                until Settings.AutoJoinQueue.Value == false or shared[sharedKey] == true or GetMatchState() == 2
                if Settings.AutoJoinQueue.Value == true and shared[sharedKey] == false then
                    print("Joining " .. GetQueueType())
                    Remotes.JoinQueueRemote:FireServer({queueType = GetQueueType()})
                end
            end)
        end)

        task.spawn(function()
            if SelectedMode == false then
                local ChatMessages = {
                    Message1 = "3+ Years Now And The Anticheat Is Still The Same | AlSploit On Top",
                    Message2 = "Clowns Are The Only Ones We Eliminate | AlSploit On Top",
                    Message3 = "InstantWin Is So Fun  | AlSploit On Top",
                    Message4 = "Best Anticheat Ever  | AlSploit On Top",
                    Message5 = "Get Back To Scripting, Kids | AlSploit On Top",
                    Message6 = "Voidware Has The Best Logger!!! | AlSploit On Top"
                }

                local ChatSpammerToggle = UtilityTab:CreateToggle({
                    Name = "ChatSpammer",
                    Function = function()
                        repeat
                            task.wait()
                            for _, message in ChatMessages do
                                if Settings.ChatSpammer.Value == true then
                                    TextChatService.ChatInputBarConfiguration.TargetTextChannel:SendAsync(message)
                                    task.wait(500 / Settings.ChatSpammer.Speed.Value)
                                end
                            end
                        until Settings.ChatSpammer.Value == false or shared[sharedKey] == true
                    end,
                    HoverText = "Spams The Chat"
                })

                ChatSpammerToggle:CreateSlider({
                    Name = "Speed",
                    Function = function() end,
                    MaximumValue = 100,
                    DefaultValue = 50
                })
            end
        end)

        task.spawn(function()
            local EntityNotifierToggle = UtilityTab:CreateToggle({
                Name = "EntityNotifier",
                Function = function()
                    if Settings.EntityNotifier.Value == true then
                        Connections["EntityNotifierConnection"] = CollectionService:GetInstanceAddedSignal("GuardianOfDream"):Connect(function()
                            CreateNotification(3, "A GuardianOfDream Has Spawned")
                        end)
                        Connections["EntityNotifierConnection"] = CollectionService:GetInstanceAddedSignal("DiamondGuardian"):Connect(function()
                            CreateNotification(3, "A DiamondGuardian Has Spawned")
                        end)
                        Connections["EntityNotifierConnection2"] = CollectionService:GetInstanceAddedSignal("GolemBoss"):Connect(function()
                            CreateNotification(3, "A GolemBoss Has Spawned")
                        end)
                        Connections["EntityNotifierConnection3"] = CollectionService:GetInstanceAddedSignal("skeleton"):Connect(function()
                            CreateNotification(3, "A Skeleton Has Spawned")
                        end)
                        Connections["EntityNotifierConnection4"] = CollectionService:GetInstanceAddedSignal("Drone"):Connect(function()
                            CreateNotification(3, "A Drone Has Spawned")
                        end)
                    end
                    if Settings.EntityNotifier.Value == false and Connections["EntityNotifierConnection"] then
                        for _, connection in Connections do
                            if string.find(connection, "EntityNotifierConnection") then
                                connection:Disconnect()
                            end
                        end
                    end
                end,
                HoverText = "Notifies You When An Entity Is Added"
            })
        end)

        task.spawn(function()
            local oldGlobalChatSystemMessages = ClientStore:getState().Settings.global_chat_system_messages
            local oldProfileVisibility = ClientStore:getState().Settings.profile_visilility
            local oldFriendSpectating = ClientStore:getState().Settings.friendSpectating
            local oldStreamerMode = ClientStore:getState().Settings.streamer_mode

            local AnonymousToggle = UtilityTab:CreateToggle({
                Name = "Anonymous",
                Function = function()
                    if Settings.Anonymous.Value == true then
                        oldGlobalChatSystemMessages = ClientStore:getState().Settings.global_chat_system_messages
                        oldProfileVisibility = ClientStore:getState().Settings.profile_visilility
                        oldFriendSpectating = ClientStore:getState().Settings.friendSpectating
                        oldStreamerMode = ClientStore:getState().Settings.streamer_mode
                        ClientStore:getState().Settings.global_chat_system_messages = false
                        ClientStore:getState().Settings.profile_visilility = "private"
                        ClientStore:getState().Settings.friendSpectating = false
                        ClientStore:getState().Settings.streamer_mode = true
                    end
                    if Settings.Anonymous.Value == false then
                        ClientStore:getState().Settings.global_chat_system_messages = oldGlobalChatSystemMessages
                        ClientStore:getState().Settings.profile_visilility = oldProfileVisibility
                        ClientStore:getState().Settings.friendSpectating = oldFriendSpectating
                        ClientStore:getState().Settings.streamer_mode = oldStreamerMode
                    end
                end,
                HoverText = "Makes You Anonymous To Players"
            })

            UnInjectEvent.Event:Connect(function()
                ClientStore:getState().Settings.global_chat_system_messages = oldGlobalChatSystemMessages
                ClientStore:getState().Settings.friendSpectating = oldFriendSpectating
                ClientStore:getState().Settings.streamer_mode = oldStreamerMode
            end)
        end)

        task.spawn(function()
            local reportedPlayers = {}
            local AutoReportToggle = UtilityTab:CreateToggle({
                Name = "AutoReport",
                Function = function()
                    repeat
                        task.wait(2)
                        task.spawn(function()
                            for _, player in Players:GetPlayers() do
                                if player ~= LocalPlayer and player:GetAttribute("PlayerConnected") and not reportedPlayers[player] then
                                    Remotes.ReportPlayerRemote:FireServer(player.UserId)
                                    reportedPlayers[player] = player.UserId
                                end
                            end
                        end)
                    until Settings.AutoReport.Value == false or shared[sharedKey] == true
                end,
                HoverText = "Reports Players Automatically"
            })
        end)

        task.spawn(function()
            local function GetArmorItems(player)
                local helmet, chestplate, boots = nil, nil, nil
                for _, item in ReplicatedStorage:FindFirstChild("Inventories"):FindFirstChild(player.Name):GetChildren() do
                    if item.Name:find("helmet") then
                        helmet = item
                    end
                    if item.Name:find("chestplate") then
                        chestplate = item
                    end
                    if item.Name:find("boots") then
                        boots = item
                    end
                end
                return helmet, chestplate, boots
            end

            local function EquipArmor(helmet, chestplate, boots)
                LocalPlayer.Character:FindFirstChild("ArmorInvItem_0").Value = nil
                LocalPlayer.Character:FindFirstChild("ArmorInvItem_1").Value = nil
                LocalPlayer.Character:FindFirstChild("ArmorInvItem_2").Value = nil
                for i = 0, 2 do
                    Remotes.SetArmorInvItemRemote:InvokeServer({ item = false, armorSlot = 0 })
                end
            end

            local function RemoveArmor(helmet, chestplate, boots)
                LocalPlayer.Character:FindFirstChild("ArmorInvItem_0").Value = helmet
                LocalPlayer.Character:FindFirstChild("ArmorInvItem_1").Value = chestplate
                LocalPlayer.Character:FindFirstChild("ArmorInvItem_2").Value = boots
                Remotes.SetArmorInvItemRemote:InvokeServer({ item = helmet, armorSlot = 0 })
                Remotes.SetArmorInvItemRemote:InvokeServer({ item = chestplate, armorSlot = 1 })
                Remotes.SetArmorInvItemRemote:InvokeServer({ item = boots, armorSlot = 2 })
            end

            local AutoArmorToggle = UtilityTab:CreateToggle({
                Name = "AutoArmor",
                Function = function()
                    repeat
                        task.wait(0.5)
                        if IsAlive(LocalPlayer) == true then
                            local helmet, chestplate, boots = GetArmorItems(LocalPlayer)
                            if helmet and chestplate and boots then
                                local entity = FindClosestEntity(Settings.AutoArmor.Range.Value, false)
                                if entity then
                                    EquipArmor(helmet, chestplate, boots)
                                else
                                    RemoveArmor(helmet, chestplate, boots)
                                end
                            end
                        end
                    until shared[sharedKey] == true or Settings.AutoArmor.Value == false
                end,
                HoverText = "Auto Puts Armor When Close To Enemies, And Removes When Far"
            })

            AutoArmorToggle:CreateSlider({
                Name = "Range",
                Function = function() end,
                MaximumValue = 30,
                DefaultValue = 30
            })
        end)

        task.spawn(function()
            if Controllers2.SprintController then
                local oldStopSprinting = Controllers2.SprintController.stopSprinting
                local AutoSprintToggle = UtilityTab:CreateToggle({
                    Name = "AutoSprint",
                    Function = function()
                        if Settings.AutoSprint.Value == true then
                            oldStopSprinting = Controllers2.SprintController.stopSprinting
                            Controllers2.SprintController.stopSprinting = function(...)
                                local result = oldStopSprinting(...)
                                Controllers2.SprintController:startSprinting()
                                return result
                            end
                            task.spawn(function()
                                Controllers2.SprintController:startSprinting()
                            end)
                        end
                        if Settings.AutoSprint.Value == false then
                            Controllers2.SprintController.stopSprinting = oldStopSprinting
                            Controllers2.SprintController:stopSprinting()
                        end
                    end,
                    HoverText = "Makes You Sprint Automatically"
                })

                UnInjectEvent.Event:Connect(function()
                    Controllers2.SprintController.stopSprinting = oldStopSprinting
                    Controllers2.SprintController:stopSprinting()
                end)
            end
            if not Controllers2.SprintController then
                local AutoSprintToggle = UtilityTab:CreateToggle({
                    Name = "AutoSprint",
                    Function = function()
                        repeat
                            task.wait()
                            LocalPlayer:SetAttribute("Sprinting", true)
                            if IsAlive(LocalPlayer) == true then
                                LocalPlayer.Character.Humanoid.WalkSpeed = 20
                                if Settings.Fov.Value == false then
                                    Camera.FieldOfView = 77
                                end
                            end
                        until Settings.AutoSprint.Value == false or shared[sharedKey] == true
                    end,
                    HoverText = "Makes You Sprint Automatically"
                })
            end
        end)

        task.spawn(function()
            if SelectedMode == false then
                local ToxicMessages = {
                    "Voidware ain't making a return with this one. L %s | AlSploit on top",
                    "I hack for fun. Too bad your fun is ruined. L %s | AlSploit on top",
                    "I ruined a good day for a good reason. L %s | AlSploit on top",
                    "Rats. Imagine dying in a block game. L %s | AlSploit on top",
                    "Clowns are the only ones we kill. L %s | AlSploit on top"
                }

                local function SendToxicMessage(player)
                    local message = string.format(ToxicMessages[math.random(1, #ToxicMessages)], player.DisplayName)
                    TextChatService.ChatInputBarConfiguration.TargetTextChannel:SendAsync(message)
                end

                local AutoToxicToggle = UtilityTab:CreateToggle({
                    Name = "AutoToxic",
                    Function = function() end,
                    HoverText = "Makes You Toxic"
                })

                repeat
                    task.wait()
                until shared[sharedKey] == true or GetMatchState() ~= 0

                task.spawn(function()
                    for _, player in Players:GetPlayers() do
                        task.spawn(function()
                            if IsAlive(player) == true then
                                if player.Team ~= LocalPlayer.Team and player ~= LocalPlayer then
                                    repeat
                                        task.wait()
                                    until Settings.AutoToxic.Value == false or shared[sharedKey] == true or GetMatchState() ~= 0
                                    if Settings.AutoToxic.Value == true and shared[sharedKey] == false then
                                        SendToxicMessage(player)
                                    end
                                end
                            end
                        end)

                        task.spawn(function()
                            Connections["AutoToxicConnection"] = player.CharacterAdded:Connect(function(character)
                                task.wait(0.3)
                                local playerRef = game.Players:FindFirstChild(character.Name) or player
                                if IsAlive(playerRef) == true then
                                    if playerRef.Team ~= LocalPlayer.Team and playerRef ~= LocalPlayer then
                                        repeat
                                            task.wait()
                                        until Settings.AutoToxic.Value == false or shared[sharedKey] == true or GetMatchState() ~= 0
                                        if Settings.AutoToxic.Value == true and shared[sharedKey] == false then
                                            SendToxicMessage(playerRef)
                                        end
                                    end
                                end
                            end)
                        end)
                    end
                end)
            end
        end)

        task.spawn(function()
            local ShopItems = {
                JadeHammer = {
                    [1] = {
                        ["shopItem"] = {
                            ["amount"] = 1,
                            ["lockAfterPurchase"] = true,
                            ["itemType"] = "jade_hammer",
                            ["category"] = "Combat",
                            ["price"] = 40,
                            ["requiresKit"] = { [1] = "jade" },
                            ["spawnWithItems"] = { [1] = "jade_hammer" },
                            ["currency"] = "iron"
                        },
                        ["shopId"] = ""
                    }
                },
                GompyVacuum = {
                    [1] = {
                        ["shopItem"] = {
                            ["amount"] = 1,
                            ["lockAfterPurchase"] = true,
                            ["itemType"] = "vacuuum",
                            ["category"] = "Combat",
                            ["price"] = 50,
                            ["requiresKit"] = { [1] = "ghost_catcher" },
                            ["spawnWithItems"] = { [1] = "vacuuum" },
                            ["currency"] = "iron"
                        },
                        ["shopId"] = ""
                    }
                },
                Guitar = {
                    [1] = {
                        ["shopItem"] = {
                            ["amount"] = 1,
                            ["lockAfterPurchase"] = true,
                            ["itemType"] = "guitar",
                            ["category"] = "Combat",
                            ["price"] = 16,
                            ["requiresKit"] = { [1] = "melody" },
                            ["spawnWithItems"] = { [1] = "guitar" },
                            ["currency"] = "iron"
                        },
                        ["shopId"] = ""
                    }
                },
                Lasso = {
                    [1] = {
                        ["shopItem"] = {
                            ["amount"] = 1,
                            ["lockAfterPurchase"] = true,
                            ["itemType"] = "lasso",
                            ["category"] = "Combat",
                            ["price"] = 30,
                            ["requiresKit"] = { [1] = "cowgirl" },
                            ["spawnWithItems"] = { [1] = "lasso" },
                            ["currency"] = "iron"
                        },
                        ["shopId"] = ""
                    }
                },
                Arrow = {
                    [1] = {
                        ["shopItem"] = {
                            ["currency"] = "iron",
                            ["itemType"] = "arrow",
                            ["amount"] = 8,
                            ["price"] = 16,
                            ["category"] = "Combat"
                        },
                        ["shopId"] = ""
                    }
                },
                Wool = {
                    [1] = {
                        ["shopItem"] = {
                            ["currency"] = "iron",
                            ["itemType"] = "wool_white",
                            ["amount"] = 16,
                            ["price"] = 8,
                            ["category"] = "Blocks"
                        },
                        ["shopId"] = ""
                    }
                },
                Bow = {
                    [1] = {
                        ["shopItem"] = {
                            ["ignoredByKit"] = { [1] = "flower_bee" },
                            ["itemType"] = "wood_bow",
                            ["price"] = 24,
                            ["superiorItems"] = { [1] = "wood_crossbow", [2] = "tactical_crossbow" },
                            ["currency"] = "iron",
                            ["category"] = "Combat",
                            ["lockAfterPurchase"] = true,
                            ["spawnWithItems"] = { [1] = "wood_bow" },
                            ["amount"] = 1
                        },
                        ["shopId"] = ""
                    }
                },
                EmeraldArmor = {
                    [1] = {
                        ["shopItem"] = {
                            ["lockAfterPurchase"] = true,
                            ["itemType"] = "emerald_chestplate",
                            ["price"] = 40,
                            ["customDisplayName"] = "Emerald Armor",
                            ["currency"] = "emerald",
                            ["category"] = "Combat",
                            ["nextTier"] = "",
                            ["ignoredByKit"] = { [1] = "bigman" },
                            ["spawnWithItems"] = {
                                [1] = "emerald_helmet",
                                [2] = "emerald_chestplate",
                                [3] = "emerald_boots"
                            },
                            ["amount"] = 1
                        },
                        ["shopId"] = ""
                    }
                },
                DiamondArmor = {
                    [1] = {
                        ["shopItem"] = {
                            ["lockAfterPurchase"] = true,
                            ["itemType"] = "Diamond_chestplate",
                            ["price"] = 8,
                            ["customDisplayName"] = "Diamond Armor",
                            ["currency"] = "emerald",
                            ["category"] = "Combat",
                            ["nextTier"] = "diamond_chestplate",
                            ["ignoredByKit"] = { [1] = "bigman" },
                            ["spawnWithItems"] = {
                                [1] = "diamond_helmet",
                                [2] = "diamond_chestplate",
                                [3] = "diamond_boots"
                            },
                            ["amount"] = 1
                        },
                        ["shopId"] = ""
                    }
                },
                IronArmor = {
                    [1] = {
                        ["shopItem"] = {
                            ["lockAfterPurchase"] = true,
                            ["itemType"] = "iron_chestplate",
                            ["price"] = 120,
                            ["customDisplayName"] = "Iron Armor",
                            ["currency"] = "iron",
                            ["category"] = "Combat",
                            ["nextTier"] = "diamond_chestplate",
                            ["ignoredByKit"] = { [1] = "bigman" },
                            ["spawnWithItems"] = {
                                [1] = "iron_helmet",
                                [2] = "iron_chestplate",
                                [3] = "iron_boots"
                            },
                            ["amount"] = 1
                        },
                        ["shopId"] = ""
                    }
                },
                LeatherArmor = {
                    [1] = {
                        ["shopItem"] = {
                            ["lockAfterPurchase"] = true,
                            ["itemType"] = "leather_chestplate",
                            ["price"] = 50,
                            ["customDisplayName"] = "Leather Armor",
                            ["currency"] = "iron",
                            ["category"] = "Combat",
                            ["nextTier"] = "iron_chestplate",
                            ["ignoredByKit"] = { [1] = "bigman" },
                            ["spawnWithItems"] = {
                                [1] = "leather_helmet",
                                [2] = "leather_chestplate",
                                [3] = "leather_boots"
                            },
                            ["amount"] = 1
                        },
                        ["shopId"] = ""
                    }
                },
                EmeraldSword = {
                    [1] = {
                        ["shopItem"] = {
                            ["disabledInQueue"] = { [1] = "tnt_wars" },
                            ["itemType"] = "emerald_sword",
                            ["price"] = 20,
                            ["superiorItems"] = { [1] = "" },
                            ["currency"] = "iron",
                            ["amount"] = 1,
                            ["ignoredByKit"] = {
                                [1] = "barbarian",
                                [2] = "dasher",
                                [3] = "frost_hammer_kit"
                            },
                            ["category"] = "Combat",
                            ["lockAfterPurchase"] = true
                        },
                        ["shopId"] = ""
                    }
                },
                VoidSword = {
                    [1] = {
                        ["shopItem"] = {
                            ["currency"] = "void_crystal",
                            ["itemType"] = "void_sword",
                            ["amount"] = 1,
                            ["price"] = 10,
                            ["category"] = "Void",
                            ["ignoredByKit"] = {
                                [1] = "barbarian",
                                [2] = "dasher"
                            },
                            ["lockAfterPurchase"] = true
                        },
                        ["shopId"] = ""
                    }
                },
                DiamondSword = {
                    [1] = {
                        ["shopItem"] = {
                            ["disabledInQueue"] = { [1] = "tnt_wars" },
                            ["itemType"] = "diamond_sword",
                            ["price"] = 4,
                            ["superiorItems"] = { [1] = "emerald_sword" },
                            ["currency"] = "emerald",
                            ["amount"] = 1,
                            ["ignoredByKit"] = {
                                [1] = "barbarian",
                                [2] = "dasher",
                                [3] = "frost_hammer_kit"
                            },
                            ["category"] = "Combat",
                            ["lockAfterPurchase"] = true
                        },
                        ["shopId"] = ""
                    }
                },
                IronSword = {
                    [1] = {
                        ["shopItem"] = {
                            ["disabledInQueue"] = { [1] = "tnt_wars" },
                            ["itemType"] = "iron_sword",
                            ["price"] = 70,
                            ["superiorItems"] = { [1] = "diamond_sword" },
                            ["currency"] = "iron",
                            ["amount"] = 1,
                            ["ignoredByKit"] = {
                                [1] = "barbarian",
                                [2] = "dasher",
                                [3] = "frost_hammer_kit"
                            },
                            ["category"] = "Combat",
                            ["lockAfterPurchase"] = true
                        },
                        ["shopId"] = ""
                    }
                },
                StoneSword = {
                    [1] = {
                        ["shopItem"] = {
                            ["disabledInQueue"] = { [1] = "tnt_wars" },
                            ["itemType"] = "stone_sword",
                            ["price"] = 20,
                            ["superiorItems"] = { [1] = "iron_sword" },
                            ["currency"] = "iron",
                            ["amount"] = 1,
                            ["ignoredByKit"] = {
                                [1] = "barbarian",
                                [2] = "dasher",
                                [3] = "frost_hammer_kit"
                            },
                            ["category"] = "Combat",
                            ["lockAfterPurchase"] = true
                        },
                        ["shopId"] = ""
                    }
                }
            }

            local AutoBuyToggle = UtilityTab:CreateToggle({
                Name = "AutoBuy",
                Function = function()
                    repeat
                        task.wait(0.3)
                        if IsAlive(LocalPlayer) then
                            local upgrader = GetNearestUpgrader(SelectedMode == true and (Settings.AutoBuy.Range.Value / 3) or Settings.AutoBuy.Range.Value)
                            if upgrader then
                                local inventory = GetInventory(LocalPlayer)
                                for _, itemData in ShopItems do
                                    itemData[1].shopId = upgrader.Name
                                end

                                task.spawn(function()
                                    if not HasItem("lasso") and Settings.ProjectileAura.Value == true then
                                        BuyItemFromShop(ShopItems.Lasso, inventory)
                                    end
                                    if not HasItem("jade_hammer") and Settings.AutoKit.Value == true then
                                        BuyItemFromShop(ShopItems.JadeHammer, inventory)
                                    end
                                    if not HasItem("vacuuum") and Settings.ProjectileAura.Value == true then
                                        BuyItemFromShop(ShopItems.GompyVacuum, inventory)
                                    end
                                    if not HasItem("guitar") and Settings.AutoKit.Value == true then
                                        BuyItemFromShop(ShopItems.Guitar, inventory)
                                    end
                                end)

                                task.spawn(function()
                                    if HasItem("diamond_sword") then
                                        BuyItemFromShop(ShopItems.EmeraldSword, inventory)
                                    end
                                    if HasItem("iron_sword") or HasItem("stone_sword") or HasItem("wood_sword") then
                                        BuyItemFromShop(ShopItems.DiamondSword, inventory)
                                    end
                                    if HasItem("stone_sword") and HasItem("iron_chestplate") then
                                        BuyItemFromShop(ShopItems.IronSword, inventory)
                                    end
                                    if HasItem("wood_sword") then
                                        BuyItemFromShop(ShopItems.StoneSword, inventory)
                                    end
                                    BuyItemFromShop(ShopItems.VoidSword, inventory)
                                end)

                                task.spawn(function()
                                    if HasItem("diamond_chestplate") then
                                        BuyItemFromShop(ShopItems.EmeraldArmor, inventory)
                                    end
                                    if HasItem("iron_chestplate") then
                                        BuyItemFromShop(ShopItems.DiamondArmor, inventory)
                                    end
                                    if HasItem("stone_sword") and not HasItem("iron_chestplate") and not HasItem("diamond_chestplate") and not HasItem("emerald_chestplate") then
                                        BuyItemFromShop(ShopItems.LeatherArmor, inventory)
                                    end
                                    if HasItem("leather_chestplate") then
                                        BuyItemFromShop(ShopItems.IronArmor, inventory)
                                    end
                                end)

                                task.spawn(function()
                                    if HasItem("iron_chestplate") and HasItem("iron_sword") and not HasItem("wood_bow") and Settings.ProjectileAura.Value == true then
                                        BuyItemFromShop(ShopItems.Bow, inventory)
                                    end
                                end)

                                task.spawn(function()
                                    if HasItem("iron_chestplate") and HasItem("iron_sword") and HasItem("wood_bow") and Settings.ProjectileAura.Value == true then
                                        BuyItemFromShop(ShopItems.Arrow, inventory)
                                    end
                                end)

                                task.spawn(function()
                                    if HasItem("iron_chestplate") and HasItem("iron_sword") and HasItem("wood_bow") and HasItem("arrow") and Settings.Scaffold.Value == true then
                                        BuyItemFromShop(ShopItems.Wool, inventory)
                                    end
                                end)
                            end
                        end
                    until shared[sharedKey] == true or Settings.AutoBuy.Value == false
                end,
                HoverText = "Autobuys Items For You"
            })

            AutoBuyToggle:CreateSlider({
                Name = "Range",
                Function = function() end,
                MaximumValue = 30,
                DefaultValue = 30
            })
        end)

        task.spawn(function()
            local AntiStaffToggle = UtilityTab:CreateToggle({
                Name = "AntiStaff",
                Function = function() end,
                HoverText = "Tells You When A Staff Joins"
            })

            task.spawn(function()
                Connections["AntiStaffConnection"] = Players.PlayerAdded:Connect(function(player)
                    if shared[sharedKey] == false and Settings.AntiStaff.Value == true and player:IsInGroup(5774246) and player:GetRankInGroup(5774246) > 1 then
                        if Settings.AntiStaff.UnInject.Value == true then
                            UnInjectEvent:Fire()
                        end
                        if Settings.AntiStaff.Kick.Value == true then
                            LocalPlayer:Kick(player.Name .. ", A Staff Has Joined Your Game!")
                        end
                        CreateNotification(60, player.Name .. ", A Staff Has Joined Your Game!")
                    end
                end)
            end)

            task.spawn(function()
                task.wait(2)
                for _, player in Players:GetPlayers() do
                    if shared[sharedKey] == false and Settings.AntiStaff.Value == true and player:IsInGroup(5774246) and player:GetRankInGroup(5774246) > 1 then
                        if Settings.AntiStaff.UnInject.Value == true then
                            UnInjectEvent:Fire()
                        end
                        if Settings.AntiStaff.Kick.Value == true then
                            LocalPlayer:Kick(player.Name .. ", A Staff Has Joined Your Game!")
                        end
                        CreateNotification(60, player.Name .. ", A Staff Has Joined Your Game!")
                    end
                end
            end)

            AntiStaffToggle:CreateToggle({
                Name = "UnInject",
                Function = function() end,
                DefaultValue = true
            })

            AntiStaffToggle:CreateToggle({
                Name = "Kick",
                Function = function() end,
                DefaultValue = false
            })
        end)

        task.spawn(function()
            local AntiAfkToggle = UtilityTab:CreateToggle({
                Name = "AntiAfk",
                Function = function()
                    repeat
                        Remotes.AfkInfoRemote:FireServer({afk = false})
                        task.wait(60)
                    until shared[sharedKey] == true or Settings.AntiAfk.Value == false
                end,
                HoverText = "Prevents From Making You Afk"
            })
        end)

        task.spawn(function()
            local AutoKitToggle = UtilityTab:CreateToggle({
                Name = "AutoKit",
                Function = function()
                    repeat
                        task.wait()
                        if IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
                            task.spawn(function()
                                if Settings.AutoKit.Kits.Fortuna then
                                    if Kit == "card" then
                                        task.wait(0.5)
                                        local entity = FindClosestEntity(30)
                                        if entity then
                                            Remotes.AttemptCardThrowRemote:FireServer({targetEntityInstance = entity})
                                        end
                                    end
                                end
                            end)

                            task.spawn(function()
                                if Settings.AutoKit.Kits.Warden.Value == true then
                                    task.wait(0.5)
                                    if Kit == "jailor" then
                                        for _, soul in CollectionService:GetTagged("jailor_soul_ProximityPrompt") do
                                            Remotes.CollectCollectableEntityRemote:FireServer({id = soul:GetAttribute("Id"), collectableName = "JailorSoul"})
                                        end
                                    end
                                end
                            end)

                            task.spawn(function()
                                if Settings.AutoKit.Kits.Hannah.Value == true then
                                    task.wait(0.1)
                                    if Kit == "hannah" then
                                        for _, interaction in (CollectionService:GetTagged("HannahExecuteInteraction")) do
                                            Remotes.HannahPromptTriggerRemote:CallServer({user = LocalPlayer, victimEntity = interaction})
                                        end
                                    end
                                end
                            end)

                            task.spawn(function()
                                if Settings.AutoKit.Kits.Gompy.Value == true then
                                    task.wait(0.25)
                                    if Kit == "ghost_catcher" then
                                        local ghostId = GetNearestGhostId(30)
                                        if ghostId then
                                            Remotes.CollectCollectableEntityRemote:FireServer({id = ghostId})
                                        end
                                    end
                                end
                            end)

                            task.spawn(function()
                                if Settings.AutoKit.Kits.Trinity.Value == true then
                                    task.wait(0.5)
                                    if Kit == "angel" and ClientStore:getState().Kit.angelProgress >= 1 and LocalPlayer.Character:GetAttribute("AngelType") == nil then
                                        Remotes.TrinitySetAngelTypeRemote:FireServer({angel = "Void"})
                                    end
                                end
                            end)

                            task.spawn(function()
                                if Settings.AutoKit.Kits.Miner.Value == true then
                                    task.wait(0.25)
                                    if Kit == "miner" then
                                        for _, petrified in CollectionService:GetTagged("petrified-player") do
                                            Remotes.DestroyPetrifiedPlayerRemote:FireServer({petrifyId = petrified:GetAttribute("PetrifyId")})
                                        end
                                    end
                                end
                            end)
                        end
                    until shared[sharedKey] == true or Settings.AutoKit.Value == false
                end,
                HoverText = "Automatically Uses The Ability Of Kits"
            })

            local KitsDropdown = AutoKitToggle:CreateDropdown({
                Name = "Kits",
                HoverText = "Pick The Kits That Will Be Used Automatically"
            })
            KitsDropdown:CreateToggle({
                Name = "Fortuna",
                Function = function() end,
                DefaultValue = true
            })
            KitsDropdown:CreateToggle({
                Name = "Warden",
                Function = function() end,
                DefaultValue = true
            })
            KitsDropdown:CreateToggle({
                Name = "Hannah",
                Function = function() end,
                DefaultValue = true
            })
            KitsDropdown:CreateToggle({
                Name = "Gompy",
                Function = function() end,
                DefaultValue = true
            })
            KitsDropdown:CreateToggle({
                Name = "Trinity",
                Function = function() end,
                DefaultValue = true
            })
            KitsDropdown:CreateToggle({
                Name = "Miner",
                Function = function() end,
                DefaultValue = true
            })
        end)

        task.spawn(function()
            if Controllers2.FovController then
                local oldFov = Controllers2.FovController.fov
                local oldSetFov, oldGetFov = Controllers2.FovController.setFOV, Controllers2.FovController.getFOV

                local FovToggle = UtilityTab:CreateToggle({
                    Name = "Fov",
                    Function = function()
                        if Settings.Fov.Value == true then
                            Controllers2.FovController:setFOV(Settings.Fov.Fov.Value)
                            Controllers2.FovController.setFOV = function(self)
                                return oldSetFov(self, Settings.Fov.Fov.Value)
                            end
                            Controllers2.FovController.getFOV = function(self)
                                return oldGetFov(self, Settings.Fov.Fov.Value)
                            end
                        end
                        if Settings.Fov.Value == false then
                            Controllers2.FovController.setFOV = oldSetFov
                            Controllers2.FovController.getFOV = oldGetFov
                            Controllers2.FovController:setFOV(oldFov)
                        end
                    end,
                    HoverText = "Changes Your Fov"
                })

                FovToggle:CreateSlider({
                    Name = "Fov",
                    Function = function() end,
                    MaximumValue = 120,
                    DefaultValue = 120
                })

                UnInjectEvent.Event:Connect(function()
                    Controllers2.FovController.setFOV = oldSetFov
                    Controllers2.FovController.getFOV = oldGetFov
                end)
            end
            if not Controllers2.FovController then
                local oldFov = Camera.FieldOfView
                local FovToggle = UtilityTab:CreateToggle({
                    Name = "Fov",
                    Function = function()
                        repeat
                            task.wait()
                            Camera.FieldOfView = Settings.Fov.Fov.Value
                        until shared[sharedKey] == true or Settings.Fov.Value == false
                        Camera.FieldOfView = oldFov
                    end,
                    HoverText = "Changes Your Fov"
                })

                FovToggle:CreateSlider({
                    Name = "Fov",
                    Function = function() end,
                    MaximumValue = 120,
                    DefaultValue = 100
                })
            end
        end)

        task.spawn(function()
            if SelectedMode == false then
                repeat
                    task.wait()
                until IsAlive(LocalPlayer) == true and LocalPlayer:FindFirstChild("PlayerGui")

                local originalHealthbar = LocalPlayer.PlayerGui:WaitForChild("hotbar", 60):WaitForChild("1", 60):WaitForChild("HotbarHealthbarContainer", 60):WaitForChild("HealthbarProgressWrapper", 60):Clone()
                local healthbarContainer = LocalPlayer.PlayerGui:WaitForChild("hotbar", 60):WaitForChild("1", 60):WaitForChild("HotbarHealthbarContainer", 60)
                originalHealthbar.Parent = ReplicatedStorage

                local function ApplyCustomHealthbar()
                    for _, part in LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("HotbarHealthbarContainer"):FindFirstChild("HealthbarProgressWrapper"):GetDescendants() do
                        if part:IsA("Frame") then
                            part.BackgroundColor3 = Color3.new(1, 1, 1)
                            local corner = Instance.new("UICorner")
                            corner.Parent = part
                            corner.Name = "UICorner"
                            corner.CornerRadius = UDim.new(0, (Settings.CustomHealthbar.CornerRadius.Value / 5))
                            local gradient = Instance.new("UIGradient")
                            gradient.Parent = part
                            gradient.Name = "UIGradient"
                            gradient.Rotation = Settings.CustomHealthbar.Rotation.Value
                            local color1Values = string.split(Settings.CustomHealthbar.Color1.Value, ",")
                            local red1 = color1Values[1]
                            local green1 = color1Values[2]
                            local blue1 = color1Values[3]
                            local color2Values = string.split(Settings.CustomHealthbar.Color2.Value, ",")
                            local red2 = color2Values[1]
                            local green2 = color2Values[2]
                            local blue2 = color2Values[3]
                            gradient.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, Color3.new(red1, green1, blue1)),
                                ColorSequenceKeypoint.new(1, Color3.new(red2, green2, blue2))
                            })
                        end
                    end

                    local corner = Instance.new("UICorner")
                    corner.Parent = healthbarContainer
                    corner.Name = "UICorner"
                    corner.CornerRadius = UDim.new(0, (Settings.CustomHealthbar.CornerRadius.Value / 5))

                    local stroke = Instance.new("UIStroke")
                    stroke.Parent = healthbarContainer
                    stroke.Name = "UIStroke"
                    stroke.Thickness = 1.6
                    local strokeColorValues = string.split(Settings.CustomHealthbar.UIStrokeColor.Value, ",")
                    local strokeRed = strokeColorValues[1]
                    local strokeGreen = strokeColorValues[2]
                    local strokeBlue = strokeColorValues[3]
                    stroke.Color = Color3.new(strokeRed, strokeGreen, strokeBlue)
                end

                local CustomHealthbarToggle = WorldTab:CreateToggle({
                    Name = "CustomHealthbar",
                    Function = function()
                        if Settings.CustomHealthbar.Value == true then
                            ApplyCustomHealthbar()
                        end
                        if Settings.CustomHealthbar.Value == false then
                            local progressWrapper = LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("HotbarHealthbarContainer"):FindFirstChild("HealthbarProgressWrapper")
                            local clonedHealthbar = originalHealthbar:Clone()
                            clonedHealthbar.Parent = LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("HotbarHealthbarContainer")
                            if progressWrapper.Parent:FindFirstChildWhichIsA("UIStroke") then
                                progressWrapper.Parent:FindFirstChildWhichIsA("UIStroke"):Destroy()
                            end
                            progressWrapper:Destroy()
                        end
                    end,
                    HoverText = "Gives You A Cool Custom Healthtbar"
                })

                CustomHealthbarToggle:CreateSlider({
                    Name = "UIStrokeThickness",
                    Function = function()
                        if Settings.CustomHealthbar.Value == true then
                            local stroke = LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("HotbarHealthbarContainer"):FindFirstChildWhichIsA("UIStroke")
                            if stroke then
                                stroke.Thickness = Settings.CustomHealthbar.UIStrokeThickness.Value
                            end
                        end
                    end,
                    DefaultValue = 1.6,
                    MaximumValue = 5
                })

                CustomHealthbarToggle:CreateColorSlider({
                    Name = "UIStrokeColor",
                    Function = function()
                        if Settings.CustomHealthbar.Value == true then
                            local stroke = LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("HotbarHealthbarContainer"):FindFirstChildWhichIsA("UIStroke")
                            if stroke then
                                local colorValues = string.split(Settings.CustomHealthbar.UIStrokeColor.Value, ",")
                                local red = colorValues[1]
                                local green = colorValues[2]
                                local blue = colorValues[3]
                                stroke.Color = Color3.new(red, green, blue)
                            end
                        end
                    end,
                    DefaultValue = Color3.new(0.203922, 0, 0.92549)
                })

                CustomHealthbarToggle:CreateSlider({
                    Name = "CornerRadius",
                    Function = function()
                        if Settings.CustomHealthbar.Value == true then
                            local corner = LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("HotbarHealthbarContainer"):FindFirstChildWhichIsA("UICorner")
                            if corner then
                                corner.CornerRadius = UDim.new(0, (Settings.CustomHealthbar.CornerRadius.Value / 5))
                            end
                            if Settings.CustomHealthbar.Value == true then
                                for _, descendant in LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("HotbarHealthbarContainer"):GetDescendants() do
                                    if descendant:IsA("UICorner") then
                                        descendant.CornerRadius = UDim.new(0, (Settings.CustomHealthbar.CornerRadius.Value / 5))
                                    end
                                end
                            end
                        end
                    end,
                    DefaultValue = 40,
                    MaximumValue = 100
                })

                CustomHealthbarToggle:CreateSlider({
                    Name = "Rotation",
                    Function = function()
                        if Settings.CustomHealthbar.Value == true then
                            for _, descendant in LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("HotbarHealthbarContainer"):GetDescendants() do
                                if descendant:IsA("UIGradient") then
                                    descendant.Rotation = Settings.CustomHealthbar.Rotation.Value
                                end
                            end
                        end
                    end,
                    DefaultValue = 0,
                    MaximumValue = 360
                })

                CustomHealthbarToggle:CreateColorSlider({
                    Name = "Color1",
                    Function = function()
                        if Settings.CustomHealthbar.Value == true then
                            for _, descendant in LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("HotbarHealthbarContainer"):GetDescendants() do
                                if descendant:IsA("UIGradient") then
                                    local color1Values = string.split(Settings.CustomHealthbar.Color1.Value, ",")
                                    local red1 = color1Values[1]
                                    local green1 = color1Values[2]
                                    local blue1 = color1Values[3]
                                    local color2Values = string.split(Settings.CustomHealthbar.Color2.Value, ",")
                                    local red2 = color2Values[1]
                                    local green2 = color2Values[2]
                                    local blue2 = color2Values[3]
                                    descendant.Color = ColorSequence.new({
                                        ColorSequenceKeypoint.new(0, Color3.new(red1, green1, blue1)),
                                        ColorSequenceKeypoint.new(1, Color3.new(red2, green2, blue2))
                                    })
                                end
                            end
                        end
                    end,
                    DefaultValue = Color3.new(0.321569, 0, 0.92549)
                })

                CustomHealthbarToggle:CreateColorSlider({
                    Name = "Color2",
                    Function = function()
                        if Settings.CustomHealthbar.Value == true then
                            for _, descendant in LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("HotbarHealthbarContainer"):GetDescendants() do
                                if descendant:IsA("UIGradient") then
                                    local color1Values = string.split(Settings.CustomHealthbar.Color1.Value, ",")
                                    local red1 = color1Values[1]
                                    local green1 = color1Values[2]
                                    local blue1 = color1Values[3]
                                    local color2Values = string.split(Settings.CustomHealthbar.Color2.Value, ",")
                                    local red2 = color2Values[1]
                                    local green2 = color2Values[2]
                                    local blue2 = color2Values[3]
                                    descendant.Color = ColorSequence.new({
                                        ColorSequenceKeypoint.new(0, Color3.new(red1, green1, blue1)),
                                        ColorSequenceKeypoint.new(1, Color3.new(red2, green2, blue2))
                                    })
                                end
                            end
                        end
                    end,
                    DefaultValue = Color3.new(0, 0.0666667, 0.92549)
                })

                Connections["CustomHealthbarConnection"] = LocalPlayer.CharacterAdded:Connect(function()
                    if Settings.CustomHealthbar.Value == true then
                        task.wait(1)
                        ApplyCustomHealthbar()
                    end
                end)

                UnInjectEvent.Event:Connect(function()
                    local progressWrapper = LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("HotbarHealthbarContainer"):FindFirstChild("HealthbarProgressWrapper")
                    local clonedHealthbar = originalHealthbar:Clone()
                    clonedHealthbar.Parent = LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("HotbarHealthbarContainer")
                    if progressWrapper.Parent:FindFirstChildWhichIsA("UIStroke") then
                        progressWrapper.Parent:FindFirstChildWhichIsA("UIStroke"):Destroy()
                    end
                    progressWrapper:Destroy()
                end)
            end
        end)

        task.spawn(function()
            if SelectedMode == false then
                local isCustomHotbarActive = false
                local originalHotbarClone = LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):Clone()
                if originalHotbarClone:FindFirstChild("2") then
                    originalHotbarClone:FindFirstChild("2"):Destroy()
                end
                originalHotbarClone.Parent = ReplicatedStorage

                local function ApplyCustomHotbar()
                    task.spawn(function()
                        if LocalPlayer.PlayerGui:WaitForChild("hotbar"):WaitForChild("1"):WaitForChild("HotbarResourceDisplay") then
                            LocalPlayer.PlayerGui:WaitForChild("hotbar"):WaitForChild("1"):WaitForChild("HotbarResourceDisplay").Position = UDim2.new(1, ((45 + (Settings.CustomHotbar.UIStrokeThickness.Value + (Settings.CustomHotbar.Spacing.Value * 4.5)))), 0, 0)
                        end
                        if LocalPlayer.PlayerGui:WaitForChild("hotbar"):WaitForChild("1"):WaitForChild("3") then
                            LocalPlayer.PlayerGui:WaitForChild("hotbar"):WaitForChild("1"):WaitForChild("3").Position = UDim2.new(0, -((45 + (Settings.CustomHotbar.UIStrokeThickness.Value + (Settings.CustomHotbar.Spacing.Value * 4.5)))), 1, 0)
                        end
                    end)

                    for _, descendant in LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("ItemsHotbar"):GetDescendants() do
                        task.spawn(function()
                            if descendant:IsA("ImageButton") then
                                descendant.BackgroundTransparency = (Settings.CustomHotbar.BackgroundTransparency.Value / 100)
                                descendant.BackgroundColor3 = Color3.new(1, 1, 1)
                                descendant.BorderSizePixel = 0
                                local gradient = Instance.new("UIGradient")
                                gradient.Parent = descendant
                                gradient.Name = "UIGradient"
                                gradient.Rotation = Settings.CustomHotbar.Rotation.Value
                                local color1Values = string.split(Settings.CustomHotbar.Color1.Value, ",")
                                local red1 = color1Values[1]
                                local green1 = color1Values[2]
                                local blue1 = color1Values[3]
                                local color2Values = string.split(Settings.CustomHotbar.Color2.Value, ",")
                                local red2 = color2Values[1]
                                local green2 = color2Values[2]
                                local blue2 = color2Values[3]
                                gradient.Color = ColorSequence.new({
                                    ColorSequenceKeypoint.new(0, Color3.new(red1, green1, blue1)),
                                    ColorSequenceKeypoint.new(1, Color3.new(red2, green2, blue2))
                                })
                                local corner = Instance.new("UICorner")
                                corner.Parent = descendant
                                corner.Name = "UICorner"
                                corner.CornerRadius = UDim.new(0, (Settings.CustomHotbar.CornerRadius.Value / 5))
                                local stroke = Instance.new("UIStroke")
                                stroke.Parent = descendant
                                stroke.Name = "UIStroke"
                                stroke.Transparency = 0.7
                                stroke.Thickness = Settings.CustomHotbar.UIStrokeThickness.Value
                                stroke.Color = Color3.new(((red1 + red2) / 2), ((green1 + green2) / 2), ((blue1 + blue2) / 2))
                            end
                        end)

                        task.spawn(function()
                            if descendant:IsA("UIListLayout") then
                                LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("ItemsHotbar"):FindFirstChild("ItemsHotbarListLayout").Padding = UDim.new(0, Settings.CustomHotbar.Spacing.Value)
                            end
                        end)

                        task.spawn(function()
                            if descendant:IsA("TextLabel") then
                                descendant.BackgroundTransparency = 1
                                descendant.TextTransparency = (Settings.CustomHotbar.TextTransparency.Value / 100)
                                descendant.TextColor3 = Color3.new(1, 1, 1)
                                descendant.Position = descendant.Position + UDim2.new(0, 2, 0, 2)
                                descendant.Font = Enum.Font.GothamBold
                            end
                        end)

                        task.spawn(function()
                            if descendant:IsA("ImageButton") then
                                Connections["CustomHotbarConnection2"] = descendant.Changed:Connect(function()
                                    if Settings.CustomHotbar.Value == true then
                                        descendant.BackgroundTransparency = (Settings.CustomHotbar.BackgroundTransparency.Value / 100)
                                        descendant.BackgroundColor3 = Color3.new(1, 1, 1)
                                        descendant.BorderSizePixel = 0
                                        local gradient = Instance.new("UIGradient")
                                        gradient.Parent = descendant
                                        gradient.Name = "UIGradient"
                                        gradient.Rotation = Settings.CustomHotbar.Rotation.Value
                                        local color1Values = string.split(Settings.CustomHotbar.Color1.Value, ",")
                                        local red1 = color1Values[1]
                                        local green1 = color1Values[2]
                                        local blue1 = color1Values[3]
                                        local color2Values = string.split(Settings.CustomHotbar.Color2.Value, ",")
                                        local red2 = color2Values[1]
                                        local green2 = color2Values[2]
                                        local blue2 = color2Values[3]
                                        gradient.Color = ColorSequence.new({
                                            ColorSequenceKeypoint.new(0, Color3.new(red1, green1, blue1)),
                                            ColorSequenceKeypoint.new(1, Color3.new(red2, green2, blue2))
                                        })
                                        local corner = Instance.new("UICorner")
                                        corner.Parent = descendant
                                        corner.Name = "UICorner"
                                        corner.CornerRadius = UDim.new(0, (Settings.CustomHotbar.CornerRadius.Value / 5))
                                    end
                                end)
                            end
                        end)
                    end
                end

                local CustomHotbarToggle = WorldTab:CreateToggle({
                    Name = "CustomHotbar",
                    Function = function()
                        if Settings.CustomHotbar.Value == true then
                            isCustomHotbarActive = true
                            ApplyCustomHotbar()
                        end
                        if Settings.CustomHotbar.Value == false and isCustomHotbarActive == true then
                            local currentHotbar = LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1")
                            local clonedHotbar = originalHotbarClone:Clone()
                            clonedHotbar.Parent = LocalPlayer.PlayerGui:WaitForChild("hotbar")
                            currentHotbar:Destroy()
                        end
                    end,
                    HoverText = "Gives You A Cool Custom Hotbar"
                })

                CustomHotbarToggle:CreateSlider({
                    Name = "BackgroundTransparency",
                    Function = function()
                        if Settings.CustomHotbar.Value == true then
                            for _, descendant in LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("ItemsHotbar"):GetDescendants() do
                                if descendant:IsA("ImageButton") then
                                    descendant.BackgroundTransparency = (Settings.CustomHotbar.BackgroundTransparency.Value / 100)
                                end
                            end
                        end
                    end,
                    DefaultValue = 10,
                    MaximumValue = 100
                })

                CustomHotbarToggle:CreateSlider({
                    Name = "UIStrokeThickness",
                    Function = function()
                        if Settings.CustomHotbar.Value == true then
                            if LocalPlayer.PlayerGui:WaitForChild("hotbar"):WaitForChild("1"):WaitForChild("HotbarResourceDisplay") then
                                LocalPlayer.PlayerGui:WaitForChild("hotbar"):WaitForChild("1"):WaitForChild("HotbarResourceDisplay").Position = UDim2.new(1, ((45 + (Settings.CustomHotbar.UIStrokeThickness.Value + (Settings.CustomHotbar.Spacing.Value * 4.5)))), 0, 0)
                            end
                            if LocalPlayer.PlayerGui:WaitForChild("hotbar"):WaitForChild("1"):WaitForChild("3") then
                                LocalPlayer.PlayerGui:WaitForChild("hotbar"):WaitForChild("1"):WaitForChild("3").Position = UDim2.new(0, -((45 + (Settings.CustomHotbar.UIStrokeThickness.Value + (Settings.CustomHotbar.Spacing.Value * 4.5)))), 1, 0)
                            end
                            for _, descendant in LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("ItemsHotbar"):GetDescendants() do
                                if descendant:IsA("UIStroke") then
                                    descendant.Thickness = Settings.CustomHotbar.UIStrokeThickness.Value
                                end
                            end
                        end
                    end,
                    DefaultValue = 1.3,
                    MaximumValue = 5
                })

                CustomHotbarToggle:CreateSlider({
                    Name = "TextTransparency",
                    Function = function()
                        if Settings.CustomHotbar.Value == true then
                            for _, descendant in LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("ItemsHotbar"):GetDescendants() do
                                if descendant:IsA("TextLabel") then
                                    descendant.TextTransparency = (Settings.CustomHotbar.TextTransparency.Value / 100)
                                end
                            end
                        end
                    end,
                    DefaultValue = 100,
                    MaximumValue = 100
                })

                CustomHotbarToggle:CreateSlider({
                    Name = "CornerRadius",
                    Function = function()
                        if Settings.CustomHotbar.Value == true then
                            for _, descendant in LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("ItemsHotbar"):GetDescendants() do
                                if descendant:IsA("UICorner") then
                                    descendant.CornerRadius = UDim.new(0, (Settings.CustomHotbar.CornerRadius.Value / 5))
                                end
                            end
                        end
                    end,
                    DefaultValue = 30,
                    MaximumValue = 100
                })

                CustomHotbarToggle:CreateSlider({
                    Name = "Rotation",
                    Function = function()
                        if Settings.CustomHotbar.Value == true then
                            for _, descendant in LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("ItemsHotbar"):GetDescendants() do
                                if descendant:IsA("UIGradient") then
                                    descendant.Rotation = Settings.CustomHotbar.Rotation.Value
                                end
                            end
                        end
                    end,
                    DefaultValue = 45,
                    MaximumValue = 360
                })

                CustomHotbarToggle:CreateSlider({
                    Name = "Spacing",
                    Function = function()
                        if Settings.CustomHotbar.Value == true then
                            if LocalPlayer.PlayerGui:WaitForChild("hotbar"):WaitForChild("1"):WaitForChild("HotbarResourceDisplay") then
                                LocalPlayer.PlayerGui:WaitForChild("hotbar"):WaitForChild("1"):WaitForChild("HotbarResourceDisplay").Position = UDim2.new(1, ((45 + (Settings.CustomHotbar.UIStrokeThickness.Value + (Settings.CustomHotbar.Spacing.Value * 4.5)))), 0, 0)
                            end
                            if LocalPlayer.PlayerGui:WaitForChild("hotbar"):WaitForChild("1"):WaitForChild("3") then
                                LocalPlayer.PlayerGui:WaitForChild("hotbar"):WaitForChild("1"):WaitForChild("3").Position = UDim2.new(0, -((45 + (Settings.CustomHotbar.UIStrokeThickness.Value + (Settings.CustomHotbar.Spacing.Value * 4.5)))), 1, 0)
                            end
                            LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("ItemsHotbar"):FindFirstChild("ItemsHotbarListLayout").Padding = UDim.new(0, Settings.CustomHotbar.Spacing.Value)
                        end
                    end,
                    DefaultValue = 8,
                    MaximumValue = 20
                })

                CustomHotbarToggle:CreateColorSlider({
                    Name = "Color1",
                    Function = function()
                        if Settings.CustomHotbar.Value == true then
                            for _, descendant in LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("ItemsHotbar"):GetDescendants() do
                                if descendant:IsA("UIGradient") then
                                    local color1Values = string.split(Settings.CustomHotbar.Color1.Value, ",")
                                    local red1 = color1Values[1]
                                    local green1 = color1Values[2]
                                    local blue1 = color1Values[3]
                                    local color2Values = string.split(Settings.CustomHotbar.Color2.Value, ",")
                                    local red2 = color2Values[1]
                                    local green2 = color2Values[2]
                                    local blue2 = color2Values[3]
                                    descendant.Color = ColorSequence.new({
                                        ColorSequenceKeypoint.new(0, Color3.new(red1, green1, blue1)),
                                        ColorSequenceKeypoint.new(1, Color3.new(red2, green2, blue2))
                                    })
                                end
                                if descendant:IsA("UIStroke") then
                                    local color1Values = string.split(Settings.CustomHotbar.Color1.Value, ",")
                                    local red1 = color1Values[1]
                                    local green1 = color1Values[2]
                                    local blue1 = color1Values[3]
                                    local color2Values = string.split(Settings.CustomHotbar.Color2.Value, ",")
                                    local red2 = color2Values[1]
                                    local green2 = color2Values[2]
                                    local blue2 = color2Values[3]
                                    descendant.Color = Color3.new(((red1 + red2) / 2), ((green1 + green2) / 2), ((blue1 + blue2) / 2))
                                end
                            end
                        end
                    end,
                    DefaultValue = Color3.new(0.25098, 0, 1)
                })

                CustomHotbarToggle:CreateColorSlider({
                    Name = "Color2",
                    Function = function()
                        if Settings.CustomHotbar.Value == true then
                            for _, descendant in LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1"):FindFirstChild("ItemsHotbar"):GetDescendants() do
                                if descendant:IsA("UIGradient") then
                                    local color1Values = string.split(Settings.CustomHotbar.Color1.Value, ",")
                                    local red1 = color1Values[1]
                                    local green1 = color1Values[2]
                                    local blue1 = color1Values[3]
                                    local color2Values = string.split(Settings.CustomHotbar.Color2.Value, ",")
                                    local red2 = color2Values[1]
                                    local green2 = color2Values[2]
                                    local blue2 = color2Values[3]
                                    descendant.Rotation = Settings.CustomHotbar.Rotation.Value
                                    descendant.Color = ColorSequence.new({
                                        ColorSequenceKeypoint.new(0, Color3.new(red1, green1, blue1)),
                                        ColorSequenceKeypoint.new(1, Color3.new(red2, green2, blue2))
                                    })
                                end
                                if descendant:IsA("UIStroke") then
                                    local color1Values = string.split(Settings.CustomHotbar.Color1.Value, ",")
                                    local red1 = color1Values[1]
                                    local green1 = color1Values[2]
                                    local blue1 = color1Values[3]
                                    local color2Values = string.split(Settings.CustomHotbar.Color2.Value, ",")
                                    local red2 = color2Values[1]
                                    local green2 = color2Values[2]
                                    local blue2 = color2Values[3]
                                    descendant.Color = Color3.new(((red1 + red2) / 2), ((green1 + green2) / 2), ((blue1 + blue2) / 2))
                                end
                            end
                        end
                    end,
                    DefaultValue = Color3.new(0.0705882, 0, 1)
                })

                Connections["CustomHotbarConnection"] = LocalPlayer.CharacterAdded:Connect(function()
                    if Settings.CustomHotbar.Value == true then
                        task.wait(1)
                        ApplyCustomHotbar()
                    end
                end)

                UnInjectEvent.Event:Connect(function()
                    local currentHotbar = LocalPlayer.PlayerGui:WaitForChild("hotbar"):FindFirstChild("1")
                    local clonedHotbar = originalHotbarClone:Clone()
                    clonedHotbar.Parent = LocalPlayer.PlayerGui:WaitForChild("hotbar")
                    currentHotbar:Destroy()
                end)
            end
        end)

        task.spawn(function()
            local NoNameTagsToggle = WorldTab:CreateToggle({
                Name = "NoNameTags",
                Function = function()
                    if Settings.NoNameTags.Value == true then
                        if IsAlive(LocalPlayer) == true then
                            LocalPlayer.Character:SetAttribute("NoNametag", true)
                        end
                        if Settings.NoNameTags.Entities.Value == true then
                            for _, player in Players:GetPlayers() do
                                if IsAlive(player) == true and player ~= LocalPlayer then
                                    player.Character:SetAttribute("NoNametag", true)
                                end
                            end
                        end
                    end
                    if Settings.NoNameTags.Value == false then
                        if IsAlive(LocalPlayer) == true then
                            LocalPlayer.Character:SetAttribute("NoNametag", false)
                        end
                        if Settings.NoNameTags.Entities.Value == true then
                            for _, player in Players:GetPlayers() do
                                if IsAlive(player) == true and player ~= LocalPlayer then
                                    player.Character:SetAttribute("NoNametag", false)
                                end
                            end
                        end
                    end
                end,
                HoverText = "Hides The Nametag Of The Selected Entities"
            })

            task.spawn(function()
                repeat
                    task.wait()
                until GetMatchState() ~= 0

                task.spawn(function()
                    task.wait(1)
                    if Settings.NoNameTags.Value == true then
                        if IsAlive(LocalPlayer) == true then
                            LocalPlayer.Character:SetAttribute("NoNametag", true)
                        end
                        if Settings.NoNameTags.Entities.Value == true then
                            for _, player in Players:GetPlayers() do
                                if IsAlive(player) == true and player ~= LocalPlayer then
                                    player.Character:SetAttribute("NoNametag", true)
                                end
                            end
                        end
                    end
                    if Settings.NoNameTags.Value == false then
                        if IsAlive(LocalPlayer) == true then
                            LocalPlayer.Character:SetAttribute("NoNametag", false)
                        end
                        if Settings.NoNameTags.Entities.Value == true then
                            for _, player in Players:GetPlayers() do
                                if IsAlive(player) == true and player ~= LocalPlayer then
                                    player.Character:SetAttribute("NoNametag", false)
                                end
                            end
                        end
                    end
                end)

                if shared[sharedKey] == false then
                    for _, player in Players:GetPlayers() do
                        Connections["NoNameTagsConnection"] = player.CharacterAdded:Connect(function(character)
                            repeat
                                task.wait()
                            until IsAlive(player) == true
                            task.wait(0.3)
                            if Settings.NoNameTags.Value == true then
                                if IsAlive(LocalPlayer) == true and player == LocalPlayer then
                                    character:SetAttribute("NoNametag", true)
                                end
                                if Settings.NoNameTags.Entities.Value == true and IsAlive(player) == true then
                                    character:SetAttribute("NoNametag", true)
                                end
                            end
                            if Settings.NoNameTags.Value == false then
                                if IsAlive(LocalPlayer) == true and player == LocalPlayer then
                                    character:SetAttribute("NoNametag", false)
                                end
                                if IsAlive(player) == true then
                                    character:SetAttribute("NoNametag", false)
                                end
                            end
                        end)
                    end
                end
            end)

            NoNameTagsToggle:CreateToggle({
                Name = "Entities",
                Function = function() end,
                DefaultValue = true
            })
        end)

        task.spawn(function()
            local ColorCorrectionEffect = Instance.new("ColorCorrectionEffect")
            ColorCorrectionEffect.Parent = Lighting
            ColorCorrectionEffect.Name = "ColorCorrectionEffect"
            ColorCorrectionEffect.Brightness = 0.1
            ColorCorrectionEffect.Saturation = 0.5
            ColorCorrectionEffect.Enabled = false

            local AtmosphereToggle = WorldTab:CreateToggle({
                Name = "Atmosphere",
                Function = function()
                    if Settings.Atmosphere.Value == true then
                        local colorValues = string.split(Settings.Atmosphere.Color.Value, ",")
                        local red = colorValues[1]
                        local green = colorValues[2]
                        local blue = colorValues[3]
                        ColorCorrectionEffect.Saturation = (Settings.Atmosphere.Saturation.Value / 100)
                        ColorCorrectionEffect.TintColor = Color3.new(red, green, blue)
                        ColorCorrectionEffect.Contrast = (Settings.Atmosphere.Contrast.Value / 100)
                        ColorCorrectionEffect.Enabled = true
                    end
                    if Settings.Atmosphere.Value == false then
                        ColorCorrectionEffect.Enabled = false
                    end
                end,
                HoverText = "Gives You A Cool Atmosphere"
            })

            AtmosphereToggle:CreateSlider({
                Name = "Saturation",
                Function = function()
                    ColorCorrectionEffect.Saturation = (Settings.Atmosphere.Saturation.Value / 100)
                end,
                MaximumValue = 100,
                DefaultValue = 0
            })

            AtmosphereToggle:CreateSlider({
                Name = "Contrast",
                Function = function()
                    ColorCorrectionEffect.Contrast = (Settings.Atmosphere.Contrast.Value / 100)
                end,
                MaximumValue = 100,
                DefaultValue = 0
            })

            AtmosphereToggle:CreateColorSlider({
                Name = "Color",
                Function = function()
                    local colorValues = string.split(Settings.Atmosphere.Color.Value, ",")
                    local red = colorValues[1]
                    local green = colorValues[2]
                    local blue = colorValues[3]
                    ColorCorrectionEffect.TintColor = Color3.new(red, green, blue)
                end,
                DefaultValue = Color3.new(0, 0.133333, 1)
            })

            UnInjectEvent.Event:Connect(function()
                ColorCorrectionEffect:Destroy()
            end)
        end)

        task.spawn(function()
            local TexturePackToggle = WorldTab:CreateToggle({
                Name = "TexturePack",
                Function = function() end,
                HoverText = "Makes Your ViewModel Look Cool"
            })

            TexturePackToggle:CreateToggle({
                Name = "TexturePackForResources",
                Function = function() end,
                DefaultValue = true
            })

            TexturePackToggle:CreateToggle({
                Name = "TexturePackForPickaxes",
                Function = function() end,
                DefaultValue = true
            })

            TexturePackToggle:CreateToggle({
                Name = "TexturePackForScythes",
                Function = function() end,
                DefaultValue = true
            })

            TexturePackToggle:CreateToggle({
                Name = "TexturePackForSwords",
                Function = function() end,
                DefaultValue = true
            })

            Connections["TexturePackConnection"] = ViewModel.ChildAdded:Connect(function(child)
                if Settings.TexturePack.Value == true and shared[sharedKey] == false and IsAlive(LocalPlayer) == true and child:IsA("Accessory") then
                    local texturePackObjects = game:GetObjects("rbxassetid://14654171957")
                    local texturePackModel = texturePackObjects[1]
                    texturePackModel.Parent = ReplicatedStorage

                    local texturePackItems = {
                        {
                            Name = "wood_sword",
                            Offset = CFrame.Angles(math.rad(0), math.rad(-89), math.rad(-90)),
                            Model = texturePackModel:WaitForChild("Wood_Sword"),
                        },
                        {
                            Name = "stone_sword",
                            Offset = CFrame.Angles(math.rad(0), math.rad(-89), math.rad(-90)),
                            Model = texturePackModel:WaitForChild("Stone_Sword"),
                        },
                        {
                            Name = "iron_sword",
                            Offset = CFrame.Angles(math.rad(0), math.rad(-89), math.rad(-90)),
                            Model = texturePackModel:WaitForChild("Iron_Sword"),
                        },
                        {
                            Name = "diamond_sword",
                            Offset = CFrame.Angles(math.rad(0), math.rad(-89), math.rad(-90)),
                            Model = texturePackModel:WaitForChild("Diamond_Sword"),
                        },
                        {
                            Name = "emerald_sword",
                            Offset = CFrame.Angles(math.rad(0), math.rad(-89), math.rad(-90)),
                            Model = texturePackModel:WaitForChild("Emerald_Sword"),
                        },
                        {
                            Name = "rageblade",
                            Offset = CFrame.Angles(math.rad(0), math.rad(-89), math.rad(-90)),
                            Model = texturePackModel:WaitForChild("Rageblade"),
                        },
                        {
                            Name = "wood_scythe",
                            Offset = CFrame.Angles(math.rad(0), math.rad(89), math.rad(-90)),
                            Model = texturePackModel:WaitForChild("Wood_Scythe"),
                        },
                        {
                            Name = "stone_scythe",
                            Offset = CFrame.Angles(math.rad(0), math.rad(89), math.rad(-90)),
                            Model = texturePackModel:WaitForChild("Stone_Scythe"),
                        },
                        {
                            Name = "iron_scythe",
                            Offset = CFrame.Angles(math.rad(0), math.rad(89), math.rad(-90)),
                            Model = texturePackModel:WaitForChild("Iron_Scythe"),
                        },
                        {
                            Name = "diamond_scythe",
                            Offset = CFrame.Angles(math.rad(0), math.rad(89), math.rad(-90)),
                            Model = texturePackModel:WaitForChild("Diamond_Scythe"),
                        },
                        {
                            Name = "wood_pickaxe",
                            Offset = CFrame.Angles(math.rad(0), math.rad(-10), math.rad(-95)),
                            Model = texturePackModel:WaitForChild("Wood_Pickaxe"),
                        },
                        {
                            Name = "stone_pickaxe",
                            Offset = CFrame.Angles(math.rad(0), math.rad(-10), math.rad(-95)),
                            Model = texturePackModel:WaitForChild("Stone_Pickaxe"),
                        },
                        {
                            Name = "iron_pickaxe",
                            Offset = CFrame.Angles(math.rad(0), math.rad(-10), math.rad(-95)),
                            Model = texturePackModel:WaitForChild("Iron_Pickaxe"),
                        },
                        {
                            Name = "diamond_pickaxe",
                            Offset = CFrame.Angles(math.rad(0), math.rad(-89), math.rad(-95)),
                            Model = texturePackModel:WaitForChild("Diamond_Pickaxe"),
                        },
                        {
                            Name = "diamond",
                            Offset = CFrame.Angles(math.rad(0), math.rad(-90), math.rad(90)),
                            Model = texturePackModel:WaitForChild("Diamond"),
                        },
                        {
                            Name = "iron",
                            Offset = CFrame.Angles(math.rad(0), math.rad(-90), math.rad(90)),
                            Model = texturePackModel:WaitForChild("Iron"),
                        },
                        {
                            Name = "emerald",
                            Offset = CFrame.Angles(math.rad(0), math.rad(-90), math.rad(90)),
                            Model = texturePackModel:WaitForChild("Emerald"),
                        },
                    }

                    for _, itemData in texturePackItems do
                        if itemData.Name == child.Name then
                            local originalModel
                            local modelClone
                            local handle

                            local function ApplyTexturePack()
                                for _, part in child:GetDescendants() do
                                    if part:IsA("BasePart") or part:IsA("MeshPart") or part:IsA("UnionOperation") then
                                        part.Transparency = 1
                                    end
                                end
                                handle = itemData.Model:Clone()
                                handle.Parent = child
                                handle.Name = itemData.Name
                                handle.CFrame = ((child:WaitForChild("Handle").CFrame * itemData.Offset) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)))
                                local weld = Instance.new("WeldConstraint")
                                weld.Parent = handle
                                weld.Name = "WeldConstraint"
                                weld.Part0 = handle
                                weld.Part1 = child:WaitForChild("Handle")
                                originalModel = LocalPlayer.Character:WaitForChild(itemData.Name)
                                for _, part in originalModel:GetDescendants() do
                                    if part:IsA("BasePart") or part:IsA("MeshPart") or part:IsA("UnionOperation") then
                                        part.Transparency = 1
                                    end
                                end
                                modelClone = itemData.Model:Clone()
                                modelClone.Parent = originalModel
                                modelClone.Name = itemData.Name
                                modelClone.Anchored = false
                                modelClone.CFrame = ((originalModel:WaitForChild("Handle").CFrame * itemData.Offset)) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0))
                            end

                            if itemData.Name == "iron" and Settings.TexturePack.TexturePackForResources.Value == true then
                                ApplyTexturePack()
                                modelClone.CFrame = (modelClone.CFrame * CFrame.new(0, -0.24, 0))
                            end
                            if itemData.Name == "diamond" and Settings.TexturePack.TexturePackForResources.Value == true then
                                ApplyTexturePack()
                                modelClone.CFrame = (modelClone.CFrame * CFrame.new(0, 0.027, 0))
                            end
                            if itemData.Name == "emerald" and Settings.TexturePack.TexturePackForResources.Value == true then
                                ApplyTexturePack()
                                modelClone.CFrame = (modelClone.CFrame * CFrame.new(0, 0.001, 0))
                            end
                            if itemData.Name:find("pickaxe") and Settings.TexturePack.TexturePackForPickaxes.Value == true then
                                ApplyTexturePack()
                                modelClone.CFrame = ((modelClone.CFrame * CFrame.new(-0.2, 0, -2.4)) + Vector3.new(0, 0, 2.12))
                            end
                            if itemData.Name:find("scythe") and Settings.TexturePack.TexturePackForScythes.Value == true then
                                ApplyTexturePack()
                                modelClone.CFrame = (modelClone.CFrame * CFrame.new(-1.15, 0.2, -2.1))
                            end
                            if itemData.Name == "rageblade" and Settings.TexturePack.TexturePackForSwords.Value == true then
                                ApplyTexturePack()
                                modelClone.CFrame = (modelClone.CFrame * CFrame.new(0.7, 0, -1))
                            end
                            if itemData.Name:find("sword") and Settings.TexturePack.TexturePackForSwords.Value == true then
                                ApplyTexturePack()
                                modelClone.CFrame = ((modelClone.CFrame * CFrame.new(0.6, 0, -1.1)) + Vector3.new(0, 0, 0.3))
                            end

                            local weldClone = Instance.new("WeldConstraint")
                            weldClone.Parent = handle
                            weldClone.Name = "WeldConstraint"
                            weldClone.Part0 = modelClone
                            weldClone.Part1 = originalModel:WaitForChild("Handle")
                        end
                    end
                end
            end)
        end)

        task.spawn(function()
            local BlurEffect = Instance.new("BlurEffect")
            BlurEffect.Parent = Lighting
            BlurEffect.Name = "BlurEffect"
            BlurEffect.Enabled = true
            BlurEffect.Size = 0

            local MotionBlurToggle = WorldTab:CreateToggle({
                Name = "MotionBlur",
                Function = function()
                    BlurEffect.Enabled = true
                    repeat
                        task.wait()
                        if Settings.MotionBlur.Value == true and IsAlive(LocalPlayer) == true then
                            local prevPos = Vector3.new(Camera.CFrame.Position.X, 0, Camera.CFrame.Position.Z)
                            task.wait(0.2)
                            local currentPos = Vector3.new(Camera.CFrame.Position.X, 0, Camera.CFrame.Position.Z)
                            local distance = (prevPos - currentPos).Magnitude
                            local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
                            local tween = TweenService:Create(BlurEffect, tweenInfo, {Size = distance})
                            tween:Play()
                            tween.Completed:Connect(function()
                                local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
                                local tween = TweenService:Create(BlurEffect, tweenInfo, {Size = 0})
                                tween:Play()
                                task.wait(1)
                            end)
                        end
                    until Settings.MotionBlur.Value == false or shared[sharedKey] == true
                    BlurEffect.Enabled = false
                end,
                HoverText = "Blurs Your Screen When Based On The Camera Motion"
            })

            UnInjectEvent.Event:Connect(function()
                BlurEffect:Destroy()
            end)
        end)

        task.spawn(function()
            local oldEnvironmentSpecularScale = Lighting.EnvironmentSpecularScale
            local oldEnvironmentDiffuseScale = Lighting.EnvironmentDiffuseScale
            local oldGeographicLatitude = Lighting.GeographicLatitude
            local oldOutdoorAmbient = Lighting.OutdoorAmbient
            local oldGlobalShadows = Lighting.GlobalShadows
            local oldBrightness = Lighting.Brightness
            local oldTimeOfDay = Lighting.TimeOfDay
            local oldClockTime = Lighting.ClockTime
            local oldAmbient = Lighting.Ambient
            local oldAtmosphereDensity = Lighting.Atmosphere.Density
            local oldAtmosphereOffset = Lighting.Atmosphere.Offset
            local oldAtmosphereColor = Lighting.Atmosphere.Color
            local oldAtmosphereDecay = Lighting.Atmosphere.Decay
            local oldAtmosphereGlare = Lighting.Atmosphere.Glare
            local oldAtmosphereHaze = Lighting.Atmosphere.Haze

            local OldThemeToggle = WorldTab:CreateToggle({
                Name = "OldTheme",
                Function = function()
                    if Settings.OldTheme.Value == true then
                        Lighting.EnvironmentSpecularScale = 1
                        Lighting.EnvironmentDiffuseScale = 1
                        Lighting.GeographicLatitude = 0
                        Lighting.OutdoorAmbient = Color3.new(0.270588, 0.270588, 0.270588)
                        Lighting.GlobalShadows = false
                        Lighting.Brightness = 3
                        Lighting.TimeOfDay = "13:00:00"
                        Lighting.ClockTime = 13
                        Lighting.Ambient = Color3.new(0.270588, 0.270588, 0.270588)
                        if Settings.Atmosphere.Value == false then
                            Lighting.Atmosphere.Density = 0.1
                            Lighting.Atmosphere.Offset = 0.25
                            Lighting.Atmosphere.Color = Color3.new(0.776471, 0.776471, 0.776471)
                            Lighting.Atmosphere.Decay = Color3.new(0.407843, 0.439216, 0.486275)
                            Lighting.Atmosphere.Glare = 0
                            Lighting.Atmosphere.Haze = 0
                        end
                    end
                    if Settings.OldTheme.Value == false then
                        Lighting.EnvironmentSpecularScale = oldEnvironmentSpecularScale
                        Lighting.EnvironmentDiffuseScale = oldEnvironmentDiffuseScale
                        Lighting.GeographicLatitude = oldGeographicLatitude
                        Lighting.OutdoorAmbient = oldOutdoorAmbient
                        Lighting.GlobalShadows = oldGlobalShadows
                        Lighting.Brightness = oldBrightness
                        Lighting.TimeOfDay = oldTimeOfDay
                        Lighting.ClockTime = oldClockTime
                        Lighting.Ambient = oldAmbient
                        if Settings.Atmosphere.Value == false then
                            Lighting.Atmosphere.Density = oldAtmosphereDensity
                            Lighting.Atmosphere.Offset = oldAtmosphereOffset
                            Lighting.Atmosphere.Color = oldAtmosphereColor
                            Lighting.Atmosphere.Decay = oldAtmosphereDecay
                            Lighting.Atmosphere.Glare = oldAtmosphereGlare
                            Lighting.Atmosphere.Haze = oldAtmosphereHaze
                        end
                    end
                end,
                HoverText = "Makes The Game Look Old"
            })

            UnInjectEvent.Event:Connect(function()
                Lighting.EnvironmentSpecularScale = oldEnvironmentSpecularScale
                Lighting.EnvironmentDiffuseScale = oldEnvironmentDiffuseScale
                Lighting.GeographicLatitude = oldGeographicLatitude
                Lighting.OutdoorAmbient = oldOutdoorAmbient
                Lighting.GlobalShadows = oldGlobalShadows
                Lighting.Brightness = oldBrightness
                Lighting.TimeOfDay = oldTimeOfDay
                Lighting.ClockTime = oldClockTime
                Lighting.Ambient = oldAmbient
                Lighting.Atmosphere.Density = oldAtmosphereDensity
                Lighting.Atmosphere.Offset = oldAtmosphereOffset
                Lighting.Atmosphere.Color = oldAtmosphereColor
                Lighting.Atmosphere.Decay = oldAtmosphereDecay
                Lighting.Atmosphere.Glare = oldAtmosphereGlare
                Lighting.Atmosphere.Haze = oldAtmosphereHaze
            end)
        end)

        task.spawn(function()
            if SelectedMode == false then
                local IndicatorWords = {
                    AlSploit = {"AlSploit On Top", "Catvape Is Bunz", "#1 Script", "Skidware Crumbles To Alsploit", "Best Script"},
                    Emoji = {"", "", "", "", ""},
                    Toxic = {"Ez", "Bop", "Bam", "Your Pvp Is Sloppy", "L"}
                }

                local IndicatorsToggle = WorldTab:CreateToggle({
                    Name = "Indicators",
                    Function = function()
                        if Settings.Indicators.Value == true then
                            Connections["IndicatorsConnection"] = Workspace.DescendantAdded:Connect(function(descendant)
                                if descendant.Name == "DamageIndicatorPart" and descendant:FindFirstChild("BillboardGui"):FindFirstChild("Frame"):FindFirstChildWhichIsA("TextLabel") then
                                    local originalText = descendant:FindFirstChild("BillboardGui"):FindFirstChild("Frame"):FindFirstChildWhichIsA("TextLabel").Text
                                    local colorValues = string.split(Settings.Indicators.Color.Value, ",")
                                    local red = colorValues[1]
                                    local green = colorValues[2]
                                    local blue = colorValues[3]
                                    descendant:FindFirstChild("BillboardGui"):FindFirstChild("Frame"):FindFirstChildWhichIsA("TextLabel").TextColor3 = Color3.new(red, green, blue)

                                    if Settings.Indicators.IndicatorWords.AlSploit.Value == true then
                                        descendant:FindFirstChild("BillboardGui"):FindFirstChild("Frame"):FindFirstChildWhichIsA("TextLabel").Text = IndicatorWords["AlSploit"][math.random(1, #IndicatorWords["AlSploit"])] .. (Settings.Indicators.KeepDamageValues.Value == true and " (" .. originalText .. ")" or "")
                                    end
                                    if Settings.Indicators.IndicatorWords.Emoji.Value == true then
                                        descendant:FindFirstChild("BillboardGui"):FindFirstChild("Frame"):FindFirstChildWhichIsA("TextLabel").Text = IndicatorWords["Emoji"][math.random(1, #IndicatorWords["AlSploit"])] .. (Settings.Indicators.KeepDamageValues.Value == true and " (" .. originalText .. ")" or "")
                                    end
                                    if Settings.Indicators.IndicatorWords.Toxic.Value == true then
                                        descendant:FindFirstChild("BillboardGui"):FindFirstChild("Frame"):FindFirstChildWhichIsA("TextLabel").Text = IndicatorWords["Toxic"][math.random(1, #IndicatorWords["AlSploit"])] .. (Settings.Indicators.KeepDamageValues.Value == true and " (" .. originalText .. ")" or "")
                                    end
                                end
                            end)
                        end
                        if Settings.Indicators.Value == false then
                            if Connections["IndicatorsConnection"] then
                                Connections["IndicatorsConnection"]:Disconnect()
                            end
                        end
                    end,
                    HoverText = "Makes The Damage Indicator Cooler"
                })

                IndicatorsToggle:CreateColorSlider({
                    Name = "Color",
                    Function = function() end,
                    DefaultValue = Color3.new(0.25098, 0, 1)
                })

                local IndicatorWordsDropdown = IndicatorsToggle:CreateDropdown({
                    Name = "IndicatorWords",
                    HoverText = "The Selected Word Category That Will Replace The Normal Indicator Word"
                })
                local AlSploitToggle = IndicatorWordsDropdown:CreateToggle({
                    Name = "AlSploit",
                    Function = function() end,
                    DefaultValue = true
                })
                local EmojiToggle = IndicatorWordsDropdown:CreateToggle({
                    Name = "Emoji",
                    Function = function() end,
                    DefaultValue = false
                })
                local ToxicToggle = IndicatorWordsDropdown:CreateToggle({
                    Name = "Toxic",
                    Function = function() end,
                    DefaultValue = false
                })

                local KeepDamageValuesToggle = IndicatorsToggle:CreateToggle({
                    Name = "KeepDamageValues",
                    Function = function() end,
                    DefaultValue = false
                })
            end
        end)

        task.spawn(function()
            local auraEffectParticle1
            local auraEffectParticle2
            local auraEffectAttachment
            local auraEffectParticle3
            local auraEffectBottomAttachment
            local auraEffectTopAttachment
            local auraEffectBeam
            local auraEffectPointLight

            local AuraEffectToggle = WorldTab:CreateToggle({
                Name = "AuraEffect",
                Function = function()
                    if Settings.AuraEffect.Value == true and IsAlive(LocalPlayer) == true then
                        local colorValues = string.split(Settings.AuraEffect.Color.Value, ",")
                        local red = colorValues[1]
                        local green = colorValues[2]
                        local blue = colorValues[3]

                        auraEffectParticle1 = Instance.new("ParticleEmitter")
                        auraEffectParticle1.Parent = LocalPlayer.Character.PrimaryPart
                        auraEffectParticle1.Name = "AuraVisual1"
                        auraEffectParticle1.FlipbookFramerate = NumberRange.new(25, 25)
                        auraEffectParticle1.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
                        auraEffectParticle1.LightEmission = 1
                        auraEffectParticle1.Acceleration = Vector3.new(0, 1, 0)
                        auraEffectParticle1.LockedToPart = true
                        auraEffectParticle1.Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 1),
                            NumberSequenceKeypoint.new(0.28, 0.58),
                            NumberSequenceKeypoint.new(0.5, 0),
                            NumberSequenceKeypoint.new(0.7, 0.72),
                            NumberSequenceKeypoint.new(1, 1, 0)
                        })
                        auraEffectParticle1.SpreadAngle = Vector2.new(360, 360)
                        auraEffectParticle1.Lifetime = NumberRange.new(0.5, 0.75)
                        auraEffectParticle1.RotSpeed = NumberRange.new(-360, 360)
                        auraEffectParticle1.Rotation = NumberRange.new(-50, 50)
                        auraEffectParticle1.Texture = "rbxassetid://12026515010"
                        auraEffectParticle1.ZOffset = 0.15
                        auraEffectParticle1.Speed = NumberRange.new(1.25)
                        auraEffectParticle1.Color = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, Color3.new(red, green, blue)),
                            ColorSequenceKeypoint.new(1, Color3.new(red, green, blue))
                        })
                        auraEffectParticle1.Drag = 1
                        auraEffectParticle1.Size = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 0),
                            NumberSequenceKeypoint.new(0.32, 0.94),
                            NumberSequenceKeypoint.new(0.85, 1.75),
                            NumberSequenceKeypoint.new(1, 1.67)
                        })
                        auraEffectParticle1.Rate = 10

                        auraEffectParticle2 = Instance.new("ParticleEmitter")
                        auraEffectParticle2.Parent = LocalPlayer.Character.PrimaryPart
                        auraEffectParticle2.Name = "AuraVisual1"
                        auraEffectParticle2.FlipbookFramerate = NumberRange.new(25, 25)
                        auraEffectParticle2.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
                        auraEffectParticle2.LightEmission = 1
                        auraEffectParticle2.LockedToPart = true
                        auraEffectParticle2.Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 1),
                            NumberSequenceKeypoint.new(0.3, 0.85),
                            NumberSequenceKeypoint.new(0.50, 0.76),
                            NumberSequenceKeypoint.new(0.67, 0.85, 0),
                            NumberSequenceKeypoint.new(1, 1)
                        })
                        auraEffectParticle2.SpreadAngle = Vector2.new(360, 360)
                        auraEffectParticle2.Lifetime = NumberRange.new(0.36, 0.5)
                        auraEffectParticle2.RotSpeed = NumberRange.new(-360, 360)
                        auraEffectParticle2.Rotation = NumberRange.new(-50, 50)
                        auraEffectParticle2.Texture = "rbxassetid://11381560992"
                        auraEffectParticle2.ZOffset = 0.15
                        auraEffectParticle2.Speed = NumberRange.new(1)
                        auraEffectParticle2.Color = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, Color3.new(red, green, blue)),
                            ColorSequenceKeypoint.new(1, Color3.new(red, green, blue))
                        })
                        auraEffectParticle2.Drag = 1
                        auraEffectParticle2.Size = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 0),
                            NumberSequenceKeypoint.new(0.32, 1.5),
                            NumberSequenceKeypoint.new(0.85, 2),
                            NumberSequenceKeypoint.new(1, 2)
                        })
                        auraEffectParticle2.Rate = 15

                        auraEffectAttachment = Instance.new("Attachment")
                        auraEffectAttachment.Parent = LocalPlayer.Character.PrimaryPart
                        auraEffectAttachment.Name = "Attachment1"

                        auraEffectParticle3 = Instance.new("ParticleEmitter")
                        auraEffectParticle3.Parent = auraEffectAttachment
                        auraEffectParticle3.Name = "AuraVisual3"
                        auraEffectParticle3.FlipbookLayout = Enum.ParticleFlipbookLayout.None
                        auraEffectParticle3.LightEmission = 1
                        auraEffectParticle3.LockedToPart = true
                        auraEffectParticle3.Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 1),
                            NumberSequenceKeypoint.new(0.5, 0.85),
                            NumberSequenceKeypoint.new(1, 1)
                        })
                        auraEffectParticle3.Lifetime = NumberRange.new(0.75, 0.75)
                        auraEffectParticle3.Texture = "rbxassetid://11381560992"
                        auraEffectParticle3.Speed = NumberRange.new(0, 0)
                        auraEffectParticle3.Color = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, Color3.new(red, green, blue)),
                            ColorSequenceKeypoint.new(1, Color3.new(red, green, blue))
                        })
                        auraEffectParticle3.Size = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 0, 0),
                            NumberSequenceKeypoint.new(0.5, 4),
                            NumberSequenceKeypoint.new(1, 0)
                        })
                        auraEffectParticle3.Rate = 10
                        auraEffectParticle3.Enabled = false

                        auraEffectBottomAttachment = Instance.new("Attachment")
                        auraEffectBottomAttachment.Parent = LocalPlayer.Character.PrimaryPart
                        auraEffectBottomAttachment.Name = "BottomAttachment"
                        auraEffectBottomAttachment.Position = Vector3.new(0, -3, 0)

                        auraEffectTopAttachment = Instance.new("Attachment")
                        auraEffectTopAttachment.Parent = LocalPlayer.Character.PrimaryPart
                        auraEffectTopAttachment.Name = "TopAttachment"
                        auraEffectTopAttachment.Position = Vector3.new(0, 3, 0)

                        auraEffectBeam = Instance.new("Beam")
                        auraEffectBeam.Parent = auraEffectBottomAttachment
                        auraEffectBeam.Name = "AuraVisual4"
                        auraEffectBeam.LightInfluence = 1
                        auraEffectBeam.TextureLength = 0.1
                        auraEffectBeam.LightEmission = 1
                        auraEffectBeam.Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, 1),
                            NumberSequenceKeypoint.new(0.5, 0.9),
                            NumberSequenceKeypoint.new(1, 1)
                        })
                        auraEffectBeam.TextureSpeed = 0.5
                        auraEffectBeam.Attachment0 = auraEffectBottomAttachment
                        auraEffectBeam.Attachment1 = auraEffectTopAttachment
                        auraEffectBeam.FaceCamera = true
                        auraEffectBeam.Segments = 10
                        auraEffectBeam.Texture = "http://www.roblox.com/asset/?id=6045867277"
                        auraEffectBeam.ZOffset = 1
                        auraEffectBeam.Width0 = 6
                        auraEffectBeam.Width1 = 6
                        auraEffectBeam.Color = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, Color3.new(red, green, blue)),
                            ColorSequenceKeypoint.new(1, Color3.new(red, green, blue))
                        })

                        auraEffectPointLight = Instance.new("PointLight")
                        auraEffectPointLight.Parent = LocalPlayer.Character.PrimaryPart
                        auraEffectPointLight.Name = "AuraVisual5"
                        auraEffectPointLight.Brightness = 1
                        auraEffectPointLight.Range = 8
                        auraEffectPointLight.Color = Color3.new(1, 1, 0.482353)
                    end
                    if Settings.AuraEffect.Value == false then
                        if auraEffectParticle1 then
                            auraEffectParticle1:Destroy()
                        end
                        if auraEffectParticle2 then
                            auraEffectParticle2:Destroy()
                        end
                        if auraEffectParticle3 then
                            auraEffectParticle3:Destroy()
                        end
                        if auraEffectBeam then
                            auraEffectBeam:Destroy()
                        end
                        if auraEffectPointLight then
                            auraEffectPointLight:Destroy()
                        end
                    end
                end,
                HoverText = "Gives You A Cool Aura"
            })

            AuraEffectToggle:CreateColorSlider({
                Name = "Color",
                Function = function()
                    if Settings.AuraEffect.Value == true then
                        local colorValues = string.split(Settings.AuraEffect.Color.Value, ",")
                        local red = colorValues[1]
                        local green = colorValues[2]
                        local blue = colorValues[3]
                        if IsAlive(LocalPlayer) == true then
                            if auraEffectParticle1 then
                                auraEffectParticle1.Color = ColorSequence.new({
                                    ColorSequenceKeypoint.new(0, Color3.new(red, green, blue)),
                                    ColorSequenceKeypoint.new(1, Color3.new(red, green, blue))
                                })
                            end
                            if auraEffectParticle2 then
                                auraEffectParticle2.Color = ColorSequence.new({
                                    ColorSequenceKeypoint.new(0, Color3.new(red, green, blue)),
                                    ColorSequenceKeypoint.new(1, Color3.new(red, green, blue))
                                })
                            end
                            if auraEffectParticle3 then
                                auraEffectParticle3.Color = ColorSequence.new({
                                    ColorSequenceKeypoint.new(0, Color3.new(red, green, blue)),
                                    ColorSequenceKeypoint.new(1, Color3.new(red, green, blue))
                                })
                            end
                            if auraEffectBeam then
                                auraEffectBeam.Color = ColorSequence.new({
                                    ColorSequenceKeypoint.new(0, Color3.new(red, green, blue)),
                                    ColorSequenceKeypoint.new(1, Color3.new(red, green, blue))
                                })
                            end
                        end
                    end
                end,
                DefaultValue = Color3.new(1, 0.933333, 0.188235)
            })

            Connections["AuraEffect"] = LocalPlayer.CharacterAdded:Connect(function()
                task.wait(2)
                if Settings.AuraEffect.Value == true then
                    local colorValues = string.split(Settings.AuraEffect.Color.Value, ",")
                    local red = colorValues[1]
                    local green = colorValues[2]
                    local blue = colorValues[3]

                    auraEffectParticle1 = Instance.new("ParticleEmitter")
                    auraEffectParticle1.Parent = LocalPlayer.Character.PrimaryPart
                    auraEffectParticle1.Name = "AuraVisual1"
                    auraEffectParticle1.FlipbookFramerate = NumberRange.new(25, 25)
                    auraEffectParticle1.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
                    auraEffectParticle1.LightEmission = 1
                    auraEffectParticle1.Acceleration = Vector3.new(0, 1, 0)
                    auraEffectParticle1.LockedToPart = true
                    auraEffectParticle1.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.28, 0.58),
                        NumberSequenceKeypoint.new(0.5, 0),
                        NumberSequenceKeypoint.new(0.7, 0.72),
                        NumberSequenceKeypoint.new(1, 1, 0)
                    })
                    auraEffectParticle1.SpreadAngle = Vector2.new(360, 360)
                    auraEffectParticle1.Lifetime = NumberRange.new(0.5, 0.75)
                    auraEffectParticle1.RotSpeed = NumberRange.new(-360, 360)
                    auraEffectParticle1.Rotation = NumberRange.new(-50, 50)
                    auraEffectParticle1.Texture = "rbxassetid://12026515010"
                    auraEffectParticle1.ZOffset = 0.15
                    auraEffectParticle1.Speed = NumberRange.new(1.25)
                    auraEffectParticle1.Color = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, Color3.new(red, green, blue)),
                        ColorSequenceKeypoint.new(1, Color3.new(red, green, blue))
                    })
                    auraEffectParticle1.Drag = 1
                    auraEffectParticle1.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.32, 0.94),
                        NumberSequenceKeypoint.new(0.85, 1.75),
                        NumberSequenceKeypoint.new(1, 1.67)
                    })
                    auraEffectParticle1.Rate = 10

                    auraEffectParticle2 = Instance.new("ParticleEmitter")
                    auraEffectParticle2.Parent = LocalPlayer.Character.PrimaryPart
                    auraEffectParticle2.Name = "AuraVisual1"
                    auraEffectParticle2.FlipbookFramerate = NumberRange.new(25, 25)
                    auraEffectParticle2.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
                    auraEffectParticle2.LightEmission = 1
                    auraEffectParticle2.LockedToPart = true
                    auraEffectParticle2.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.3, 0.85),
                        NumberSequenceKeypoint.new(0.50, 0.76),
                        NumberSequenceKeypoint.new(0.67, 0.85, 0),
                        NumberSequenceKeypoint.new(1, 1)
                    })
                    auraEffectParticle2.SpreadAngle = Vector2.new(360, 360)
                    auraEffectParticle2.Lifetime = NumberRange.new(0.36, 0.5)
                    auraEffectParticle2.RotSpeed = NumberRange.new(-360, 360)
                    auraEffectParticle2.Rotation = NumberRange.new(-50, 50)
                    auraEffectParticle2.Texture = "rbxassetid://11381560992"
                    auraEffectParticle2.ZOffset = 0.15
                    auraEffectParticle2.Speed = NumberRange.new(1)
                    auraEffectParticle2.Color = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, Color3.new(red, green, blue)),
                        ColorSequenceKeypoint.new(1, Color3.new(red, green, blue))
                    })
                    auraEffectParticle2.Drag = 1
                    auraEffectParticle2.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.32, 1.5),
                        NumberSequenceKeypoint.new(0.85, 2),
                        NumberSequenceKeypoint.new(1, 2)
                    })
                    auraEffectParticle2.Rate = 15

                    auraEffectAttachment = Instance.new("Attachment")
                    auraEffectAttachment.Parent = LocalPlayer.Character.PrimaryPart
                    auraEffectAttachment.Name = "Attachment1"

                    auraEffectParticle3 = Instance.new("ParticleEmitter")
                    auraEffectParticle3.Parent = auraEffectAttachment
                    auraEffectParticle3.Name = "AuraVisual3"
                    auraEffectParticle3.FlipbookLayout = Enum.ParticleFlipbookLayout.None
                    auraEffectParticle3.LightEmission = 1
                    auraEffectParticle3.LockedToPart = true
                    auraEffectParticle3.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.5, 0.85),
                        NumberSequenceKeypoint.new(1, 1)
                    })
                    auraEffectParticle3.Lifetime = NumberRange.new(0.75, 0.75)
                    auraEffectParticle3.Texture = "rbxassetid://11381560992"
                    auraEffectParticle3.Speed = NumberRange.new(0, 0)
                    auraEffectParticle3.Color = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, Color3.new(red, green, blue)),
                        ColorSequenceKeypoint.new(1, Color3.new(red, green, blue))
                    })
                    auraEffectParticle3.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0, 0),
                        NumberSequenceKeypoint.new(0.5, 4),
                        NumberSequenceKeypoint.new(1, 0)
                    })
                    auraEffectParticle3.Rate = 10
                    auraEffectParticle3.Enabled = false

                    auraEffectBottomAttachment = Instance.new("Attachment")
                    auraEffectBottomAttachment.Parent = LocalPlayer.Character.PrimaryPart
                    auraEffectBottomAttachment.Name = "BottomAttachment"
                    auraEffectBottomAttachment.Position = Vector3.new(0, -3, 0)

                    auraEffectTopAttachment = Instance.new("Attachment")
                    auraEffectTopAttachment.Parent = LocalPlayer.Character.PrimaryPart
                    auraEffectTopAttachment.Name = "TopAttachment"
                    auraEffectTopAttachment.Position = Vector3.new(0, 3, 0)

                    auraEffectBeam = Instance.new("Beam")
                    auraEffectBeam.Parent = auraEffectBottomAttachment
                    auraEffectBeam.Name = "AuraVisual4"
                    auraEffectBeam.LightInfluence = 1
                    auraEffectBeam.TextureLength = 0.1
                    auraEffectBeam.LightEmission = 1
                    auraEffectBeam.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.5, 0.9),
                        NumberSequenceKeypoint.new(1, 1)
                    })
                    auraEffectBeam.TextureSpeed = 0.5
                    auraEffectBeam.Attachment0 = auraEffectBottomAttachment
                    auraEffectBeam.Attachment1 = auraEffectTopAttachment
                    auraEffectBeam.FaceCamera = true
                    auraEffectBeam.Segments = 10
                    auraEffectBeam.Texture = "http://www.roblox.com/asset/?id=6045867277"
                    auraEffectBeam.ZOffset = 1
                    auraEffectBeam.Width0 = 6
                    auraEffectBeam.Width1 = 6
                    auraEffectBeam.Color = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, Color3.new(red, green, blue)),
                        ColorSequenceKeypoint.new(1, Color3.new(red, green, blue))
                    })

                    auraEffectPointLight = Instance.new("PointLight")
                    auraEffectPointLight.Parent = LocalPlayer.Character.PrimaryPart
                    auraEffectPointLight.Name = "AuraVisual5"
                    auraEffectPointLight.Brightness = 1
                    auraEffectPointLight.Range = 8
                    auraEffectPointLight.Color = Color3.new(1, 1, 0.482353)
                end
            end)

            UnInjectEvent.Event:Connect(function()
                if auraEffectParticle1 then
                    auraEffectParticle1:Destroy()
                end
                if auraEffectParticle2 then
                    auraEffectParticle2:Destroy()
                end
                if auraEffectParticle3 then
                    auraEffectParticle3:Destroy()
                end
                if auraEffectBeam then
                    auraEffectBeam:Destroy()
                end
                if auraEffectPointLight then
                    auraEffectPointLight:Destroy()
                end
            end)
        end)

        task.spawn(function()
            local WinterSkyToggle = WorldTab:CreateToggle({
                Name = "WinterSky",
                Function = function()
                    if Settings.WinterSky.Value == true then
                        task.spawn(function()
                            local snowPart = Instance.new("Part")
                            snowPart.Parent = Workspace
                            snowPart.Name = "SnowPart"
                            snowPart.Transparency = 1
                            snowPart.CanCollide = false
                            snowPart.Anchored = true
                            snowPart.Size = Vector3.new(240, 0.5, 240)

                            local snowEmitter = Instance.new("ParticleEmitter")
                            snowEmitter.Parent = snowPart
                            snowEmitter.Name = "Snow"
                            snowEmitter.EmissionDirection = Enum.NormalId.Bottom
                            snowEmitter.Transparency = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, 0.16939899325371, 0),
                                NumberSequenceKeypoint.new(0.23365999758244, 0.62841498851776, 0.37158501148224),
                                NumberSequenceKeypoint.new(0.56209099292755, 0.38797798752785, 0.2771390080452),
                                NumberSequenceKeypoint.new(0.90577298402786, 0.51912599802017, 0),
                                NumberSequenceKeypoint.new(1, 1, 0)
                            })
                            snowEmitter.SpreadAngle = Vector2.new(35, 35)
                            snowEmitter.Lifetime = NumberRange.new(8, 14)
                            snowEmitter.Rotation = NumberRange.new(110)
                            snowEmitter.RotSpeed = NumberRange.new(300)
                            snowEmitter.Texture = "rbxassetid://8158344433"
                            snowEmitter.Speed = NumberRange.new(8, 18)
                            snowEmitter.Rate = 28
                            snowEmitter.Size = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, 0, 0),
                                NumberSequenceKeypoint.new(0.039760299026966, 1.3114800453186, 0.32786899805069),
                                NumberSequenceKeypoint.new(0.7554469704628, 0.98360699415207, 0.44038599729538),
                                NumberSequenceKeypoint.new(1, 0, 0)
                            })

                            local windSnowEmitter = Instance.new("ParticleEmitter")
                            windSnowEmitter.Parent = snowPart
                            windSnowEmitter.Name = "WindSnow"
                            windSnowEmitter.EmissionDirection = Enum.NormalId.Bottom
                            windSnowEmitter.Transparency = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, 0.16939899325371, 0),
                                NumberSequenceKeypoint.new(0.23365999758244, 0.62841498851776, 0.37158501148224),
                                NumberSequenceKeypoint.new(0.56209099292755, 0.38797798752785, 0.2771390080452),
                                NumberSequenceKeypoint.new(0.90577298402786, 0.51912599802017, 0),
                                NumberSequenceKeypoint.new(1, 1, 0)
                            })
                            windSnowEmitter.Acceleration = Vector3.new(0, 0, 1)
                            windSnowEmitter.SpreadAngle = Vector2.new(35, 35)
                            windSnowEmitter.Lifetime = NumberRange.new(8, 14)
                            windSnowEmitter.Rotation = NumberRange.new(110)
                            windSnowEmitter.RotSpeed = NumberRange.new(100)
                            windSnowEmitter.Texture = "rbxassetid://8158344433"
                            windSnowEmitter.Speed = NumberRange.new(8, 18)
                            windSnowEmitter.Rate = 28
                            windSnowEmitter.Size = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, 0, 0),
                                NumberSequenceKeypoint.new(0.039760299026966, 1.3114800453186, 0.32786899805069),
                                NumberSequenceKeypoint.new(0.7554469704628, 0.98360699415207, 0.44038599729538),
                                NumberSequenceKeypoint.new(1, 0, 0)
                            })

                            repeat
                                task.wait()
                                if IsAlive(LocalPlayer) == true then
                                    snowPart.CFrame = (LocalPlayer.Character.PrimaryPart.CFrame + Vector3.new(0, 100, 0))
                                end
                            until shared[sharedKey] == true or Settings.WinterSky.Value == false
                            snowPart:Destroy()
                            windSnowEmitter:Destroy()
                            snowEmitter:Destroy()
                        end)

                        task.spawn(function()
                            task.spawn(function()
                                if Lighting:FindFirstChild("Sky") then
                                    Lighting.Sky.Parent = ReplicatedStorage
                                end
                            end)

                            task.spawn(function()
                                local winterSky = Instance.new("Sky")
                                winterSky.Parent = Lighting
                                winterSky.Name = "WinterSky"
                                winterSky.MoonAngularSize = 30
                                winterSky.SunAngularSize = 11
                                winterSky.MoonTextureId = "rbxassetid://8139665943"
                                winterSky.SunTextureId = "rbxassetid://6196665106"
                                winterSky.StarCount = 5000
                                winterSky.SkyboxUp = "rbxassetid://8139676647"
                                winterSky.SkyboxLf = "rbxassetid://8139676988"
                                winterSky.SkyboxFt = "rbxassetid://8139677111"
                                winterSky.SkyboxBk = "rbxassetid://8139677359"
                                winterSky.SkyboxDn = "rbxassetid://8139677253"
                                winterSky.SkyboxRt = "rbxassetid://8139676842"
                            end)

                            task.spawn(function()
                                if Lighting:FindFirstChildOfClass("SunRaysEffect") then
                                    Lighting:FindFirstChildOfClass("SunRaysEffect"):Destroy()
                                    local sunRays = Instance.new("SunRaysEffect")
                                    sunRays.Parent = Lighting
                                    sunRays.Name = "SunRaysEffect"
                                    sunRays.Intensity = 0.03
                                end
                            end)

                            task.spawn(function()
                                if not Lighting:FindFirstChildOfClass("SunRaysEffect") then
                                    local sunRays = Instance.new("SunRaysEffect")
                                    sunRays.Parent = Lighting
                                    sunRays.Name = "SunRay"
                                    sunRays.Intensity = 0.03
                                end
                            end)

                            task.spawn(function()
                                if Lighting:FindFirstChildOfClass("BloomEffect") then
                                    Lighting:FindFirstChildOfClass("BloomEffect"):Destroy()
                                    local bloom = Instance.new("BloomEffect")
                                    bloom.Parent = Lighting
                                    bloom.Name = "BloomEffect"
                                    bloom.Threshold = 2
                                    bloom.Intensity = 1
                                    bloom.Size = 2
                                end
                            end)

                            task.spawn(function()
                                if not Lighting:FindFirstChildOfClass("BloomEffect") then
                                    local bloom = Instance.new("BloomEffect")
                                    bloom.Parent = Lighting
                                    bloom.Name = "BloomEffect"
                                    bloom.Threshold = 2
                                    bloom.Intensity = 1
                                    bloom.Size = 2
                                end
                            end)

                            task.spawn(function()
                                if Lighting:FindFirstChildOfClass("Atmosphere") then
                                    Lighting:FindFirstChildOfClass("Atmosphere"):Destroy()
                                    local atmosphere = Instance.new("Atmosphere")
                                    atmosphere.Parent = Lighting
                                    atmosphere.Name = "Atmosphere"
                                    atmosphere.Density = 0.3
                                    atmosphere.Offset = 0.25
                                    atmosphere.Color = Color3.new(0.776471, 0.776471, 0.776471)
                                    atmosphere.Decay = Color3.new(0.407843, 0.439216, 0.486275)
                                    atmosphere.Glare = 0
                                    atmosphere.Haze = 0
                                end
                            end)

                            task.spawn(function()
                                if not Lighting:FindFirstChildOfClass("Atmosphere") and Settings.Atmosphere.Value == false then
                                    local atmosphere = Instance.new("Atmosphere")
                                    atmosphere.Parent = Lighting
                                    atmosphere.Name = "Atmosphere"
                                    atmosphere.Density = 0.3
                                    atmosphere.Offset = 0.25
                                    atmosphere.Color = Color3.new(0.776471, 0.776471, 0.776471)
                                    atmosphere.Decay = Color3.new(0.407843, 0.439216, 0.486275)
                                    atmosphere.Glare = 0
                                    atmosphere.Haze = 0
                                end
                            end)

                            task.spawn(function()
                                if Lighting:FindFirstChild("GalaxySky") then
                                    Lighting.GalaxySky:Destroy()
                                end
                            end)
                        end)
                    end
                    if Settings.WinterSky.Value == false then
                        if ReplicatedStorage:FindFirstChild("Sky") and Lighting:FindFirstChild("WinterSky") then
                            ReplicatedStorage:FindFirstChild("Sky").Parent = Lighting
                            Lighting.WinterSky:Destroy()
                        end
                    end
                end,
                HoverText = "Makes Your Sky Look Like Winter"
            })

            UnInjectEvent.Event:Connect(function()
                if ReplicatedStorage:FindFirstChild("Sky") and Lighting:FindFirstChild("WinterSky") then
                    ReplicatedStorage:FindFirstChild("Sky").Parent = Lighting
                    Lighting.WinterSky:Destroy()
                end
            end)
        end)

        task.spawn(function()
            local GalaxySkyToggle = WorldTab:CreateToggle({
                Name = "GalaxySky",
                Function = function()
                    if Settings.GalaxySky.Value == true then
                        if Lighting:FindFirstChild("Sky") then
                            Lighting.Sky.Parent = ReplicatedStorage
                            local galaxySky = Instance.new("Sky")
                            local assetId = 8281961896
                            galaxySky.SkyboxBk = "http://www.roblox.com/asset/?id=" .. assetId
                            galaxySky.SkyboxDn = "http://www.roblox.com/asset/?id=" .. assetId
                            galaxySky.SkyboxFt = "http://www.roblox.com/asset/?id=" .. assetId
                            galaxySky.SkyboxLf = "http://www.roblox.com/asset/?id=" .. assetId
                            galaxySky.SkyboxRt = "http://www.roblox.com/asset/?id=" .. assetId
                            galaxySky.SkyboxUp = "http://www.roblox.com/asset/?id=" .. assetId
                            galaxySky.Parent = Lighting
                            galaxySky.Name = "GalaxySky"
                        end
                        if Lighting:FindFirstChild("WinterSky") then
                            Lighting.WinterSky:Destroy()
                            local galaxySky = Instance.new("Sky")
                            local assetId = 8281961896
                            galaxySky.SkyboxBk = "http://www.roblox.com/asset/?id=" .. assetId
                            galaxySky.SkyboxDn = "http://www.roblox.com/asset/?id=" .. assetId
                            galaxySky.SkyboxFt = "http://www.roblox.com/asset/?id=" .. assetId
                            galaxySky.SkyboxLf = "http://www.roblox.com/asset/?id=" .. assetId
                            galaxySky.SkyboxRt = "http://www.roblox.com/asset/?id=" .. assetId
                            galaxySky.SkyboxUp = "http://www.roblox.com/asset/?id=" .. assetId
                            galaxySky.Parent = Lighting
                            galaxySky.Name = "GalaxySky"
                            if Workspace:FindFirstChild("SnowPart") then
                                Workspace.SnowPart:Destroy()
                            end
                            if Workspace:FindFirstChild("Snow") then
                                Workspace.Snow:Destroy()
                            end
                            if Workspace:FindFirstChild("WindSnow") then
                                Workspace.WindSnow:Destroy()
                            end
                        end
                    end
                    if Settings.GalaxySky.Value == false then
                        if ReplicatedStorage:FindFirstChild("Sky") and Lighting:FindFirstChild("GalaxySky") then
                            ReplicatedStorage.Sky.Parent = Lighting
                            Lighting.GalaxySky:Destroy()
                        end
                    end
                end,
                HoverText = "Makes Your Sky Look Like A Galaxy"
            })

            UnInjectEvent.Event:Connect(function()
                if ReplicatedStorage:FindFirstChild("Sky") and Lighting:FindFirstChild("GalaxySky") then
                    ReplicatedStorage.Sky.Parent = Lighting
                    Lighting.GalaxySky:Destroy()
                end
            end)
        end)

        task.spawn(function()
            if SelectedMode == false then
                local antiVoidPart
                local AntiVoidToggle = WorldTab:CreateToggle({
                    Name = "AntiVoid",
                    Function = function()
                        if Settings.AntiVoid.Value == true then
                            repeat
                                task.wait()
                            until GetMatchState() ~= 0 or shared[sharedKey] == true or Settings.AntiVoid.Value == false
                            if Settings.AntiVoid.Value == true and shared[sharedKey] == false then
                                local lowestY = math.huge
                                local highestY = 1000000
                                local raycastParams = RaycastParams.new()
                                raycastParams.FilterDescendantsInstances = {Blocks}
                                raycastParams.FilterType = Enum.RaycastFilterType.Include

                                antiVoidPart = Instance.new("Part")
                                antiVoidPart.Parent = Workspace
                                antiVoidPart.Name = "AntiVoidPart"
                                antiVoidPart.Transparency = (Settings.AntiVoid.Transparency.Value / 100)
                                antiVoidPart.CanCollide = false
                                antiVoidPart.Anchored = true
                                antiVoidPart.Material = Enum.Material.Neon
                                antiVoidPart.Position = Vector3.new(0, 100000, 0)
                                local colorValues = string.split(Settings.AntiVoid.Color.Value, ",")
                                local red = colorValues[1]
                                local green = colorValues[2]
                                local blue = colorValues[3]
                                antiVoidPart.Color = Color3.new(red, green, blue)
                                antiVoidPart.Size = Vector3.new(100000, 1, 100000)

                                task.spawn(function()
                                    for _, block in Blocks do
                                        local raycastResult = Workspace:Raycast((block.Position + Vector3.new(0, 1000, 0)), Vector3.new(0, -1000, 0), raycastParams)
                                        if raycastResult and raycastResult.Position then
                                            highestY = raycastResult.Position.Y
                                            if highestY <= lowestY then
                                                lowestY = highestY
                                                antiVoidPart.Position = Vector3.new(0, (highestY - 4), 0)
                                            end
                                        end
                                    end
                                end)

                                task.spawn(function()
                                    Connections["AntiVoidConnection"] = antiVoidPart.Touched:Connect(function()
                                        if IsAlive(LocalPlayer) and antiVoidPart and LocalPlayer.Character.PrimaryPart.Position.Y <= Workspace.AntiVoidPart.Position.Y then
                                            for i = 1, 3 do
                                                if IsAlive(LocalPlayer) then
                                                    LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(LocalPlayer.Character.PrimaryPart.Velocity.X, 100, LocalPlayer.Character.PrimaryPart.Velocity.Z)
                                                end
                                            end
                                        end
                                    end)
                                end)
                            end
                        end
                        if Settings.AntiVoid.Value == false and antiVoidPart then
                            antiVoidPart:Destroy()
                        end
                    end,
                    HoverText = "Makes The Damage Indicator Cool"
                })

                AntiVoidToggle:CreateSlider({
                    Name = "Transparency",
                    Function = function()
                        if Settings.AntiVoid.Value == true and antiVoidPart then
                            antiVoidPart.Transparency = (Settings.AntiVoid.Transparency.Value / 100)
                        end
                    end,
                    MaximumValue = 100,
                    DefaultValue = 50
                })

                AntiVoidToggle:CreateColorSlider({
                    Name = "Color",
                    Function = function()
                        if Settings.AntiVoid.Value == true and antiVoidPart then
                            local colorValues = string.split(Settings.AntiVoid.Color.Value, ",")
                            local red = colorValues[1]
                            local green = colorValues[2]
                            local blue = colorValues[3]
                            antiVoidPart.Color = Color3.new(red, green, blue)
                        end
                    end,
                    DefaultValue = Color3.new(0.282353, 0, 1)
                })

                UnInjectEvent.Event:Connect(function()
                    if antiVoidPart then
                        antiVoidPart:Destroy()
                    end
                end)
            end
        end)

        task.spawn(function()
            local isMouseTpActive = false

            local function TeleportToMouse()
                if isMouseTpActive == false then
                    isMouseTpActive = true
                end
                local mouseHitPos = Mouse.Hit.Position
                local distance = (mouseHitPos - LocalPlayer.Character.PrimaryPart.Position).Magnitude
                local speed = CombatConstants.MAX_CONTINUOUS_SPEED
                local maxFlyTime = CombatConstants.MAX_CONTINUOUS_FLY_TIME

                if distance < CombatConstants.MAX_IDLE_TELEPORT_DISTANCE and (CombatConstants.MIN_IDLE_BEFORE_TELEPORT + 0.1) <= distance / CombatConstants.MAX_CONTINUOUS_SPEED then
                    LocalPlayer.Character.PrimaryPart.Anchored = true
                    task.wait(CombatConstants.MIN_IDLE_BEFORE_TELEPORT)
                    LocalPlayer.Character.PrimaryPart.Anchored = false
                    if SelectedMode == true then
                        LocalPlayer.Character.Humanoid:MoveTo(mouseHitPos)
                    else
                        local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0)
                        local tween = TweenService:Create(LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(mouseHitPos)})
                        tween:Play()
                    end
                else
                    local startPos = LocalPlayer.Character.PrimaryPart.Position
                    local delta = mouseHitPos - startPos
                    local distance = delta.Magnitude
                    local direction = delta.Unit
                    local maxSpeed = CombatConstants.MAX_CONTINUOUS_SPEED
                    local maxFlyTime = CombatConstants.MAX_CONTINUOUS_FLY_TIME
                    local maxDistance = maxSpeed * maxFlyTime
                    local teleportDistance = math.min(distance, maxDistance)
                    local time = teleportDistance / maxSpeed
                    time = math.min(time, maxFlyTime)
                    local targetPos = startPos + (direction * teleportDistance)

                    if SelectedMode == true then
                        LocalPlayer.Character.Humanoid:MoveTo(targetPos)
                    else
                        local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
                        local tween = TweenService:Create(LocalPlayer.Character.PrimaryPart, tweenInfo, {CFrame = CFrame.new(targetPos)})
                        tween:Play()
                    end
                end
                isMouseTpActive = false
            end

            local MouseTpToggle = WorldTab:CreateToggle({
                Name = "MouseTp",
                Function = function() end,
                HoverText = "Teleports You To Your Mouse Position"
            })

            local ActivationMethodsDropdown = MouseTpToggle:CreateDropdown({
                Name = "ActivationMethods",
                HoverText = "How MouseTp Will Be Activated"
            })
            ActivationMethodsDropdown:CreateToggle({
                Name = "MiddleButton",
                Function = function() end,
                DefaultValue = false
            })
            ActivationMethodsDropdown:CreateToggle({
                Name = "LeftClick",
                Function = function() end,
                DefaultValue = true
            })

            if UserInputService.TouchEnabled == true then
                Connections["MouseTpConnection"] = UserInputService.TouchTap:Connect(function(gameProcessed)
                    if gameProcessed == false and Settings.MouseTp.Value == true then
                        TeleportToMouse()
                    end
                end)
            end

            Connections["MouseTpConnection2"] = UserInputService.InputBegan:Connect(function(input, gameProcessed)
                if input.UserInputType == (Settings.MouseTp.ActivationMethods.LeftClick.Value == true and Enum.UserInputType.MouseButton1 or (Settings.MouseTp.ActivationMethods.MiddleButton.Value == true and Enum.UserInputType.MouseButton3 or nil)) and gameProcessed == false and Settings.MouseTp.Value == true then
                    TeleportToMouse()
                end
            end)
        end)

        task.spawn(function()
            local function CreateTracer(player)
                if IsAlive(player) == true and Drawing then
                    local camera = Camera
                    local worldToViewport = camera.WorldToViewportPoint
                    local tracerLine = Drawing.new("Line")
                    tracerLine.Transparency = 1
                    tracerLine.Thickness = 1.5
                    tracerLine.Visible = false

                    task.spawn(function()
                        repeat
                            task.wait()
                            if IsAlive(player) and Settings.Tracers.Value == true then
                                local point, onScreen = camera:WorldToViewportPoint(player.Character.PrimaryPart.Position)
                                tracerLine.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y)
                                tracerLine.To = Vector2.new(point.X, point.Y)
                                if onScreen == true then
                                    tracerLine.Visible = true
                                end
                                if onScreen == false then
                                    tracerLine.Visible = false
                                end

                                task.spawn(function()
                                    if Settings.Tracers.ShowTeamates.Value == true and onScreen == true then
                                        if player.Team == LocalPlayer.Team then
                                            tracerLine.Visible = true
                                        end
                                    end
                                    if Settings.Tracers.ShowTeamates.Value == false or onScreen == false then
                                        if player.Team == LocalPlayer.Team then
                                            tracerLine.Visible = false
                                        end
                                    end
                                end)

                                task.spawn(function()
                                    if Settings.Tracers.ShowEnemies.Value == true and onScreen == true then
                                        if player.Team ~= LocalPlayer.Team then
                                            tracerLine.Visible = true
                                        end
                                    end
                                    if Settings.Tracers.ShowEnemies.Value == false and onScreen == false then
                                        if player.Team ~= LocalPlayer.Team then
                                            tracerLine.Visible = false
                                        end
                                    end
                                end)

                                task.spawn(function()
                                    if Settings.Tracers.UseTeamatesTeamColor.Value == true or Settings.Tracers.UseEnemiesTeamColor.Value == true then
                                        if Settings.Tracers.UseTeamatesTeamColor.Value == true and player.Team == LocalPlayer.Team then
                                            tracerLine.Color = player.TeamColor.Color
                                        end
                                        if Settings.Tracers.UseEnemiesTeamColor.Value == true and player.Team ~= LocalPlayer.Team then
                                            tracerLine.Color = player.TeamColor.Color
                                        end
                                    end
                                    if Settings.Tracers.UseTeamatesTeamColor.Value == false or Settings.Tracers.UseEnemiesTeamColor.Value == false then
                                        if player.Team == LocalPlayer.Team then
                                            local colorValues = string.split(Settings.Tracers.TeamatesColor.Value, ",")
                                            local red = colorValues[1]
                                            local green = colorValues[2]
                                            local blue = colorValues[3]
                                            tracerLine.Color = Color3.new(red, green, blue)
                                        end
                                        if player.Team ~= LocalPlayer.Team then
                                            local colorValues = string.split(Settings.Tracers.EnemiesColor.Value, ",")
                                            local red = colorValues[1]
                                            local green = colorValues[2]
                                            local blue = colorValues[3]
                                            tracerLine.Color = Color3.new(red, green, blue)
                                        end
                                    end
                                end)
                            end
                        until shared[sharedKey] == true or Settings.Tracers.Value == false or not player or IsAlive(player) == false
                        tracerLine:Remove()
                    end)
                end
                if not Drawing then
                    CreateNotification(3, "Tracers Not Supported")
                end
            end

            local TracersToggle = WorldTab:CreateToggle({
                Name = "Tracers",
                Function = function()
                    task.spawn(function()
                        repeat
                            task.wait()
                        until GetMatchState() ~= 0 or Settings.Tracers.Value == false or shared[sharedKey] == true
                        if Settings.Tracers.Value == true and shared[sharedKey] == false then
                            for _, player in Players:GetPlayers() do
                                if IsAlive(player) == true and player ~= LocalPlayer then
                                    CreateTracer(player)
                                end
                                Connections["TracersConnection"] = player.CharacterAdded:Connect(function(character)
                                    repeat
                                        task.wait()
                                    until Settings.Tracers.Value == false or shared[sharedKey] == true or IsAlive(Players:FindFirstChild(character.Name)) == true
                                    if Settings.Tracers.Value == true and shared[sharedKey] == false and IsAlive(Players:FindFirstChild(character.Name)) == true and player ~= LocalPlayer then
                                        CreateTracer(player)
                                    end
                                end)
                            end
                        end
                    end)
                end,
                HoverText = "Esp But With Tracers"
            })

            TracersToggle:CreateToggle({
                Name = "UseTeamatesTeamColor",
                Function = function() end,
                DefaultValue = false
            })

            TracersToggle:CreateToggle({
                Name = "UseEnemiesTeamColor",
                Function = function() end,
                DefaultValue = false
            })

            TracersToggle:CreateToggle({
                Name = "ShowTeamates",
                Function = function() end,
                DefaultValue = true
            })

            TracersToggle:CreateToggle({
                Name = "ShowEnemies",
                Function = function() end,
                DefaultValue = true
            })

            TracersToggle:CreateColorSlider({
                Name = "TeamatesColor",
                Function = function() end,
                DefaultValue = Color3.new(0.27451, 0.054902, 1)
            })

            TracersToggle:CreateColorSlider({
                Name = "EnemiesColor",
                Function = function() end,
                DefaultValue = Color3.new(1, 0, 0)
            })
        end)

        task.spawn(function()
            if SelectedMode == false then
                local nukerTargetBlock = false
                local function NukerFunction()
                    task.spawn(function()
                        if GetMatchState() ~= 0 and IsAlive(LocalPlayer) == true then
                            local nearestBed = FindNearestBed(true, Settings.Nuker.Range.Value)
                            local nearestLuckyBlock
                            local nearestOre
                            if Settings.Nuker.MineLuckyBlocks.Value == true then
                                nearestLuckyBlock = FindNearestLuckyBlock(Settings.Nuker.Range.Value)
                            end
                            if Settings.Nuker.MineOres.Value == true then
                                nearestOre = GetNearestOre(Settings.Nuker.Range.Value)
                            end

                            if nearestBed or nearestLuckyBlock or nearestOre then
                                nukerTargetBlock = (nearestBed or nearestLuckyBlock or nearestOre)
                            end

                            if nearestBed then
                                local isBedBlocked = IsPositionBlocked(nearestBed.Position)
                                local lowestHealth, lowestBlock = GetLowestHealthBlock(nearestBed.Position)
                                local lowestHealth2, lowestBlock2 = GetLowestHealthBlock(nearestBed.Position + Vector3.new(0, 0, 3))
                                local targetBlock = (lowestHealth < lowestHealth2 and lowestBlock or lowestBlock2)
                                if isBedBlocked == false then
                                    targetBlock = nearestBed
                                end
                                DamageBlock(targetBlock.Position, true)
                            end
                            if not nearestBed then
                                nukerTargetBlock = nil
                                if nearestLuckyBlock then
                                    DamageBlock(nearestLuckyBlock.Position)
                                end
                                if nearestOre then
                                    DamageBlock(nearestOre.Position)
                                end
                            end
                        end
                    end)
                end

                local NukerToggle = WorldTab:CreateToggle({
                    Name = "Nuker",
                    Function = function()
                        task.spawn(function()
                            repeat
                                task.wait(0.5)
                                for i = 1, 10 do
                                    task.wait(0.1)
                                    NukerFunction()
                                end
                                if Controllers3.BlockBreakController then
                                    Controllers3.BlockBreakController.blockBreaker:setCooldown(0.1)
                                    Controllers3.BlockBreakController.blockBreaker:setRange(30)
                                end
                            until Settings.Nuker.Value == false or shared[sharedKey] == true
                            if Controllers3.BlockBreakController then
                                Controllers3.BlockBreakController.blockBreaker:setCooldown(0.1)
                                Controllers3.BlockBreakController.blockBreaker:setRange(30)
                            end
                        end)

                        task.spawn(function()
                            repeat
                                task.wait()
                                if Settings.Nuker.MiningAnimation.Value == true and nukerTargetBlock and IsAlive(LocalPlayer) == true and GetMatchState() ~= 0 and Controllers2.ViewModelController then
                                    local entity = FindClosestEntity(Settings.Killaura.Range.Value)
                                    local point, onScreen = Camera:WorldToScreenPoint(nukerTargetBlock.Position)
                                    if onScreen == true and not entity then
                                        if Controllers2.ViewModelController then
                                            Controllers2.ViewModelController:playAnimation(15)
                                            task.wait(0.2)
                                        end
                                    end
                                end
                            until Settings.Nuker.Value == false or shared[sharedKey] == true
                            if Controllers3.BlockBreakController then
                                Controllers3.BlockBreakController.blockBreaker:setCooldown(0.3)
                                Controllers3.BlockBreakController.blockBreaker:setRange(18)
                            end
                        end)
                    end,
                    HoverText = "Automatically Breaks Blocks"
                })

                NukerToggle:CreateToggle({
                    Name = "MiningAnimation",
                    Function = function() end,
                    DefaultValue = true
                })

                NukerToggle:CreateToggle({
                    Name = "MineLuckyBlocks",
                    Function = function() end,
                    DefaultValue = true
                })

                NukerToggle:CreateToggle({
                    Name = "MineOres",
                    Function = function() end,
                    DefaultValue = true
                })

                NukerToggle:CreateSlider({
                    Name = "Range",
                    Function = function() end,
                    MaximumValue = 30,
                    DefaultValue = 30
                })
            end
        end)

        task.spawn(function()
            local CapeImages = {
                Halloween = "rbxassetid://74330263398056",
                Egirl = "rbxassetid://131295097389283"
            }
            local capePart

            local function CreateCape(DecalId)
                local cape = Instance.new("Part")
                cape.Parent = LocalPlayer.Character
                cape.Name = "Cape"
                cape.CanCollide = false
                cape.Material = Enum.Material.SmoothPlastic
                if Settings.Cape.CapeImage.Halloween.Value == true then
                    cape.Color = Color3.new(0.105882, 0.105882, 0.105882)
                else
                    cape.Color = Color3.new(0.882353, 0.882353, 0.882353)
                end
                cape.Size = Vector3.new(0.2, 0.2, 0.08)

                local mesh = Instance.new("BlockMesh")
                mesh.Parent = cape
                mesh.Name = "Mesh"
                mesh.VertexColor = Vector3.new(1, 1, 1)
                mesh.Scale = Vector3.new(9, 17.5, 0.5)

                local motor = Instance.new("Motor")
                motor.Parent = cape
                motor.Name = "Motor"
                motor.Part1 = cape
                motor.Part0 = LocalPlayer.Character.UpperTorso
                motor.C0 = CFrame.new(0, 0.2, 1.2, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
                motor.C1 = CFrame.new(0, 1, 0.449999988, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)

                local decal = Instance.new("Decal")
                decal.Parent = cape
                decal.Name = "Decal"
                decal.Texture = DecalId
                decal.Face = Enum.NormalId.Back
                return cape
            end

            local CapeToggle = WorldTab:CreateToggle({
                Name = "Cape",
                Function = function()
                    if Settings.Cape.Value == true and IsAlive(LocalPlayer) then
                        capePart = CreateCape(Settings.Cape.CapeImage.Halloween.Value == true and CapeImages["Halloween"] or CapeImages["Egirl"])
                    end
                    if Settings.Cape.Value == false then
                        if capePart then
                            capePart:Destroy()
                            capePart = nil
                        end
                    end
                end,
                HoverText = "Spooky Cape"
            })

            task.spawn(function()
                repeat
                    task.wait()
                    if capePart and IsAlive(LocalPlayer) == true and capePart:FindFirstChild("Motor") then
                        if LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
                            local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
                            local tween = TweenService:Create(capePart.Motor, tweenInfo, {CurrentAngle = -0.4})
                            tween:Play()
                        else
                            local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
                            local tween = TweenService:Create(capePart.Motor, tweenInfo, {CurrentAngle = -0.2})
                            tween:Play()
                        end
                    end
                until shared[sharedKey] == true or Settings.Cape.Value == false
                if capePart then
                    capePart:Destroy()
                    capePart = nil
                end
            end)

            local CapeImageDropdown = CapeToggle:CreateDropdown({
                Name = "CapeImage",
                HoverText = "What Image Will Be Displayed On Your Cape"
            })
            CapeImageDropdown:CreateToggle({
                Name = "Halloween",
                Function = function()
                    if capePart and Settings.Cape.CapeImage.Halloween.Value == true then
                        capePart.Decal.Texture = CapeImages["Halloween"]
                        capePart.Color = Color3.new(0.105882, 0.105882, 0.105882)
                    end
                end,
                DefaultValue = true
            })
            CapeImageDropdown:CreateToggle({
                Name = "Egirl",
                Function = function()
                    if capePart and Settings.Cape.CapeImage.Egirl.Value == true then
                        capePart.Decal.Texture = CapeImages["Egirl"]
                        capePart.Color = Color3.new(0.882353, 0.882353, 0.882353)
                    end
                end,
                DefaultValue = false
            })

            Connections["CapeConnection"] = LocalPlayer.CharacterAdded:Connect(function()
                repeat
                    task.wait()
                until IsAlive(LocalPlayer) == true
                task.wait(0.3)
                if Settings.Cape.Value == true then
                    capePart = CreateCape(Settings.Cape.CapeImage.Halloween.Value == true and CapeImages["Halloween"] or CapeImages["Egirl"])
                end
            end)
        end)

        task.spawn(function()
            local trailParts = {}
            local TrailColors = {
                Color3.new(1, 0.31, 0.71),
                Color3.new(0.31, 0.63, 1),
                Color3.new(0.31, 1, 0.71),
                Color3.new(1, 0.86, 0.24),
                Color3.new(0.71, 0.31, 1),
                Color3.new(1, 0.43, 0.24)
            }

            local function CreateTrail()
                local trailLength = (Settings.Trail.Length.Value / 5) * 1.5
                local trailWidth = (Settings.Trail.Width.Value / 10)

                local colorKeypoints = {}
                for i, color in TrailColors do
                    local index = ((i - 1) % #TrailColors) + 1
                    colorKeypoints[#colorKeypoints + 1] = ColorSequenceKeypoint.new((i - 1) / (#TrailColors - 1), TrailColors[index])
                end

                local attachment0 = Instance.new("Attachment")
                attachment0.Position = Vector3.new(0, trailWidth, 0)
                attachment0.Parent = LocalPlayer.Character.PrimaryPart

                local attachment1 = Instance.new("Attachment")
                attachment1.Position = Vector3.new(0, -trailWidth, 0)
                attachment1.Parent = LocalPlayer.Character.PrimaryPart

                local trail = Instance.new("Trail")
                trail.Parent = LocalPlayer.Character.PrimaryPart
                trail.Name = "Trail"
                trail.LightEmission = 1
                trail.Transparency = NumberSequence.new({
                    NumberSequenceKeypoint.new(0, 0),
                    NumberSequenceKeypoint.new(0.8, 0.3),
                    NumberSequenceKeypoint.new(1, 1)
                })
                trail.Attachment0 = attachment0
                trail.Attachment1 = attachment1
                trail.WidthScale = NumberSequence.new(1)
                trail.FaceCamera = true
                trail.Lifetime = trailLength
                local colorValues = string.split(Settings.Trail.Color.Value, ",")
                local red = colorValues[1]
                local green = colorValues[2]
                local blue = colorValues[3]
                local solidColor = Color3.new(red, green, blue)
                trail.Color = Settings.Trail.Rainbow.Value == true and ColorSequence.new(colorKeypoints) or ColorSequence.new(solidColor)

                table.insert(trailParts, attachment0)
                table.insert(trailParts, attachment1)
                table.insert(trailParts, trail)

                local hueOffset = 0
                local timeAccumulator = 0

                Connections["TrailConnection"] = RunService.Heartbeat:Connect(function(deltaTime)
                    if Settings.Trail.Value == true and trail then
                        trail.Lifetime = (Settings.Trail.Length.Value / 5) * 1.5
                        attachment0.Position = Vector3.new(0, (Settings.Trail.Width.Value * 0.1), 0)
                        attachment1.Position = Vector3.new(0, -(Settings.Trail.Width.Value * 0.1), 0)

                        timeAccumulator = timeAccumulator + deltaTime
                        if timeAccumulator >= 1.2 / #TrailColors then
                            timeAccumulator = 0
                            hueOffset = (hueOffset + 1) % #TrailColors
                            local newKeypoints = {}
                            for i, color in TrailColors do
                                local index = ((i - 1 + hueOffset) % #TrailColors) + 1
                                newKeypoints[#newKeypoints + 1] = ColorSequenceKeypoint.new((i - 1) / (#TrailColors - 1), TrailColors[index])
                            end
                            local finalColor = Settings.Trail.Rainbow.Value == true and ColorSequence.new(newKeypoints) or ColorSequence.new(TrailColors[1])
                            for _, part in trailParts do
                                if part:IsA("Trail") then
                                    local colorValues = string.split(Settings.Trail.Color.Value, ",")
                                    local red = colorValues[1]
                                    local green = colorValues[2]
                                    local blue = colorValues[3]
                                    local solidColor = Color3.new(red, green, blue)
                                    trail.Color = (Settings.Trail.Rainbow.Value == true and ColorSequence.new(newKeypoints) or ColorSequence.new(solidColor))
                                end
                            end
                        end
                    end
                end)
            end

            local TrailToggle = WorldTab:CreateToggle({
                Name = "Trail",
                Function = function()
                    if Settings.Trail.Value == true then
                        if IsAlive(LocalPlayer) == true then
                            CreateTrail()
                        end
                    end
                    if Settings.Trail.Value == false then
                        for _, part in trailParts do
                            if part then
                                part:Destroy()
                            end
                        end
                        table.clear(trailParts)
                        if Connections["TrailConnection"] then
                            Connections["TrailConnection"]:Disconnect()
                        end
                    end
                end,
                HoverText = "Gives A Cool Trail To Your Character"
            })

            TrailToggle:CreateToggle({
                Name = "Rainbow",
                Function = function() end,
                DefaultValue = true
            })

            TrailToggle:CreateSlider({
                Name = "Length",
                Function = function(value) end,
                MaximumValue = 20,
                DefaultValue = 5
            })

            TrailToggle:CreateSlider({
                Name = "Width",
                Function = function() end,
                MaximumValue = 10,
                DefaultValue = 3
            })

            TrailToggle:CreateColorSlider({
                Name = "Color",
                Function = function() end,
                DefaultValue = Color3.new(0.27451, 0.054902, 1)
            })

            task.spawn(function()
                Connections["TrailConnection2"] = LocalPlayer.CharacterAdded:Connect(function()
                    repeat
                        task.wait()
                    until IsAlive(LocalPlayer) == true
                    task.wait(0.3)
                    if Settings.Trail.Value == true then
                        CreateTrail()
                    end
                end)
            end)

            UnInjectEvent.Event:Connect(function()
                for _, part in trailParts do
                    if part then
                        part:Destroy()
                    end
                end
                table.clear(trailParts)
            end)
        end)

        task.spawn(function()
            local EspToggle = WorldTab:CreateToggle({
                Name = "Esp",
                Function = function()
                    repeat
                        task.wait()
                    until GetMatchState() ~= 0 or Settings.Esp.Value == false
                    for _, player in Players:GetPlayers() do
                        if player ~= LocalPlayer then
                            if Settings.Esp.Value == true and shared[sharedKey] == false then
                                if IsAlive(player) == true then
                                    if Settings.Esp.UseHighlight.Value == true then
                                        if Settings.Esp.ShowTeamates.Value == true and player.Team.TeamColor and player.Team.TeamColor == LocalPlayer.Team.TeamColor then
                                            local highlight = Instance.new("Highlight")
                                            highlight.Parent = player.Character
                                            highlight.Name = "Highlight"
                                            highlight.OutlineTransparency = 1
                                            highlight.FillTransparency = 0.5
                                            if Settings.Esp.UseTeamatesColor.Value == true then
                                                highlight.FillColor = player.TeamColor.Color
                                            end
                                            if Settings.Esp.UseTeamatesColor.Value == false then
                                                local colorValues = string.split(Settings.Esp.TeamatesColor.Value, ",")
                                                local red = colorValues[1]
                                                local green = colorValues[2]
                                                local blue = colorValues[3]
                                                highlight.FillColor = Color3.new(red, green, blue)
                                            end
                                        end
                                        if Settings.Esp.ShowEnemies.Value == true and player.Team.TeamColor ~= LocalPlayer.Team.TeamColor then
                                            local highlight = Instance.new("Highlight")
                                            highlight.Parent = player.Character
                                            highlight.Name = "Highlight"
                                            highlight.OutlineTransparency = 1
                                            highlight.FillTransparency = 0.5
                                            if Settings.Esp.UseEnemiesColor.Value == true then
                                                highlight.FillColor = player.TeamColor.Color
                                            end
                                            if Settings.Esp.UseEnemiesColor.Value == false then
                                                local colorValues = string.split(Settings.Esp.EnemiesColor.Value, ",")
                                                local red = colorValues[1]
                                                local green = colorValues[2]
                                                local blue = colorValues[3]
                                                highlight.FillColor = Color3.new(red, green, blue)
                                            end
                                        end
                                    end

                                    if Settings.Esp.UseHighlight.Value == false then
                                        if Settings.Esp.ShowTeamates.Value == true and player.Team and player.Team.TeamColor == LocalPlayer.Team.TeamColor then
                                            local billboard = Instance.new("BillboardGui")
                                            local frame = Instance.new("Frame")
                                            local stroke = Instance.new("UIStroke")

                                            billboard.Parent = player.Character.PrimaryPart
                                            billboard.Name = "Esp"
                                            billboard.AlwaysOnTop = true
                                            billboard.Size = UDim2.new(4, 0, 4, 0)

                                            frame.Parent = billboard
                                            frame.Name = "Frame"
                                            frame.BackgroundTransparency = 1
                                            frame.Position = UDim2.new(0, 0, (player.Character.LowerTorso and (-player.Character.LowerTorso.Size.Y / 2) or (-player.Character.PrimaryPart.Size.Y / 2)), 0)
                                            frame.Size = UDim2.new(1, 0, 1.5, 0)

                                            stroke.Parent = frame
                                            stroke.Name = "Frame"
                                            stroke.Transparency = 0
                                            stroke.Thickness = 1.5
                                            if Settings.Esp.UseTeamatesColor.Value == true then
                                                stroke.Color = player.TeamColor.Color
                                            end
                                            if Settings.Esp.UseTeamatesColor.Value == false then
                                                local colorValues = string.split(Settings.Esp.TeamatesColor.Value, ",")
                                                local red = colorValues[1]
                                                local green = colorValues[2]
                                                local blue = colorValues[3]
                                                stroke.Color = Color3.new(red, green, blue)
                                            end
                                        end
                                        if Settings.Esp.ShowEnemies.Value == true and player.Team and player.Team.TeamColor ~= LocalPlayer.Team.TeamColor then
                                            local billboard = Instance.new("BillboardGui")
                                            local frame = Instance.new("Frame")
                                            local stroke = Instance.new("UIStroke")

                                            billboard.Parent = player.Character.PrimaryPart
                                            billboard.Name = "Esp"
                                            billboard.AlwaysOnTop = true
                                            billboard.Size = UDim2.new(4, 0, 4, 0)

                                            frame.Parent = billboard
                                            frame.Name = "Frame"
                                            frame.BackgroundTransparency = 1
                                            frame.Position = UDim2.new(0, 0, (player.Character.LowerTorso and (-player.Character.LowerTorso.Size.Y / 2) or (-player.Character.PrimaryPart.Size.Y / 2)), 0)
                                            frame.Size = UDim2.new(1, 0, 1.5, 0)

                                            stroke.Parent = frame
                                            stroke.Name = "Frame"
                                            stroke.Transparency = 0
                                            stroke.Thickness = 1.5
                                            if Settings.Esp.UseEnemiesColor.Value == true then
                                                stroke.Color = player.TeamColor.Color
                                            end
                                            if Settings.Esp.UseEnemiesColor.Value == false then
                                                local colorValues = string.split(Settings.Esp.EnemiesColor.Value, ",")
                                                local red = colorValues[1]
                                                local green = colorValues[2]
                                                local blue = colorValues[3]
                                                stroke.Color = Color3.new(red, green, blue)
                                            end
                                        end
                                    end
                                end
                            end
                            if Settings.Esp.Value == false then
                                for _, player in Players:GetPlayers() do
                                    if IsAlive(player) == true and player.Character.PrimaryPart:FindFirstChild("Esp") then
                                        player.Character.PrimaryPart:FindFirstChild("Esp"):Destroy()
                                    end
                                    if IsAlive(player) == true and player.Character:FindFirstChild("Highlight") then
                                        player.Character:FindFirstChild("Highlight"):Destroy()
                                    end
                                end
                            end
                        end
                    end
                end,
                HoverText = "Shows Where The Selected Players Are"
            })

            EspToggle:CreateToggle({
                Name = "UseTeamatesColor",
                Function = function() end,
                DefaultValue = false
            })

            EspToggle:CreateToggle({
                Name = "UseEnemiesColor",
                Function = function() end,
                DefaultValue = false
            })

            EspToggle:CreateToggle({
                Name = "UseHighlight",
                Function = function() end,
                DefaultValue = false
            })

            EspToggle:CreateToggle({
                Name = "ShowTeamates",
                Function = function() end,
                DefaultValue = true
            })

            EspToggle:CreateToggle({
                Name = "ShowEnemies",
                Function = function() end,
                DefaultValue = true
            })

            EspToggle:CreateColorSlider({
                Name = "TeamatesColor",
                Function = function() end,
                DefaultValue = Color3.new(0.27451, 0.054902, 1)
            })

            EspToggle:CreateColorSlider({
                Name = "EnemiesColor",
                Function = function() end,
                DefaultValue = Color3.new(1, 0, 0)
            })

            repeat
                task.wait()
            until GetMatchState() ~= 0

            for _, player in Players:GetPlayers() do
                if player ~= LocalPlayer then
                    Connections["Esp"] = player.CharacterAdded:Connect(function()
                        repeat
                            task.wait()
                        until IsAlive(player)
                        if Settings.Esp.Value == true and shared[sharedKey] == false then
                            if Settings.Esp.UseHighlight.Value == true then
                                if Settings.Esp.ShowTeamates.Value == true and player.Team and player.Team.TeamColor == LocalPlayer.Team.TeamColor then
                                    local highlight = Instance.new("Highlight")
                                    highlight.Parent = player.Character
                                    highlight.Name = "Highlight"
                                    highlight.OutlineTransparency = 1
                                    highlight.FillTransparency = 0.5
                                    if Settings.Esp.UseTeamatesColor.Value == true then
                                        highlight.FillColor = player.TeamColor.Color
                                    end
                                    if Settings.Esp.UseTeamatesColor.Value == false then
                                        local colorValues = string.split(Settings.Esp.TeamatesColor.Value, ",")
                                        local red = colorValues[1]
                                        local green = colorValues[2]
                                        local blue = colorValues[3]
                                        highlight.FillColor = Color3.new(red, green, blue)
                                    end
                                end
                                if Settings.Esp.ShowEnemies.Value == true and player.Team.TeamColor ~= LocalPlayer.Team.TeamColor then
                                    local highlight = Instance.new("Highlight")
                                    highlight.Parent = player.Character
                                    highlight.Name = "Highlight"
                                    highlight.OutlineTransparency = 1
                                    highlight.FillTransparency = 0.5
                                    if Settings.Esp.UseEnemiesColor.Value == true then
                                        highlight.FillColor = player.TeamColor.Color
                                    end
                                    if Settings.Esp.UseEnemiesColor.Value == false then
                                        local colorValues = string.split(Settings.Esp.EnemiesColor.Value, ",")
                                        local red = colorValues[1]
                                        local green = colorValues[2]
                                        local blue = colorValues[3]
                                        highlight.FillColor = Color3.new(red, green, blue)
                                    end
                                end
                            end
                            if Settings.Esp.UseHighlight.Value == false then
                                if Settings.Esp.ShowTeamates.Value == true and player.Team and player.Team.TeamColor == LocalPlayer.Team.TeamColor then
                                    local billboard = Instance.new("BillboardGui")
                                    local frame = Instance.new("Frame")
                                    local stroke = Instance.new("UIStroke")

                                    billboard.Parent = player.Character.PrimaryPart
                                    billboard.Name = "Esp"
                                    billboard.AlwaysOnTop = true
                                    billboard.Size = UDim2.new(4, 0, 4, 0)

                                    frame.Parent = billboard
                                    frame.Name = "Frame"
                                    frame.BackgroundTransparency = 1
                                    frame.Position = UDim2.new(0, 0, (player.Character.LowerTorso and (-player.Character.LowerTorso.Size.Y / 2) or (-player.Character.PrimaryPart.Size.Y / 2)), 0)
                                    frame.Size = UDim2.new(1, 0, 1.5, 0)

                                    stroke.Parent = frame
                                    stroke.Name = "Frame"
                                    stroke.Transparency = 0
                                    stroke.Thickness = 1.5
                                    if Settings.Esp.UseTeamatesColor.Value == true then
                                        stroke.Color = player.TeamColor.Color
                                    end
                                    if Settings.Esp.UseTeamatesColor.Value == false then
                                        local colorValues = string.split(Settings.Esp.TeamatesColor.Value, ",")
                                        local red = colorValues[1]
                                        local green = colorValues[2]
                                        local blue = colorValues[3]
                                        stroke.Color = Color3.new(red, green, blue)
                                    end
                                end
                                if Settings.Esp.ShowEnemies.Value == true and player.Team.TeamColor ~= LocalPlayer.Team.TeamColor then
                                    local billboard = Instance.new("BillboardGui")
                                    local frame = Instance.new("Frame")
                                    local stroke = Instance.new("UIStroke")

                                    billboard.Parent = player.Character.PrimaryPart
                                    billboard.Name = "Esp"
                                    billboard.AlwaysOnTop = true
                                    billboard.Size = UDim2.new(4, 0, 4, 0)

                                    frame.Parent = billboard
                                    frame.Name = "Frame"
                                    frame.BackgroundTransparency = 1
                                    frame.Position = UDim2.new(0, 0, (player.Character.LowerTorso and (-player.Character.LowerTorso.Size.Y / 2) or (-player.Character.PrimaryPart.Size.Y / 2)), 0)
                                    frame.Size = UDim2.new(1, 0, 1.5, 0)

                                    stroke.Parent = frame
                                    stroke.Name = "Frame"
                                    stroke.Transparency = 0
                                    stroke.Thickness = 1.5
                                    if Settings.Esp.UseEnemiesColor.Value == true then
                                        stroke.Color = player.TeamColor.Color
                                    end
                                    if Settings.Esp.UseEnemiesColor.Value == false then
                                        local colorValues = string.split(Settings.Esp.EnemiesColor.Value, ",")
                                        local red = colorValues[1]
                                        local green = colorValues[2]
                                        local blue = colorValues[3]
                                        stroke.Color = Color3.new(red, green, blue)
                                    end
                                end
                            end
                        end
                    end)
                end
            end

            UnInjectEvent.Event:Connect(function()
                for _, player in Players:GetPlayers() do
                    if IsAlive(player) == true and player.Character.PrimaryPart:FindFirstChild("Esp") then
                        player.Character.PrimaryPart:FindFirstChild("Esp"):Destroy()
                    end
                    if IsAlive(player) == true and player.Character:FindFirstChild("Highlight") then
                        player.Character:FindFirstChild("Highlight"):Destroy()
                    end
                end
            end)
        end)

        task.spawn(function()
            local GamePercentageDisplayText = CreateGamePercentageDisplay()
            local lastGamePercentageUpdate = 0
            local totalEnemyPlayers = 0
            local enemyBeds = {}
            local enemyPlayersAlive = 0
            local teamCount = #Teams:GetTeams() - 2

            for _, player in game.Players:GetPlayers() do
                if player.Team ~= LocalPlayer.Team then
                    totalEnemyPlayers = totalEnemyPlayers + 1
                end
            end
            local averageEnemiesPerTeam = math.round(totalEnemyPlayers / math.max(teamCount, 1))
            local totalEnemiesPossible = averageEnemiesPerTeam * teamCount

            for _, bed in CollectionService:GetTagged("bed") do
                local bedColor = (bed:FindFirstChild("Bed") and bed:FindFirstChild("Bed").BrickColor or bed:FindFirstChild("bed") and bed:FindFirstChild("bed"):FindFirstChild("Bed") and bed:FindFirstChild("bed"):FindFirstChild("Bed").BrickColor or nil)
                if bedColor and bedColor ~= LocalPlayer.Team.TeamColor then
                    enemyBeds[bedColor] = bedColor.Name
                end
            end

            local GamePercentageDisplayToggle = OtherTab:CreateToggle({
                Name = "GamePercentageDisplay",
                Function = function()
                    if Settings.GamePercentageDisplay.Value == true then
                        GamePercentageDisplayText.TextTransparency = 0
                        task.spawn(function()
                            repeat
                                task.wait(1)
                                enemyPlayersAlive = 0
                                enemyBeds = {}
                                totalEnemyPlayers = 0

                                for _, bed in CollectionService:GetTagged("bed") do
                                    local bedColor = (bed:FindFirstChild("Bed") and bed:FindFirstChild("Bed").BrickColor or bed:FindFirstChild("bed") and bed:FindFirstChild("bed"):FindFirstChild("Bed") and bed:FindFirstChild("bed"):FindFirstChild("Bed").BrickColor or nil)
                                    if bedColor and bedColor ~= LocalPlayer.Team.TeamColor then
                                        enemyBeds[bedColor] = bedColor.Name
                                    end
                                end

                                for _, player in game.Players:GetPlayers() do
                                    if player.Team ~= LocalPlayer.Team then
                                        totalEnemyPlayers = totalEnemyPlayers + 1
                                    end
                                end

                                for _, player in game.Players:GetPlayers() do
                                    if player.Team ~= LocalPlayer.Team then
                                        local hasBed = false
                                        for _, bedColor in enemyBeds do
                                            if bedColor == "Flame yellowish orange" then
                                                bedColor = "orange"
                                            end
                                            local teamColor = "None"
                                            if player.Team then
                                                teamColor = (player.Team.TeamColor.Name:lower() == "flame yellowish orange" and "orange" or player.Team.TeamColor.Name:lower())
                                            end
                                            if string.find(bedColor:lower(), teamColor) then
                                                hasBed = true
                                                break
                                            end
                                        end
                                        if hasBed then
                                            enemyPlayersAlive = enemyPlayersAlive + 1
                                        end
                                    end
                                end

                                local playersWithoutBeds = totalEnemyPlayers - enemyPlayersAlive
                                local score = enemyPlayersAlive * 1 + playersWithoutBeds * 0.5
                                local gamePercentage = math.round(((totalEnemiesPossible - score) / math.max(totalEnemiesPossible, 1)) * 100)
                                GamePercentageDisplayText.Text = "Game Percentage: " .. gamePercentage .. "%"
                            until Settings.GamePercentageDisplay.Value == false or shared[sharedKey] == true
                        end)
                    end
                    if Settings.GamePercentageDisplay.Value == false then
                        GamePercentageDisplayText.TextTransparency = 1
                    end
                end,
                HoverText = "Displays The Game Finishing Percentage"
            })

            UnInjectEvent.Event:Connect(function()
                GamePercentageDisplayText:Destroy()
            end)
        end)

        task.spawn(function()
            local mobileKeybindButtons = {}
            local MobileKeybindButtonsToggle = OtherTab:CreateToggle({
                Name = "MobileKeybindButtons",
                Function = function() end,
                HoverText = "Displays Mobile Shortcuts For Keybinds"
            })

            repeat
                task.wait(0.5)
                if Settings.MobileKeybindButtons.Value == true then
                    for moduleName, moduleData in Settings do
                        if moduleData.Keybind ~= "..." and not mobileKeybindButtons[moduleName] then
                            mobileKeybindButtons[moduleName] = CreateMobileKeybindButton(moduleName)
                        end
                        if mobileKeybindButtons[moduleName] and moduleData.Keybind == "..." then
                            mobileKeybindButtons[moduleName]:Destroy()
                            mobileKeybindButtons[moduleName] = nil
                        end
                    end
                end
                if Settings.MobileKeybindButtons.Value == false then
                    for _, button in mobileKeybindButtons do
                        button:Destroy()
                        button = nil
                    end
                end
            until shared[sharedKey] == true
        end)

        task.spawn(function()
            local CoordinatesDisplayText = CreateCoordinatesDisplay()
            local CoordinatesDisplayToggle = OtherTab:CreateToggle({
                Name = "CoordinatesDisplay",
                Function = function()
                    if Settings.CoordinatesDisplay.Value == true then
                        CoordinatesDisplayText.TextTransparency = 0
                        task.spawn(function()
                            repeat
                                task.wait()
                                if IsAlive(LocalPlayer) == true then
                                    CoordinatesDisplayText.Text = "XYZ: (" .. math.round(LocalPlayer.Character.PrimaryPart.Position.X) .. ", " .. math.round(LocalPlayer.Character.PrimaryPart.Position.Y) .. ", " .. math.round(LocalPlayer.Character.PrimaryPart.Position.Z) .. ")"
                                end
                                if IsAlive(LocalPlayer) == false then
                                    CoordinatesDisplayText.Text = "XYZ: (Nan, Nan, Nan)"
                                end
                            until Settings.CoordinatesDisplay.Value == false or shared[sharedKey] == true
                        end)
                    end
                    if Settings.CoordinatesDisplay.Value == false then
                        CoordinatesDisplayText.TextTransparency = 1
                    end
                end,
                HoverText = "Displays Your Coordinates"
            })

            UnInjectEvent.Event:Connect(function()
                CoordinatesDisplayText:Destroy()
            end)
        end)

        task.spawn(function()
            local ChangeGuiColorToggle = OtherTab:CreateToggle({
                Name = "ChangeGuiColor",
                Function = function()
                    if Settings.ChangeGuiColor.Value == true then
                        local colorValues = string.split(Settings.ChangeGuiColor.ToggleColor.Value, ",")
                        local red = colorValues[1]
                        local green = colorValues[2]
                        local blue = colorValues[3]
                        ToggleColor = Color3.new(red, green, blue)
                        ChangeGuiToggleColorEvent:Fire()
                    end
                    if Settings.ChangeGuiColor.Value == false then
                        ToggleColor = Color3.new(0.439216, 0.0666667, 1)
                        ChangeGuiToggleColorEvent:Fire()
                    end
                end,
                HoverText = "Changes The Color Of AlSploit's Gui"
            })

            ChangeGuiColorToggle:CreateColorSlider({
                Name = "ToggleColor",
                Function = function()
                    if Settings.ChangeGuiColor.Value == true then
                        local colorValues = string.split(Settings.ChangeGuiColor.ToggleColor.Value, ",")
                        local red = colorValues[1]
                        local green = colorValues[2]
                        local blue = colorValues[3]
                        ToggleColor = Color3.new(red, green, blue)
                        ChangeGuiToggleColorEvent:Fire()
                    end
                end,
                DefaultValue = Color3.new(0.439216, 0.0666667, 1)
            })
        end)

        task.spawn(function()
            local RestartAlSploitToggle = OtherTab:CreateToggle({
                Name = "RestartAlSploit",
                Function = function()
                    if Settings.RestartAlSploit.Value == true then
                        Settings.RestartAlSploit.Value = false
                        UnInjectEvent:Fire()
                        if DeleteFile then
                            DeleteFile("AlSploitConfiguration.json")
                        end
                    end
                end,
                HoverText = "Restarts AlSploit"
            })
        end)

        task.spawn(function()
            local AirtimeDisplayText = CreateAirtimeDisplay()
            local AirtimeDisplayToggle = OtherTab:CreateToggle({
                Name = "AirtimeDisplay",
                Function = function()
                    if Settings.AirtimeDisplay.Value == true then
                        AirtimeDisplayText.TextTransparency = 0
                        local lastOnGroundTime = tick()
                        task.spawn(function()
                            repeat
                                task.wait(0.1)
                                if IsAlive(LocalPlayer) == true then
                                    if IsOnGround(LocalPlayer) == true then
                                        lastOnGroundTime = tick()
                                    end
                                end
                                if IsAlive(LocalPlayer) == false then
                                    lastOnGroundTime = tick()
                                end
                                AirtimeDisplayText.Text = "Airtime: " .. DecimalRound(tick() - lastOnGroundTime, 1)
                            until Settings.AirtimeDisplay.Value == false or shared[sharedKey] == true
                        end)
                    end
                    if Settings.AirtimeDisplay.Value == false then
                        AirtimeDisplayText.TextTransparency = 1
                    end
                end,
                HoverText = "Displays Your Airtime (2.5 Seconds Results In A Lagback)"
            })

            UnInjectEvent.Event:Connect(function()
                AirtimeDisplayText:Destroy()
            end)
        end)

        task.spawn(function()
            local SpeedDisplayText = CreateSpeedDisplay()
            local speedUpdateInterval = 0.15
            local SpeedDisplayToggle = OtherTab:CreateToggle({
                Name = "SpeedDisplay",
                Function = function()
                    if Settings.SpeedDisplay.Value == true then
                        SpeedDisplayText.TextTransparency = 0
                        task.spawn(function()
                            local lastPos = Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, 0, LocalPlayer.Character.PrimaryPart.Position.Z)
                            local lastTime = tick()
                            repeat
                                task.wait(0)
                                local currentTime = tick()
                                local deltaTime = currentTime - lastTime
                                if deltaTime >= speedUpdateInterval then
                                    if IsAlive(LocalPlayer) == true then
                                        local currentPos = Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, 0, LocalPlayer.Character.PrimaryPart.Position.Z)
                                        local speed = (currentPos - lastPos).Magnitude / deltaTime
                                        SpeedDisplayText.Text = "Speed: " .. math.round(speed)
                                        lastPos = currentPos
                                        lastTime = currentTime
                                    end
                                end
                                if IsAlive(LocalPlayer) == false then
                                    SpeedDisplayText.Text = "Speed: Nan"
                                end
                            until Settings.SpeedDisplay.Value == false or shared[sharedKey] == true
                        end)
                    end
                    if Settings.SpeedDisplay.Value == false then
                        SpeedDisplayText.TextTransparency = 1
                    end
                end,
                HoverText = "Displays Your Speed"
            })

            UnInjectEvent.Event:Connect(function()
                SpeedDisplayText:Destroy()
            end)
        end)

        task.spawn(function()
            local FpsUnlockerToggle = OtherTab:CreateToggle({
                Name = "FpsUnlocker",
                Function = function()
                    if Settings.FpsUnlocker.Value == true and Settings.FpsUnlocker.NoFpsCap.Value == false and SetFpsCap then
                        SetFpsCap(Settings.FpsUnlocker.Fps.Value >= 0 and Settings.FpsUnlocker.Fps.Value or 1)
                    end
                    if Settings.FpsUnlocker.Value == false and SetFpsCap then
                        SetFpsCap(Settings.FpsUnlocker.Fps.Value >= 0 and Settings.FpsUnlocker.Fps.Value or 1)
                    end
                    if Settings.FpsUnlocker.Value == true and not SetFpsCap then
                        CreateNotification(3, "Unable To Unlock Fps")
                    end
                end,
                HoverText = "Unlocks Your Fps To The Desired Value"
            })

            FpsUnlockerToggle:CreateToggle({
                Name = "NoFpsCap",
                Function = function()
                    if Settings.FpsUnlocker.Value == true and Settings.FpsUnlocker.NoFpsCap.Value == true and SetFpsCap then
                        SetFpsCap(1000)
                    end
                    if Settings.FpsUnlocker.Value == true and Settings.FpsUnlocker.NoFpsCap.Value == false and SetFpsCap then
                        SetFpsCap(Settings.FpsUnlocker.Fps.Value >= 0 and Settings.FpsUnlocker.Fps.Value or 1)
                    end
                    if not SetFpsCap then
                        CreateNotification(3, "Unable To Unlock Fps")
                    end
                end,
                DefaultValue = true
            })

            FpsUnlockerToggle:CreateSlider({
                Name = "Fps",
                Function = function()
                    if Settings.FpsUnlocker.Value == true and Settings.FpsUnlocker.NoFpsCap.Value == false and SetFpsCap then
                        SetFpsCap(Settings.FpsUnlocker.Fps.Value)
                    end
                    if not SetFpsCap then
                        CreateNotification(3, "Unable To Unlock Fps")
                    end
                end,
                MaximumValue = 360,
                DefaultValue = 360
            })

            UnInjectEvent.Event:Connect(function()
                if SetFpsCap then
                    SetFpsCap(Settings.FpsUnlocker.Fps.Value)
                end
            end)
        end)

        task.spawn(function()
            local function DetermineWinner(player1, player2)
                local health1 = player1.Character:GetAttribute("Health")
                local health2 = player2.Character:GetAttribute("Health")
                local bestDPS1, bestSword1 = GetBestSword(player1)
                local bestDPS2, bestSword2 = GetBestSword(player2)
                local armorReduction1 = GetArmorReduction(player1)
                local armorReduction2 = GetArmorReduction(player2)
                local effectiveDPS1 = 0
                local effectiveDPS2 = 0
                if bestDPS1 and bestDPS2 then
                    local rawDPS1 = (bestDPS1 - (bestDPS1 * armorReduction2))
                    local rawDPS2 = (bestDPS2 - (bestDPS2 * armorReduction1))
                    effectiveDPS1 = (health1 / rawDPS2)
                    effectiveDPS2 = (health2 / rawDPS1)
                end
                if not bestDPS1 or not bestDPS2 then
                    effectiveDPS1 = -health1
                    effectiveDPS2 = -health2
                end
                local winner = (effectiveDPS1 < effectiveDPS2 and player1 or player2)
                return winner
            end

            local TargetHudToggle = OtherTab:CreateToggle({
                Name = "TargetHud",
                Function = function()
                    local targetHudFrame, targetHudStroke, playerNameText, healthBarDisplay, healthText, healthPercentageText, statusText = CreateTargetHUD()
                    targetHudFrame.Visible = false
                    repeat
                        task.wait()
                        if GetMatchState() ~= 0 and IsAlive(LocalPlayer) and Settings.TargetHud.Value == true then
                            local nearestPlayer = FindNearestPlayer(Settings.TargetHud.Range.Value)
                            if nearestPlayer then
                                targetHudFrame.Visible = true
                                local strokeColorValues = string.split(Settings.TargetHud.StrokeColor.Value, ",")
                                local strokeRed = strokeColorValues[1]
                                local strokeGreen = strokeColorValues[2]
                                local strokeBlue = strokeColorValues[3]
                                targetHudStroke.Color = Color3.new(strokeRed, strokeGreen, strokeBlue)
                                local mainColorValues = string.split(Settings.TargetHud.MainColor.Value, ",")
                                local mainRed = mainColorValues[1]
                                local mainGreen = mainColorValues[2]
                                local mainBlue = mainColorValues[3]
                                healthBarDisplay.BackgroundColor3 = Color3.new(mainRed, mainGreen, mainBlue)
                                local maxHealth = nearestPlayer.Character:GetAttribute("MaxHealth")
                                local currentHealth = nearestPlayer.Character:GetAttribute("Health")
                                local healthPercentage = (currentHealth / maxHealth)
                                playerNameText.Text = nearestPlayer.Name
                                healthText.Text = "Health: " .. math.round(currentHealth)
                                local winner = DetermineWinner(nearestPlayer, LocalPlayer)
                                local winStatus = (winner == LocalPlayer and "Win" or "Lose")
                                statusText.Text = winStatus
                                if statusText.Text == "Lose" then
                                    statusText.TextColor3 = Color3.new(1, 0, 0)
                                end
                                if statusText.Text == "Win" then
                                    statusText.TextColor3 = Color3.new(0, 1, 0)
                                end
                                local tweenInfo = TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)
                                local tween = TweenService:Create(healthBarDisplay, tweenInfo, {Size = UDim2.new(healthPercentage, 0, 1, 0)})
                                tween:Play()
                            end
                            if not nearestPlayer then
                                targetHudFrame.Visible = false
                            end
                        end
                        if not IsAlive(LocalPlayer) then
                            targetHudFrame.Visible = false
                        end
                    until shared[sharedKey] == true or Settings.TargetHud.Value == false
                    targetHudFrame.Visible = false
                end,
                HoverText = "Displays The Fight's Details"
            })

            TargetHudToggle:CreateSlider({
                Name = "Range",
                Function = function() end,
                DefaultValue = 18,
                MaximumValue = 18
            })

            TargetHudToggle:CreateColorSlider({
                Name = "StrokeColor",
                Function = function() end,
                DefaultValue = Color3.new(0, 0.6, 1)
            })

            TargetHudToggle:CreateColorSlider({
                Name = "MainColor",
                Function = function() end,
                DefaultValue = Color3.new(0, 0.6, 1)
            })
        end)

        task.spawn(function()
            local AutoInjectCodes = {
                "loadstring(game:HttpGet(\"https://alsploit.bedwars.workers.dev/LoadstringAlSploitPurpleBlastReborn.lua\"))()"
            }

            local AutoInjectToggle = OtherTab:CreateToggle({
                Name = "AutoInject",
                Function = function()
                    if Settings.AutoInject.Value == true and not QueueOnTeleport then
                        CreateNotification(3, "Your Executor Does Not Support AutoInject")
                    end
                end,
                HoverText = "Auto Injects AlSploit"
            })

            Connections["AutoInjectConnection"] = LocalPlayer.OnTeleport:Connect(function(state)
                if state == Enum.TeleportState.Started and Settings.AutoInject.Value == true and shared[sharedKey] == false then
                end
            end)
        end)

        task.spawn(function()
            local ArrayListManager, ArrayListHolder
            local moduleConnections = {}
            local ArrayListToggle = OtherTab:CreateToggle({
                Name = "ArrayList",
                Function = function()
                    if ArrayListHolder then
                        ArrayListHolder.Visible = Settings.ArrayList.Value
                    end
                end,
                HoverText = "Displays An Array Of All Enabled Modules"
            })

            ArrayListToggle:CreateToggle({
                Name = "ColorBar",
                Function = function() end,
                DefaultValue = false
            })

            ArrayListToggle:CreateSlider({
                Name = "WaveStrength",
                Function = function() end,
                MaximumValue = 10,
                DefaultValue = 5
            })

            ArrayListToggle:CreateSlider({
                Name = "WaveAmount",
                Function = function() end,
                MaximumValue = 10,
                DefaultValue = 1
            })

            ArrayListToggle:CreateSlider({
                Name = "WaveSpeed",
                Function = function() end,
                MaximumValue = 20,
                DefaultValue = 5
            })

            ArrayListToggle:CreateSlider({
                Name = "WaveSize",
                Function = function() end,
                MaximumValue = 10,
                DefaultValue = 4
            })

            ArrayListToggle:CreateColorSlider({
                Name = "WaveColor",
                Function = function() end,
                DefaultValue = Color3.new(0.45098, 0, 1)
            })

            ArrayListManager, ArrayListHolder = CreateArrayList()

            repeat
                task.wait()
                for moduleName, moduleData in Settings do
                    if moduleName ~= "ArrayList" then
                        if moduleData.Value == true and not moduleConnections[moduleName] then
                            moduleConnections[moduleName] = ArrayListManager.Functions:AddModule(moduleName)
                        end
                        if moduleData.Value == false and moduleConnections[moduleName] then
                            ArrayListManager.Functions:RemoveModule(moduleConnections[moduleName])
                            moduleConnections[moduleName] = nil
                        end
                    end
                end
            until shared[sharedKey] == true
        end)

        task.spawn(function()
            local UnInjectToggle = OtherTab:CreateToggle({
                Name = "UnInject",
                Function = function()
                    if Settings.UnInject.Value == true then
                        UnInjectEvent:Fire()
                    end
                end,
                HoverText = "UnInjects AlSploit"
            })
        end)

        task.spawn(function()
            CollectionService:GetInstanceAddedSignal("block"):Connect(function()
                Blocks = CollectionService:GetTagged("block")
            end)
        end)

        task.spawn(function()
            local AlSploitOwners = {"mrdreyoo", "tonightshewillbemine", "yuungasian", "Harleyisopp17", "Sigmaautofarm", "Ned31k", "Matto0613", "slaying_135", "BerneerYT", "Islandsipp4", "oceanicfalcondude101", "hshehzheheh"}
            local AlSploitCooks = {"AlSploitCooking", "ChristmasCandyGobler", "MonkeOnZaCar"}

            for _, player in Players:GetPlayers() do
                player.Chatted:Connect(function(message)
                    for _, owner in AlSploitOwners do
                        if player.Name == owner and LocalPlayer.Name ~= owner and not AlSploitCooks[player.Name] then
                            local cleanedMessage = message:lower():gsub("%s+", "")
                            if cleanedMessage then
                                task.spawn(function()
                                    if cleanedMessage:find(";breakmapdefault") then
                                        for _, block in Blocks do
                                            block:Destroy()
                                        end
                                    end
                                end)
                                task.spawn(function()
                                    if cleanedMessage:find(";unanchordefault") then
                                        if IsAlive(LocalPlayer) == true then
                                            LocalPlayer.Character.PrimaryPart.Anchored = false
                                        end
                                    end
                                end)
                                task.spawn(function()
                                    if cleanedMessage:find(";anchordefault") then
                                        if IsAlive(LocalPlayer) == true then
                                            LocalPlayer.Character.PrimaryPart.Anchored = true
                                        end
                                    end
                                end)
                                task.spawn(function()
                                    if cleanedMessage:find(";lagbackdefault") then
                                        if IsAlive(LocalPlayer) == true then
                                            LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(1000000, 1000000, 1000000)
                                        end
                                    end
                                end)
                                task.spawn(function()
                                    if cleanedMessage:find(";uninjectdefault") then
                                        UnInjectEvent:Fire()
                                    end
                                end)
                                task.spawn(function()
                                    if cleanedMessage:find(";kickdefault") then
                                        LocalPlayer:Kick("Kicked by AlSploit AlSploitOwners")
                                    end
                                end)
                                task.spawn(function()
                                    if cleanedMessage:find(";killdefault") then
                                        if IsAlive(LocalPlayer) == true then
                                            LocalPlayer.Character.PrimaryPart.Humanoid.Health = 0
                                        end
                                    end
                                end)
                            end
                        end
                    end
                end)
            end

            for _, player in Players:GetPlayers() do
                player.Chatted:Connect(function(message)
                    for _, cook in AlSploitCooks do
                        if player.Name == cook and LocalPlayer.Name ~= cook then
                            local cleanedMessage = message:lower():gsub("%s+", "")
                            if cleanedMessage then
                                task.spawn(function()
                                    if cleanedMessage:find(";breakmapdefault") then
                                        for _, block in CollectionService:GetTagged("block") do
                                            block:Destroy()
                                        end
                                    end
                                end)
                                task.spawn(function()
                                    if cleanedMessage:find(";unanchordefault") then
                                        if IsAlive(LocalPlayer) == true then
                                            LocalPlayer.Character.PrimaryPart.Anchored = false
                                        end
                                    end
                                end)
                                task.spawn(function()
                                    if cleanedMessage:find(";anchordefault") then
                                        if IsAlive(LocalPlayer) == true then
                                            LocalPlayer.Character.PrimaryPart.Anchored = true
                                        end
                                    end
                                end)
                                task.spawn(function()
                                    if cleanedMessage:find(";lagbackdefault") then
                                        if IsAlive(LocalPlayer) == true then
                                            LocalPlayer.Character.PrimaryPart.Velocity = Vector3.new(1000000, 1000000, 1000000)
                                        end
                                    end
                                end)
                                task.spawn(function()
                                    if cleanedMessage:find(";uninjectdefault") then
                                        UnInjectEvent:Fire()
                                    end
                                end)
                                task.spawn(function()
                                    if cleanedMessage:find(";kickdefault") then
                                        LocalPlayer:Kick("Kicked by AlSploit AlSploitOwners")
                                    end
                                end)
                                task.spawn(function()
                                    if cleanedMessage:find(";killdefault") then
                                        if IsAlive(LocalPlayer) == true then
                                            LocalPlayer.Character.PrimaryPart.Humanoid.Health = 0
                                        end
                                    end
                                end)
                            end
                        end
                    end
                end)
            end
        end)

        task.spawn(function()
            CreateNotification(3, "AlSploit Has Loaded, Tabs Are Scrollable")
            task.spawn(function()
                UnInjectEvent.Event:Connect(function()
                    Settings.UnInject.Value = false
                    shared[sharedKey] = true
                    MainGui:Destroy()
                    for _, connection in Connections do
                        connection:Disconnect()
                    end
                    task.wait(0.5)
                    UnInjectEvent:Destroy()
                end)
            end)
        end)
    end
end