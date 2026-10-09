
local GetGlobalEnv = ...
local Deps = GetGlobalEnv.FlohackDeps
local Abs = Deps.Abs
local Camera = Deps.Camera
local Character = Deps.Character
local Clamp = Deps.Clamp
local Clear = Deps.Clear
local Client = Deps.Client
local Clock = Deps.Clock
local Concat = Deps.Concat
local Current = Deps.Current
local Date = Deps.Date
local Delay = Deps.Delay
local EmptyFunction = Deps.EmptyFunction
local Enum = Deps.Enum
local Find = Deps.Find
local FindFirstChild = Deps.FindFirstChild
local Floor = Deps.Floor
local Fonts = Deps.Fonts
local Format = Deps.Format
local FromHSV = Deps.FromHSV
local Game = Deps.Game
local GuiService = Deps.GuiService
local Hidden = Deps.Hidden
local HttpService = Deps.HttpService
local Infinite = Deps.Infinite
local Insert = Deps.Insert
local IsFolder = Deps.IsFolder
local JSONDecode = Deps.JSONDecode
local JSONEncode = Deps.JSONEncode
local ListFiles = Deps.ListFiles
local MakeFolder = Deps.MakeFolder
local Match = Deps.Match
local Max = Deps.Max
local Min = Deps.Min
local NewColor3 = Deps.NewColor3
local NewColorSequence = Deps.NewColorSequence
local NewFont = Deps.NewFont
local NewInstance = Deps.NewInstance
local NewNumberKeypoint = Deps.NewNumberKeypoint
local NewRGB = Deps.NewRGB
local NewTweenInfo = Deps.NewTweenInfo
local NewUDim = Deps.NewUDim
local NewUDim2 = Deps.NewUDim2
local NewVector2 = Deps.NewVector2
local Object = Deps.Object
local Parent = Deps.Parent
local Path = Deps.Path
local Pi = Deps.Pi
local Remove = Deps.Remove
local RenderStepped = Deps.RenderStepped
local Restores = Deps.Restores
local Round = Deps.Round
local RunService = Deps.RunService
local SetMetaTable = Deps.SetMetaTable
local SetThreadIdentity = Deps.SetThreadIdentity
local Sin = Deps.Sin
local Sort = Deps.Sort
local Spawn = Deps.Spawn
local Stats = Deps.Stats
local StringFind = Deps.StringFind
local Sub = Deps.Sub
local Target = Deps.Target
local Tick = Deps.Tick
local ToHex = Deps.ToHex
local TweenService = Deps.TweenService
local TwoPi = Deps.TwoPi
local Unpack = Deps.Unpack
local UserInputService = Deps.UserInputService
local Viewport = Deps.Viewport
local Wait = Deps.Wait
GetGlobalEnv.Library = {
    DrawObjects = {},
    Connections = {},
    Errors = {},
    Tweens = {},
    LayoutVersion = 0,
    FadeDrivers = {},
    FadeProperties = {
        Frame = {"BackgroundTransparency"},
        ImageLabel = {"BackgroundTransparency", "ImageTransparency"},
        ImageButton = {"BackgroundTransparency", "ImageTransparency"},
        TextLabel = {"BackgroundTransparency", "TextTransparency"},
        TextBox = {"BackgroundTransparency", "TextTransparency"},
        TextButton = {"BackgroundTransparency", "TextTransparency"},
        ScrollingFrame = {"BackgroundTransparency", "ScrollBarImageTransparency"},
        UIStroke = {"Transparency"},
    },
    FullTransparency = NumberSequence.new{NewNumberKeypoint(0, 0), NewNumberKeypoint(1, 0)},
    ClearTransparency = NumberSequence.new{NewNumberKeypoint(0, 1), NewNumberKeypoint(1, 1)},
    Objects = {},
    Sections = {},
    ThemeSections = {},
    AnimatedColorPickers = {},
    Flags = {},
    Listeners = {},
    Validated = {},
    PlayerFlags = SetMetaTable({}, {__index = function(Self, Name)
        local Entry = {Whitelist = false, Priority = false}
        --
        Self[Name] = Entry
        --
        return Entry
    end}),
    UnnamedFlags = 0,
    Build = "Beta",
    UID = "1",
    UnsafeMode = false,
    InitTime = Clock(),
    Folder = cheatname,
    ConfigFolder = cheatname .. "/Configs",
    UI = {
        Name = cheatname,
        CloseBind = Enum.KeyCode.Insert,
        SectionResizeIncrements = 1,
        WatermarkRefreshRate = 1,
        MainUI = nil,
        Tab = nil,
        SourceSection = nil,
        Initialized = false,
        Faded = false,
        LastCopiedColor = nil,
        TabIndex = 0,
        Viewing = false,
        CurrentSelectedColorPicker = nil,
        CurrentSelectedColorPickerExtra = nil,
        CurrentColorAnimationPicker = nil,
        CurrentSelectedKeybindMode = nil,
        TotalColorPickers = 0,
        TotalKeybindModes = 0,
        WatermarkPosition = "Top Right",
        SectionZIndex = 100,
        Resizing = false,
        DropdownZIndex = 1,
        OpenColorFrames = 0,
        ScreenGUI = nil,
        TweenSpeed = 0.15,
        NewFont = (Fonts and Fonts.Verdana) or NewFont("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
        BoldFont = (Fonts and Fonts.VerdanaBold) or (Fonts and Fonts.Verdana) or NewFont("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal),
        FontSize = 12,
        BoldFontSize = 10,
        DraggingGui = nil,
        Notifications = {TopLeft = {}, Middle = {}},
        Keys = {
            [Enum.KeyCode.LeftShift] = "LSHF",
            [Enum.KeyCode.RightShift] = "RSHF",
            [Enum.KeyCode.LeftControl] = "LCTR",
            [Enum.KeyCode.RightControl] = "RCTR",
            [Enum.KeyCode.LeftAlt] = "LALT",
            [Enum.KeyCode.RightAlt] = "RALT",
            [Enum.KeyCode.CapsLock] = "CAPS",
            [Enum.KeyCode.Space] = "SPCE",
            [Enum.KeyCode.One] = "ONE",
            [Enum.KeyCode.Two] = "TWO",
            [Enum.KeyCode.Three] = "THREE",
            [Enum.KeyCode.Four] = "FOUR",
            [Enum.KeyCode.Five] = "FIVE",
            [Enum.KeyCode.Six] = "SIX",
            [Enum.KeyCode.Seven] = "SEVEN",
            [Enum.KeyCode.Eight] = "EIGHT",
            [Enum.KeyCode.Nine] = "NINE",
            [Enum.KeyCode.Zero] = "ZERO",
            [Enum.KeyCode.KeypadOne] = "NUM1",
            [Enum.KeyCode.KeypadTwo] = "NUM2",
            [Enum.KeyCode.KeypadThree] = "NUM3",
            [Enum.KeyCode.KeypadFour] = "NUM4",
            [Enum.KeyCode.KeypadFive] = "NUM5",
            [Enum.KeyCode.KeypadSix] = "NUM6",
            [Enum.KeyCode.KeypadSeven] = "NUM7",
            [Enum.KeyCode.KeypadEight] = "NUM8",
            [Enum.KeyCode.KeypadNine] = "NUM9",
            [Enum.KeyCode.KeypadZero] = "NUM0",
            [Enum.KeyCode.Insert] = "INS",
            [Enum.KeyCode.Minus] = "-",
            [Enum.KeyCode.Equals] = "=",
            [Enum.KeyCode.Tilde] = "~",
            [Enum.KeyCode.LeftBracket] = "[",
            [Enum.KeyCode.RightBracket] = "]",
            [Enum.KeyCode.RightParenthesis] = ")",
            [Enum.KeyCode.LeftParenthesis] = "(",
            [Enum.KeyCode.Semicolon] = ",",
            [Enum.KeyCode.Quote] = "'",
            [Enum.KeyCode.BackSlash] = "\\",
            [Enum.KeyCode.Comma] = ",",
            [Enum.KeyCode.Period] = ".",
            [Enum.KeyCode.Slash] = "/",
            [Enum.KeyCode.Asterisk] = "*",
            [Enum.KeyCode.Plus] = "+",
            [Enum.KeyCode.Period] = ".",
            [Enum.KeyCode.Backquote] = "`",
            [Enum.UserInputType.MouseButton1] = "M1",
            [Enum.UserInputType.MouseButton2] = "M2",
            [Enum.UserInputType.MouseButton3] = "M3"
        },
    },
    Theme = {
        Objects = {},
        Default = {
            Accent = NewRGB(153, 196, 39),
            SecondAccent = NewRGB(124, 158, 32),
            TextColor = NewRGB(205, 205, 205),
            Risky = NewRGB(165, 165, 120),
        }
    }
}
--
function Library:HandleError(Source, Message)
    local Text = tostring(Message)
    --
    if Library.LoadErrors and Source ~= nil then
        Library.LoadErrors[Source] = Text
    end
    --
    if Library.Errors[Text] then return end
    --
    Library.Errors[Text] = Text
    --
    warn(("[ERROR] | An error has occurred:\n%s\nSource: %s"):format(Text, tostring(Source)))
end
--
function Library:Protect(Source, Function, ...)
    if SetThreadIdentity then
        pcall(SetThreadIdentity, 8)
    end
    local Success, Message = pcall(Function, ...)
    --
    if not Success then
        Library:HandleError(Source, Message)
    end
    --
    return Success
end
--
function Library:Validate(Defaults, Options)
    for Index, Value in Defaults do
        if Options[Index] == nil then
            Options[Index] = Value
        end
    end
    --
    if Options.Flag and not Library.Validated[Options.Flag] then
        Library.Validated[Options.Flag] = true
        --
        local Base = Options.Callback or EmptyFunction
        local Flag = Options.Flag
        --
        Options.Callback = function(...)
            Library:Protect(Flag, Base, ...)
            --
            local Listeners = Library.Listeners[Flag]
            if Listeners then
                for Index = 1, #Listeners do
                    Library:Protect(Flag, Listeners[Index], ...)
                end
            end
        end
    end
    --
    return Options
end
--
function Library:Typing()
    return UserInputService:GetFocusedTextBox() ~= nil
end
--
function Library:Connection(Signal, Func, Name, Table)
    Name = Name or "Unknown"
    Table = Table or Library.Connections
    --
    local Connection; Connection = Signal:Connect(function(...)
        local Success, Message = pcall(Func, ...)
        --
        if not Success and not Library.Errors[Message] then
            if Library.Notify then
                --Library:Notify({Message = ("[ERROR] | An error has occurred:\n%s\nName: %s"):format(Message, Name), Delay = Infinite})
            else
                warn(("[ERROR] | An error has occurred:\n%s\nName: %s"):format(Message, Name))
            end
            --
            Library.Errors[Message] = Message
            --
            local Position = Find(Table, Connection)
            if Position then
                Remove(Table, Position)
            end

            if Table ~= Library.Connections then
                Position = Find(Library.Connections, Connection)
                if Position then
                    Remove(Library.Connections, Position)
                end
            end
            --
            return Connection and Connection:Disconnect()
        end
    end)
    --
    if Connection then
        if Table then
            Insert(Table, Connection)
        end

        if Table ~= Library.Connections then
            Insert(Library.Connections, Connection)
        end
    end
    --
    return Connection
end
--
function Library:TweenObject(Object, Info, Goal, Callback)
    if not Object then return end
    --
    if Library.LoadingConfig then
        for Property, Value in Goal do
            Object[Property] = Value
        end
        if Callback then
            pcall(Callback)
        end
        return
    end
    --
    local Tween = TweenService:Create(Object, Info, Goal)
    --
    Library.Tweens[Tween] = true
    --
    local Connection
    Connection = Tween.Completed:Connect(function()
        Library.Tweens[Tween] = nil
        --
        if Connection then
            Connection:Disconnect()
            Connection = nil
        end
        --
        if Callback then
            local Success, Message = pcall(Callback)
            --
            if not Success and not Library.Errors[Message] then
                Library.Errors[Message] = Message
                --
                warn(("[ERROR] | An error has occurred:\n%s\nName: %s"):format(Message, "TweenObject"))
            end
        end
    end)
    --
    Tween:Play()
end
--
function Library:NewFlag()
    Library.UnnamedFlags += 1
    --
    return ("UnknownFlag%s"):format(tostring(Library.UnnamedFlags))
end
--
Library.MarkTypes = {
    {
        Key = "Whitelist",
        Name = "Whitelisted",
        Highlight = "Highlight Whitelisted",
        Flag = "ESPSettings_HighlightWhitelisted",
        ColorFlag = "ESPSettings_HighlightWhitelistedColor",
        Priority = "Friendly",
        Color = NewRGB(85, 255, 127)
    },
    {
        Key = "Priority",
        Name = "High-Priority",
        Highlight = "Highlight Priority",
        Flag = "ESPSettings_HighlightPriority",
        ColorFlag = "ESPSettings_HighlightPriorityColor",
        Priority = "Enemy",
        Color = NewRGB(255, 170, 0)
    }
}
--
function Library.GetMarkType(Name)
    local Marks = Name and Library.PlayerFlags[Name]
    --
    if not Marks then
        return nil
    end
    --
    local Types = Library.MarkTypes
    --
    for Index = 1, #Types do
        local Mark = Types[Index]
        --
        if Marks[Mark.Key] then
            return Mark
        end
    end
    --
    return nil
end
--
function Library.GetMark(Name, Key)
    return Name ~= nil and Library.PlayerFlags[Name][Key] == true
end
--
function Library.SetMark(Name, Key, State)
    if not Name then
        return
    end
    --
    Library.PlayerFlags[Name][Key] = State == true
end
--
function Library.GetPriority(Name)
    local Mark = Library.GetMarkType(Name)
    --
    return Mark and Mark.Priority or "Neutral"
end
--
function Library:ClampString(String, MaxWidth)
    local Clamped = String
    --
    local TextLabel = Library:CreateObject("TextLabel", {
        FontFace = Library.UI.NewFont,
        TextStrokeTransparency = 0,
        Text = String,
        Size = NewUDim2(1, 0, 1, 0),
        BorderSizePixel = 0,
        TextScaled = false,
        TextWrapped = false,
        Visible = false,
        TextSize = Library.UI.FontSize,
        Parent = Client.PlayerGui
    })
    --
    if TextLabel.TextBounds.X <= MaxWidth then
        TextLabel:Destroy()
        --
        return String
    end
    --
    while TextLabel.TextBounds.X > MaxWidth and #Clamped > 0 do
        Clamped = Clamped:sub(1, #Clamped - 1)
        --
        TextLabel.Text = Clamped .. "..."
        --
        Wait()
    end
    --
    TextLabel:Destroy()
    --
    return Clamped .. "..."
end
--
local function IsEncodable(Value, Depth)
    local Depth = Depth or 0
    local Type = typeof(Value)
    --
    if Type == "boolean" or Type == "string" then
        return true
    elseif Type == "number" then
        return Value == Value and Value ~= Infinite and Value ~= -Infinite 
    elseif Type == "table" and Depth < 8 then
        for Index, Nested in Value do
            local IndexType = typeof(Index)
            --
            if IndexType ~= "string" and IndexType ~= "number" then
                return false
            elseif not IsEncodable(Nested, Depth + 1) then
                return false
            end
        end
        --
        return true
    end
    --
    return false
end
--
function Library:Store(Config, Index, Object)
    local Value = Object:Get()
    --
    if Value == nil then 
        return
    end
    --
    if typeof(Value) == "table" and typeof(Value.Color) == "Color3" then 
        local Hue, Saturation, Brightness = Value.Color:ToHSV()
        --
        Config[Index] = {
            Hue,
            Saturation,
            Brightness,
            tonumber(Value.Transparency) or 0,
            Value.AnimationType or "None",
            tonumber(Value.AnimationSpeed) or 1
        }
        --
        return
    elseif typeof(Value) == "Color3" then 
        local Hue, Saturation, Brightness = Value:ToHSV()
        --
        Config[Index] = {Hue, Saturation, Brightness, 0}
        --
        return
    elseif typeof(Value) == "EnumItem" then
        Config[Index] = tostring(Value)
        --
        return
    end
    --
    if not IsEncodable(Value) then 
        error(("cannot be encoded (%s)"):format(typeof(Value)), 0)
    end
    --
    Config[Index] = Value
end
--
function Library:GetConfig()
    if SetThreadIdentity then
        pcall(SetThreadIdentity, 8) 
    end
    --
    local Config = {}
    --
    for Index, Value in Library.Flags do
        if Value.Get and Index ~= "CurrentConfig_Status" and Index ~= "ConfigName_Status" and Index ~= "CurrentLua_Status" and not StringFind(Index, "UnknownFlag") then
            Library:Protect(Index, Library.Store, Library, Config, Index, Value)
        end
    end
    --
    local Success, Encoded = pcall(JSONEncode, HttpService, Config)
    --
    if not Success then
        Library:HandleError("GetConfig", Encoded)
        --
        return nil
    end
    --
    return Encoded
end

function Library:OnChanged(FlagName, Callback)
    local Listeners = Library.Listeners[FlagName]
    --
    if not Listeners then
        Listeners = {}
        Library.Listeners[FlagName] = Listeners
    end
    --
    Insert(Listeners, Callback)
    --
    return function()
        local Index = Find(Listeners, Callback)
        if Index then
            Remove(Listeners, Index)
        end
    end
end
--
function Library:Settle(Object, Value)
    if Object:Get() == Value then return end
    --
    Object:Set(Value)
end
--
function Library:Reasons(Source, Keys)
    local Seen = {}
    local List = {}
    --
    for Index = 1, #Keys do
        local Text = Source[Keys[Index]]
        --
        if Text and not Seen[Text] then
            Seen[Text] = true
            --
            Insert(List, Text)
        end
    end
    --
    return List
end
--
function Library:LoadConfig(Config)
    if SetThreadIdentity then
        pcall(SetThreadIdentity, 8) 
    end
    --
    local Success, Decoded = pcall(JSONDecode, HttpService, Config)
    --
    if not Success or typeof(Decoded) ~= "table" then
        return 0, {"unreadable file"}, {"the config file is not valid JSON"}, {}
    end
    --
    Library.LoadingConfig = true
    --
    local Reasons = {}
    local Missing = {}
    local Failed = {}
    local Loaded = 0
    --
    Library.Errors = {} 
    Library.LoadErrors = Reasons
    --
    local Flags = Library.Flags
    if Decoded["LoadedLuas"] and Flags["LoadedLuas"] and Flags["LoadedLuas"].Set then
        if SetThreadIdentity then
            pcall(SetThreadIdentity, 8)
        end
        Flags["LoadedLuas"]:Set(Decoded["LoadedLuas"])
    end
    --
    for Index, Value in Decoded do
        if not StringFind(Index, "UnknownFlag") then
            if SetThreadIdentity then
                pcall(SetThreadIdentity, 8) 
            end
            --
            local Object = Flags[Index]
            --
            if not Object or not Object.Set then
                Insert(Missing, Index)
            elseif Library:Protect(Index, Object.Set, Object, Value) then
                Loaded += 1
            else
                Insert(Failed, Index)
            end
        end
    end
    --
    Library.LoadingConfig = false
    Library.LoadErrors = nil
    --
    Sort(Failed)
    Sort(Missing)
    --
    return Loaded, Failed, Library:Reasons(Reasons, Failed), Missing
end
--
function Library:SectionDragging(Frame)
    local MousePosition = UserInputService:GetMouseLocation()
    local Position = Frame.AbsolutePosition
    local Size = Frame.AbsoluteSize
    --
    local InsideX = MousePosition.X >= Position.X and MousePosition.X <= Position.X + Size.X
    local InsideY = MousePosition.Y >= Position.Y and MousePosition.Y <= Position.Y + Size.Y
    --
    return InsideX and InsideY
end
--
function Library:CreateObject(Type, Properties, Hidden, DontIncludeInLib)
    if SetThreadIdentity then
        pcall(SetThreadIdentity, 8)
    end
    local Hidden = Hidden or false
    local Object = NewInstance(Type)
    --
    for Index, Value in Properties do
        if (not RunService:IsStudio()) and Index == "Name" and not Match(Value, "%d") then
            Value = "\0"
        end
        --
        if Index == "TextStrokeTransparency" and Value == 0 then
            local Stroke = NewInstance("UIStroke")
            --
            Stroke.Parent = Object
            Stroke.LineJoinMode = Enum.LineJoinMode.Miter
            --
            Library.Objects[Stroke] = {Stroke, {Parent = Object, LineJoinMode = Enum.LineJoinMode.Miter}, Hidden}
        else
            Object[Index] = Value
        end
    end
    --
    if DontIncludeInLib then return Object end
    Library.Objects[Object] = {Object, Properties, Hidden}
    --
    return Object
end
--
function Library:AddTheme(Object, Properties)
    for Index, Value in Properties do
        Library.Theme.Objects[Object] = Library.Theme.Objects[Object] or {}
        Library.Theme.Objects[Object][Index] = Value
    end
end
--
Library.Draw = function(Args1, Args2, Args3)
    local Object = Library:CreateObject(Args1, Args2, Args3, true)
    Library.DrawObjects[#Library.DrawObjects + 1] = Object
    return Object
end
--
function Library:GetTableIndexes(Table, Custom)
    local Table2 = {}
    --
    for Index, Value in Table do
        Table2[Custom and Value[1] or #Table2 + 1] = Index 
    end
    --
    return Table2
end
--
function Library:UpdateConfigList(List, Type)
    if not IsFolder(cheatname) then MakeFolder(cheatname) end
    if not IsFolder(cheatname .. "/Configs") then MakeFolder(cheatname .. "/Configs") end
    for Index, File in ListFiles(cheatname .. "/Configs") do
        local FileName = File:match("([^/\\]+)$"):gsub("%.cfg$", "")
        if Type == "Remove" then
            List:RemoveValue(FileName)
        else
            List:AddValue(FileName)
        end
    end
end
--
function Library:GetObjectsTable(MainUI, AddMain, Ignored)
    local AddMain = AddMain or false
    local Ignored = Ignored or {}
    local DescendantTable = {}
    local NewTable = {}
    --
    for Index, Descendant in MainUI:GetDescendants() do
        if Find(Ignored, Descendant) then continue end
        --
        DescendantTable[#DescendantTable + 1] = Descendant
    end
    --
    if AddMain then
        DescendantTable[#DescendantTable + 1] = MainUI
    end
    --
    for Index, Descendant in DescendantTable do
        local Found = Library.Objects[Descendant]
        --
        if Found then
            local Properties = Found[2]
            local HiddenValue = Found[3]
            --
            NewTable[#NewTable + 1] = {Descendant, Properties, HiddenValue}
        end
    end
    --
    return NewTable
end
--
function Library:SetTableVisible(Table, State, Ignored)
    local Ignored = Ignored or {}
    --
    for Index, Object in Table do
        if Find(Ignored, Object) then continue end
        --
        if typeof(Object) == "table" and Object.SetVisible then 
            Object:SetVisible(State)
        end
    end
end
--
function Library:UpdateColor(ColorType, ColorValue)
    Library.Theme.Default[ColorType] = ColorValue
    --
    for Object, Properties in Library.Theme.Objects do
        for Property, ThemeKeys in Properties do
            if typeof(ThemeKeys) == "table" then
                if Object:IsA("UIGradient") and Property == "Color" then
                    if Library.Theme.Default[ThemeKeys[1]] then
                        Object.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Library.Theme.Default[ThemeKeys[1]]), ColorSequenceKeypoint.new(1, Library.Theme.Default[ThemeKeys[2]])}
                    end
                end
            else
                if ThemeKeys == ColorType then
                    Object[Property] = Library.Theme.Default[ThemeKeys]
                end
            end
        end
    end
    --
    if ColorType == "Accent" and Library.UpdateKeybindList then
        Library:UpdateKeybindList()
    end
end
--
function Library:ViewPlayer(Player)
    local Subject = Player.Character and (FindFirstChild(Player.Character, "CameraPart") or FindFirstChild(Player.Character, "HumanoidRootPart"))
    local ClientSubject = Client.Character and (FindFirstChild(Client.Character, "CameraPart") or FindFirstChild(Client.Character, "HumanoidRootPart"))

    if not Library.UI.Viewing then
        Camera.CameraSubject = Subject
    else
        Camera.CameraSubject = ClientSubject
    end
    --
    Library.UI.Viewing = not Library.UI.Viewing
end
--
function Library:GetTableLength(Table)
    local Length = 0
    --
    for Index, Value in Table do
        Length += 1
    end
    --
    return Length
end
--
function Library:ScrollingCheck(ScrollingFrame, Frame)
    if not ScrollingFrame:IsA("ScrollingFrame") then return true end
    --
    local VisibleTopLeft = ScrollingFrame.CanvasPosition
    local VisibleBottomRight = VisibleTopLeft + ScrollingFrame.AbsoluteWindowSize
    --
    local FrameTopLeft = Frame.AbsolutePosition - ScrollingFrame.AbsolutePosition + ScrollingFrame.CanvasPosition
    local FrameBottomRight = FrameTopLeft + Frame.AbsoluteSize
    --
    return FrameBottomRight.X > VisibleTopLeft.X and FrameTopLeft.X < VisibleBottomRight.X and FrameBottomRight.Y > VisibleTopLeft.Y and FrameTopLeft.Y < VisibleBottomRight.Y
end
--
function Library:ClampPosition(Object, Position, Offset)
    local ClampedX = Clamp(Position.X.Offset, Offset, Viewport.X - Object.AbsoluteSize.X - Offset)
    local ClampedY = Clamp(Position.Y.Offset, Offset, Viewport.Y - Object.AbsoluteSize.Y - Offset)
    --
    return NewUDim2(Position.X.Scale, ClampedX, Position.Y.Scale, ClampedY)
end
--
function Library:Fade(State, Table, MainUI, Speed)
    local IsMainUI = Table == Library.Objects
    --
    MainUI.Active = State
    --
    if State then
        MainUI.Visible = true
    end
    --
    if IsMainUI then
        Library.UI.Faded = not State
    end
    --
    local Previous = Library.FadeDrivers[MainUI]
    --
    if Previous then
        Previous:Disconnect()
        --
        Library.FadeDrivers[MainUI] = nil
    end
    --
    local FadeProperties = Library.FadeProperties
    local FullTransparency, ClearTransparency = Library.FullTransparency, Library.ClearTransparency
    local Targets = {}
    local Count = 0
    --
    for Index, Object in Table do
        if not Object[3] then
            local Element, Properties = Object[1], Object[2]
            local Class = Element.ClassName
            --
            if Class == "UIGradient" then
                Element.Transparency = State and (Properties["Transparency"] or FullTransparency) or ClearTransparency
            else
                local List = FadeProperties[Class]
                --
                if List then
                    local Always = Class == "UIStroke"
                    --
                    for i = 1, #List do
                        local Property = List[i]
                        local Base = Properties[Property] or 0
                        --
                        if Always or Base ~= 1 then
                            local Start = Element[Property]
                            local Goal = State and Base or 1
                            --
                            if Start ~= Goal then
                                Count += 1
                                Targets[Count] = {Element, Property, Start, Goal - Start}
                            end
                        end
                    end
                end
            end
        end
    end
    --
    local function Commit()
        SetThreadIdentity(8)
        for i = 1, Count do
            local Entry = Targets[i]
            --
            Entry[1][Entry[2]] = Entry[3] + Entry[4]
        end
        --
        if not State then
            MainUI.Visible = false
        end
    end
    --
    if Count == 0 or not Speed or Speed <= 0 or Library.LoadingConfig then
        Commit()
        --
        return
    end
    --
    local Elapsed = 0
    local Driver
    --
    Driver = RenderStepped:Connect(function(Delta)
        Elapsed += Delta
        --
        if Elapsed >= Speed then
            Driver:Disconnect()
            --
            Library.FadeDrivers[MainUI] = nil
            --
            return Commit()
        end
        --
        local Alpha = Elapsed / Speed
        --
        for i = 1, Count do
            local Entry = Targets[i]
            --
            Entry[1][Entry[2]] = Entry[3] + Entry[4] * Alpha
        end
    end)
    --
    Library.FadeDrivers[MainUI] = Driver
end
--
function Library:FillSize(Frame)
    local Parent = Frame.Parent
    --
    if not Parent then return Frame.Size end
    --
    local Layout = Parent:FindFirstChildOfClass("UIListLayout")
    local Padding = Parent:FindFirstChildOfClass("UIPadding")
    local Available = Parent.AbsoluteSize.Y
    --
    if Padding then
        Available -= Padding.PaddingTop.Offset + Padding.PaddingBottom.Offset
    end
    --
    local Children = Parent:GetChildren()
    local Shown, Fills = 0, 0
    --
    for i = 1, #Children do
        local Child = Children[i]
        --
        if Child:IsA("GuiObject") and Child.Visible then
            Shown += 1
            --
            if Child:GetAttribute("Fill") then
                Fills += 1
            else
                Available -= Child.AbsoluteSize.Y
            end
        end
    end
    --
    if Layout then
        Available -= Max(0, Shown - 1) * Layout.Padding.Offset
    end
    --
    return NewUDim2(1, 0, 0, Max(50, Floor(Available / Max(1, Fills))))
end
--
function Library:CheckFrameFirst(FrameA, FrameB)
    local Parent = FrameA.Parent
    --
    if not Parent then return false end
    --
    local Children = Parent:GetChildren()
    local IndexA, IndexB
    --
    for i = 1, #Children do
        local Child = Children[i]
        --
        if Child == FrameA then
            IndexA = i
        elseif Child == FrameB then
            IndexB = i
        end
    end
    --
    if not (IndexA and IndexB) then return false end
    if not (FrameA:IsA("Frame") and FrameB:IsA("Frame")) then return false end
    --
    local OrderA, OrderB = FrameA.LayoutOrder, FrameB.LayoutOrder
    --
    if OrderA ~= OrderB then return OrderA < OrderB end
    --
    return IndexA < IndexB
end
--
function Library:Resizable(Object, DragFrame, MinResize, MaxResize, Increments, UseIcon, UseParent, ResizeDelay)
    local StartingSize, ObjectSize, Dragging, MouseLocation, PerformanceDragUI, NewMouse, Hovering, ResizeSiblings
    --
    local function UpdateSize()
        if not MouseLocation then return end
        --
        Library.UI.Resizing = true
        --
        local CurrentMousePosition = UserInputService:GetMouseLocation()
        local Delta = CurrentMousePosition - MouseLocation
        local NewSizeX = StartingSize.X.Offset + Delta.X
        local NewSizeY = StartingSize.Y.Offset + Delta.Y
        local Parent = Object.Parent
        local ParentSize = Parent.AbsoluteSize
        --
        if UseParent then
            local OccupiedSpaceY = 0
            local FrameCount = 0
            --
            for Index = 1, #(ResizeSiblings or {}) do
                local Entry = ResizeSiblings[Index]
                local Child = Entry.Child

                if Child.Parent == Parent then
                    FrameCount += 1
                    --
                    if Entry.Before then
                        if not Child:GetAttribute("Fill") and Child.AbsoluteSize.Y >= (ParentSize.Y - Object.AbsoluteSize.Y) - 57 then
                            Child.Size = NewUDim2(Child.Size.X.Scale, Child.Size.X.Offset, 0, Max(50, (ParentSize.Y - Object.AbsoluteSize.Y) - 57))
                        end
                    else
                        OccupiedSpaceY += Child.AbsoluteSize.Y + 19
                    end
                end
            end
            --
            if OccupiedSpaceY == 0 then
                MaxResize = NewUDim2(0, 0, 0, (ParentSize.Y - OccupiedSpaceY) - (FrameCount * (50 + 19)) - 38)
            else
                MaxResize = NewUDim2(0, 0, 0, (ParentSize.Y - OccupiedSpaceY) - 38)
            end
        end
        --
        if Increments then
            NewSizeY = Clamp(Round(NewSizeY / Increments) * Increments, MinResize.Y.Offset, MaxResize.Y.Offset)
        else
            NewSizeY = Clamp(NewSizeY, MinResize.Y.Offset, MaxResize.Y.Offset)
            NewSizeX = Clamp(NewSizeX, MinResize.X.Offset, MaxResize.X.Offset)
        end
        --
        return UseParent and NewUDim2(1, 0, 0, NewSizeY) or NewUDim2(0, NewSizeX, 0, NewSizeY)
    end
    
    --
    Library:Connection(DragFrame.MouseEnter, function()
        Hovering = true
    end)
    --
    Library:Connection(DragFrame.MouseLeave, function()
        if NewMouse then NewMouse:Destroy() NewMouse = nil end
        --
        UserInputService.MouseIconEnabled = true
        Hovering = false
    end)
    --
    Library:Connection(DragFrame.InputBegan, function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 then
            Dragging = true
            MouseLocation = UserInputService:GetMouseLocation()
            StartingSize = Object.Size

            if UseParent then
                ResizeSiblings = {}

                for Index, Child in Object.Parent:GetChildren() do
                    if Child:IsA("Frame") and Child ~= Object then
                        ResizeSiblings[#ResizeSiblings + 1] = {
                            Child = Child,
                            Before = Library:CheckFrameFirst(Object, Child)
                        }
                    end
                end
            end
        end
    end)
    --
    Library:Connection(RunService.PreRender, function()
        if (Hovering or Dragging) and UseIcon then
            local MousePosition = UserInputService:GetMouseLocation()
            --
            if UserInputService.MouseIconEnabled then
                UserInputService.MouseIconEnabled = false
            end
            --
            if not NewMouse then
                NewMouse = Library:CreateObject("ImageLabel", {
                    BorderColor3 = NewRGB(0, 0, 0),
                    Image = "rbxassetid://87982048533100",
                    BackgroundTransparency = 1,
                    AnchorPoint = NewVector2(0.5, 0.5),
                    Name = "Transparency",
                    Size = NewUDim2(0, 35, 0, 35),
                    ZIndex = 10000,
                    BorderSizePixel = 0,
                    BackgroundColor3 = NewRGB(255, 255, 255),
                    Parent = Library.UI.ScreenGUI
                }, true)
            end
            --
            NewMouse.Position = NewUDim2(0, MousePosition.X, 0, MousePosition.Y)
        end
        --
        if Dragging then
            local NewSize = UpdateSize()
            --
            if NewSize and Object.Size ~= NewSize then
                Object.Size = NewSize
                --
                if UseParent then
                    Object:SetAttribute("Fill", false)
                end
                --
                Library.LayoutVersion += 1
            end
        end
    end)
    --
    Library:Connection(UserInputService.InputEnded, function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 and Dragging then
            if NewMouse then NewMouse:Destroy() NewMouse = nil end
            --
            if UseParent then
                for Index = 1, #(ResizeSiblings or {}) do
                    local Entry = ResizeSiblings[Index]
                    local Child = Entry.Child

                    if Child.Parent == Object.Parent then
                        if Entry.Before then
                            if Child.AbsoluteSize.Y >= (Object.Parent.AbsoluteSize.Y - Object.AbsoluteSize.Y) - 57 then
                                Child.Size = NewUDim2(Child.Size.X.Scale, Child.Size.X.Offset, 0, Max(50, (Object.Parent.AbsoluteSize.Y - Object.AbsoluteSize.Y) - 57))
                            end
                        end
                    end
                end
            end
            --
            UserInputService.MouseIconEnabled = true
            Dragging = false
            ResizeSiblings = nil
            Library.UI.Resizing = false
        end
    end)
end
--
Library.__index = Library
Library.Sections.__index = Library.Sections
--
local Sections = Library.Sections
--
function Library:ColorPicker(Options)
    Options = Library:Validate({
        Name = "Preview Color Picker",
        Default = NewRGB(255, 0, 0),
        Alpha = 0,
        AlphaBar = true,
        Parent = nil,
        MainUI = nil,
        TabUI = nil,
        Count = 1,
        Keybind = false,
        AllowAnimation = true,
        Flag = Library:NewFlag(),
        Callback = function() end,
    }, Options or {})
    --
    local Hue, Saturation, Value = Options.Default:ToHSV()
    --
    local ColorPicker = {
        Hover = false,
        Active = false,
        MouseDown = false,
        MainFrameHover = false,
        Color = Options.Default,
        SecondColor = NewRGB(Max(Floor(Options.Default.R * 255) - 14, 0), Max(Floor(Options.Default.G * 255) - 14, 0), Max(Floor(Options.Default.B * 255) - 14, 0)),
        Saturation = {Saturation, Value},
        Alpha = Options.Alpha,
        Hue = Hue,
        ActiveFrame = false,
        LastCopiedColor = {Options.Default, Options.Alpha},
        FrameOpened = false,
        BaseColor = Options.Default,
        BaseAlpha = Options.Alpha,
        AnimationType = "None",
        AnimationSpeed = 1,
        AnimationStarted = Clock(),
        AnimationColor1 = Options.Default,
        AnimationColor2 = NewRGB(255, 255, 255),
    }
    --
    Library.Flags[Options.Flag] = ColorPicker
    --
    Library.UI.TotalColorPickers += 1
    --
    local PickerIndex = Library.UI.TotalColorPickers 
    --
    if Options.Keybind then
        Options.Count += 1
    end
    --
    local ColorPickerOutline_1 = Library:CreateObject("Frame", {
        BorderColor3 = NewRGB(0, 0, 0),
        AnchorPoint = NewVector2(1, 0),
        Name = "ColorPickerOutline" .. PickerIndex,
        Position = NewUDim2(1, 0 - (Options.Count - 1) * 22, 0, 0),
        Size = NewUDim2(0, 17, 0, 9),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(12, 12, 12),
        Parent = Options.Parent
    })
    --
    local ColorPickerChecker = Library:CreateObject("Frame", {
        AnchorPoint = NewVector2(0, 1),
        Position = NewUDim2(0, 0, 1, 4),
        BorderColor3 = NewRGB(0, 0, 0),
        Size = NewUDim2(1, 0, 0, 1),
        Visible = false,
        BorderSizePixel = 0,
        Parent = ColorPickerOutline_1
    })
    --
    local Button_9 = Library:CreateObject("TextButton", {
        FontFace = Library.UI.NewFont,
        TextColor3 = NewRGB(0, 0, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "Button_9",
        BackgroundTransparency = 1,
        Size = NewUDim2(1, 0, 1, 0),
        BorderSizePixel = 0,
        TextTransparency = 1,
        TextSize = Library.UI.FontSize,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = ColorPickerOutline_1
    })
    --
    local ColorPickerInline_1 = Library:CreateObject("Frame", {
        Size = NewUDim2(1, -2, 1, -2),
        Name = "ColorPickerInline_1",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundTransparency = 1,
        Parent = ColorPickerOutline_1
    })
    --
    local Checker = Library:CreateObject("Frame", {
        Size = NewUDim2(1, 0, 1, 0),
        BorderSizePixel = 0,
        BackgroundTransparency = 1,
        ZIndex = 3,
        Parent = ColorPickerInline_1
    })

    for Row = 0, 1 do
        for Column = 0, 3 do
            Library:CreateObject("Frame", {
                Position = NewUDim2(Column / 4, 0, Row / 2, 0),
                Size = NewUDim2(0.25, 0, 0.5, 0),
                BorderSizePixel = 0,
                BackgroundColor3 = ((Row + Column) % 2 == 0) and NewRGB(185, 185, 185) or NewRGB(115, 115, 115),
                ZIndex = 3,
                Parent = Checker
            })
        end
    end

    local ColorLayer = Library:CreateObject("Frame", {
        Size = NewUDim2(1, 0, 1, 0),
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        ZIndex = 4,
        Parent = ColorPickerInline_1
    })
    --
    local UIGradient_24 = Library:CreateObject("UIGradient", {
        Rotation = 90,
        Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, ColorPicker.Color),
            ColorSequenceKeypoint.new(1, ColorPicker.SecondColor)
        },
        Parent = ColorLayer
    })
    --
do
        local function NoFrameUpdate() end 
        --
        ColorPicker.UpdateFrame = NoFrameUpdate 
        --
        function ColorPicker:SetVisible(Bool)
            ColorPickerOutline_1.Visible = Bool
            --
            if Bool == false then
                ColorPicker:RemoveFrame()
                ColorPicker:RemoveAnimationFrame()
            end
        end
        --
        function ColorPicker:Update(Animated)
            if SetThreadIdentity then
                pcall(SetThreadIdentity, 8)
            end
            --
            ColorPicker.Hue = Clamp(tonumber(ColorPicker.Hue) or 0, 0, 1)
            ColorPicker.Saturation[1] = Clamp(tonumber(ColorPicker.Saturation[1]) or 0, 0, 1)
            ColorPicker.Saturation[2] = Clamp(tonumber(ColorPicker.Saturation[2]) or 0, 0, 1)
            ColorPicker.Alpha = Clamp(tonumber(ColorPicker.Alpha) or 0, 0, 1)
            --
            ColorPicker.Color = FromHSV(ColorPicker.Hue, ColorPicker.Saturation[1], ColorPicker.Saturation[2])
            ColorPicker.SecondColor = NewRGB(Max(Floor(ColorPicker.Color.R * 255) - 23, 0), Max(Floor(ColorPicker.Color.G * 255) - 23, 0), Max(Floor(ColorPicker.Color.B * 255) - 23, 0))
            ColorLayer.BackgroundTransparency = ColorPicker.Alpha

            if not Animated then
                ColorPicker.BaseColor = ColorPicker.Color
                ColorPicker.BaseAlpha = ColorPicker.Alpha
                --
                if ColorPicker.AnimationType ~= "None" then
                    ColorPicker.AnimationColor1 = ColorPicker.Color
                    --
                    local Controls = ColorPicker.AnimationControls
                    local Picker = Controls and Controls.Color1Picker

                    if Picker and Picker.Set and Picker ~= ColorPicker then
                        Picker:Set(ColorPicker.Color)
                    end
                end
            end
            --
            UIGradient_24.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, ColorPicker.Color), ColorSequenceKeypoint.new(1, ColorPicker.SecondColor)}
            --
            ColorPicker:UpdateFrame()
            --
            Library.Flags[Options.Flag] = ColorPicker
            Options.Callback(ColorPicker.Color, ColorPicker.Alpha)
        end
        --
        function ColorPicker:Set(Color, Transparency)
            if typeof(Color) == "table" then
                if Color.Color ~= nil then 
                    ColorPicker:Set(Color.Color, Color.Transparency)

                    if Color.AnimationType then
                        ColorPicker:SetAnimation(Color.AnimationType, Color.AnimationSpeed)
                    end

                    return
                end
                --
                ColorPicker.Hue = Color[1]
                ColorPicker.Saturation[1] = Color[2]
                ColorPicker.Saturation[2] = Color[3]
                ColorPicker.Alpha = Color[4] or ColorPicker.Alpha
                --
                ColorPicker:Update()

                if Color[5] then
                    ColorPicker:SetAnimation(Color[5], Color[6])
                end
            elseif typeof(Color) == "Color3" then
                local Hue, Saturation, Value = Color:ToHSV()
                --
                ColorPicker.Hue = Hue
                ColorPicker.Saturation[1] = Saturation
                ColorPicker.Saturation[2] = Value
                ColorPicker.Alpha = Transparency or ColorPicker.Alpha
                --
                ColorPicker:Update()
            end
        end
        --
        function ColorPicker:SetAnimation(AnimationType, Speed)
            local Valid = {
                None = true,
                Rainbow = true,
                Fade = true,
                Pulse = true,
                Shift = true
            }

            local Previous = ColorPicker.AnimationType

            AnimationType = Valid[AnimationType] and AnimationType or "None"
            ColorPicker.AnimationType = AnimationType
            ColorPicker.AnimationSpeed = Clamp(tonumber(Speed) or ColorPicker.AnimationSpeed or 1, 0.1, 8)
            ColorPicker.AnimationStarted = Clock()

            if AnimationType == "None" then
                Library.AnimatedColorPickers[ColorPicker] = nil
                ColorPicker:Set(ColorPicker.BaseColor, ColorPicker.BaseAlpha)
            else
                if Previous == "None" then
                    local Base = ColorPicker.BaseColor or ColorPicker.Color

                    ColorPicker.AnimationColor1 = Base

                    local Controls = ColorPicker.AnimationControls
                    local Picker = Controls and Controls.Color1Picker

                    if Picker and Picker.Set then
                        Picker:Set(Base)
                    end
                end

                Library.AnimatedColorPickers[ColorPicker] = true
            end
        end
        --
        function ColorPicker:StepAnimation(Now)
            if ColorPicker.AnimationType == "None" or not ColorPickerOutline_1.Parent then
                Library.AnimatedColorPickers[ColorPicker] = nil
                return
            end

            local Color1 = ColorPicker.AnimationColor1 or ColorPicker.BaseColor
            local Color2 = ColorPicker.AnimationColor2 or NewRGB(255, 255, 255)
            local BaseHue, BaseSaturation, BaseValue = Color1:ToHSV()
            local Time = (Now - ColorPicker.AnimationStarted) * ColorPicker.AnimationSpeed
            local Hue, Saturation, Value = BaseHue, BaseSaturation, BaseValue

            if ColorPicker.AnimationType == "Rainbow" then
                Hue = (BaseHue + Time * 0.15) % 1
            elseif ColorPicker.AnimationType == "Fade" then
                local Mixed = Color1:Lerp(Color2, (Sin(Time * TwoPi) + 1) * 0.5)
                Hue, Saturation, Value = Mixed:ToHSV()
            elseif ColorPicker.AnimationType == "Pulse" then
                local Mixed = Color1:Lerp(Color2, (Sin(Time * TwoPi) + 1) * 0.5)
                Hue, Saturation, Value = Mixed:ToHSV()
            elseif ColorPicker.AnimationType == "Shift" then
                local Mixed = Color1:Lerp(Color2, Abs(Sin(Time * Pi)))
                Hue, Saturation, Value = Mixed:ToHSV()
            end

            ColorPicker.Hue = Hue
            ColorPicker.Saturation[1] = Saturation
            ColorPicker.Saturation[2] = Clamp(Value, 0, 1)
            ColorPicker.Alpha = ColorPicker.BaseAlpha
            ColorPicker:Update(true)
        end
        --
        function ColorPicker:Get()
            return {
                Color = ColorPicker.BaseColor,
                Transparency = ColorPicker.BaseAlpha,
                AnimationType = ColorPicker.AnimationType,
                AnimationSpeed = ColorPicker.AnimationSpeed
            }
        end
        --
        function ColorPicker:UpdateHue(Percentage)
            local Percentage = typeof(Percentage == "number") and Clamp(Percentage, 0, 1) or 0
            --
            ColorPicker.Hue = Percentage
            --
            if ColorPicker.AnimationType == "Rainbow" then
                ColorPicker.AnimationStarted = Clock()
            end
            --
            ColorPicker:Update()
        end
        --
        function ColorPicker:UpdateAlpha(Percentage)
            local Percentage = typeof(Percentage == "number") and Clamp(Percentage, 0, 1) or 0
            --
            ColorPicker.Alpha = Percentage
            --
            ColorPicker:Update()
        end
        --
        function ColorPicker:UpdateSaturation(PercentageX, PercentageY)
            local PercentageX = typeof(PercentageX == "number") and Clamp(PercentageX, 0, 1) or 0
            local PercentageY = typeof(PercentageY == "number") and Clamp(PercentageY, 0, 1) or 0
            --
            ColorPicker.Saturation[1] = PercentageX
            ColorPicker.Saturation[2] = 1 - PercentageY
            --
            ColorPicker:Update()
        end
        --
        function ColorPicker:AddFrame()
            Library.UI.CurrentSelectedColorPicker = {ColorPicker = ColorPicker, ColorPickerOutline = ColorPickerOutline_1, Parent = Options.Parent}
            --
            Library.UI.OpenColorFrames += 1
            --
            local ColorPickerOutline = Library:CreateObject("Frame", {
                Size = NewUDim2(0, 180, 0, 175),
                Name = "ColorPickerFrame" .. PickerIndex,
                Position = NewUDim2(0, 0, 0, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 250,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(12, 12, 12),
                Parent = Library.UI.ScreenGUI
            })
            --
            ColorPickerOutline.BackgroundTransparency = 1
            --
            local ColorPickerInline = Library:CreateObject("Frame", {
                Size = NewUDim2(1, -2, 1, -2),
                Name = "ColorPickerInline",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 250,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(60, 60, 60),
                Parent = ColorPickerOutline
            })
            --
            ColorPickerInline.BackgroundTransparency = 1
            --
            local ColorPickerMain = Library:CreateObject("Frame", {
                Size = NewUDim2(1, -2, 1, -2),
                Name = "ColorPickerMain",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 250,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(40, 40, 40),
                Parent = ColorPickerInline
            })
            --
            ColorPickerMain.BackgroundTransparency = 1
            --
            local MainPicker = Library:CreateObject("Frame", {
                Size = NewUDim2(1, -24, 1, -19),
                Name = "MainPicker",
                Position = NewUDim2(0, 2, 0, 2),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 250,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(12, 12, 12),
                Parent = ColorPickerMain
            })
            --
            MainPicker.BackgroundTransparency = 1
            --
            local Button_91 = Library:CreateObject("TextButton", {
                FontFace = Library.UI.NewFont,
                TextColor3 = NewRGB(0, 0, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "Button_9",
                BackgroundTransparency = 1,
                Size = NewUDim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                TextTransparency = 1,
                ZIndex = 250,
                TextSize = Library.UI.FontSize,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = MainPicker
            })
            --
            local MainPickerColor = Library:CreateObject("Frame", {
                Size = NewUDim2(1, -2, 1, -2),
                Name = "MainPickerColor",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 250,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = MainPicker
            })
            --
            MainPickerColor.BackgroundTransparency = 1
            --
            local UIGradient_20 = Library:CreateObject("UIGradient", {
                Rotation = 180,
                Color = ColorSequence.new{
                    ColorSequenceKeypoint.new(0, NewRGB(255, 0, 4)),
                    ColorSequenceKeypoint.new(1, NewRGB(255, 255, 255))
                },
                Parent = MainPickerColor
            })
            --
            local BackImage = Library:CreateObject("ImageLabel", {
                BorderColor3 = NewRGB(0, 0, 0),
                Image = "rbxassetid://13966897785",
                BackgroundTransparency = 1,
                Name = "BackImage",
                Size = NewUDim2(1, 0, 1, 0),
                ZIndex = 250,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(0, 0, 0),
                Parent = MainPickerColor
            })
            --
            BackImage.ImageTransparency = 1
            --
            local DraggingMainOutline = Library:CreateObject("Frame", {
                Size = NewUDim2(0, 4, 0, 4),
                Name = "DraggingMainOutline",
                Position = NewUDim2(0, 0, 0, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 251,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(12, 12, 12),
                Parent = MainPicker
            })
            --
            DraggingMainOutline.BackgroundTransparency = 1
            --
            local DraggingMain = Library:CreateObject("Frame", {
                Size = NewUDim2(1, -2, 1, -2),
                Name = "DraggingMain",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 251,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = DraggingMainOutline
            })
            --
            DraggingMain.BackgroundTransparency = 1
            --
            local SaturationSlider = Library:CreateObject("Frame", {
                BorderColor3 = NewRGB(0, 0, 0),
                AnchorPoint = NewVector2(0, 1),
                Name = "SaturationSlider",
                Position = NewUDim2(0, 2, 1, -2),
                Size = NewUDim2(1, -24, 0, 12),
                ZIndex = 250,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(12, 12, 12),
                Parent = ColorPickerMain
            })
            --
            SaturationSlider.BackgroundTransparency = 1
            --
            local Button_915241 = Library:CreateObject("TextButton", {
                FontFace = Library.UI.NewFont,
                TextColor3 = NewRGB(0, 0, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "Button_9",
                BackgroundTransparency = 1,
                Size = NewUDim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                TextTransparency = 1,
                ZIndex = 250,
                TextSize = Library.UI.FontSize,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = SaturationSlider
            })
            --
            local SaturationColor = Library:CreateObject("Frame", {
                Size = NewUDim2(1, -2, 1, -2),
                Name = "SaturationColor",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 251,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = SaturationSlider
            })
            --
            SaturationColor.BackgroundTransparency = 1
            --
            local UIGradient_21 = Library:CreateObject("UIGradient", {
                Color = ColorSequence.new{
                    ColorSequenceKeypoint.new(0, NewRGB(255, 0, 4)),
                    ColorSequenceKeypoint.new(1, NewRGB(255, 255, 255))
                },
                Transparency = NumberSequence.new{
                    NewNumberKeypoint(0, 0.10000000149011612),
                    NewNumberKeypoint(0.5, 0.800000011920929),
                    NewNumberKeypoint(1, 1)
                },
                Rotation = 180,
                Parent = SaturationColor
            })
            --
            local BackImage_1 = Library:CreateObject("ImageLabel", {
                ScaleType = Enum.ScaleType.Tile,
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "BackImage_1",
                TileSize = NewUDim2(0, 12, 0, 12),
                Image = "rbxassetid://18249241978",
                BackgroundTransparency = 1,
                Position = NewUDim2(0, 1, 0, 1),
                Size = NewUDim2(1, -2, 1, -2),
                ZIndex = 250,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(0, 0, 0),
                Parent = SaturationSlider
            })
            --
        BackImage_1.ImageTransparency = Options.AlphaBar and 0 or 1
        BackImage_1.Visible = Options.AlphaBar
            --
            local DraggingSatOutline = Library:CreateObject("Frame", {
                Size = NewUDim2(0, 4, 1, 0),
                Name = "DraggingSatOutline",
                Position = NewUDim2(0, 0, 0, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 251,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(12, 12, 12),
                Parent = SaturationSlider
            })
            --
            DraggingSatOutline.BackgroundTransparency = 1
            --
            local DraggingSatMain = Library:CreateObject("Frame", {
                Size = NewUDim2(1, -2, 1, -2),
                Name = "DraggingSatMain",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 251,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = DraggingSatOutline
            })
            --
            DraggingSatMain.BackgroundTransparency = 1
            --
            local HueSlider = Library:CreateObject("Frame", {
                BorderColor3 = NewRGB(0, 0, 0),
                AnchorPoint = NewVector2(1, 0),
                Name = "HueSlider",
                Position = NewUDim2(1, -2, 0, 2),
                Size = NewUDim2(0, 17, 1, -19),
                ZIndex = 250,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(12, 12, 12),
                Parent = ColorPickerMain
            })
            --
            HueSlider.BackgroundTransparency = 1
            --
            local Button_9141 = Library:CreateObject("TextButton", {
                FontFace = Library.UI.NewFont,
                TextColor3 = NewRGB(0, 0, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "Button_9",
                BackgroundTransparency = 1,
                Size = NewUDim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                TextTransparency = 1,
                ZIndex = 250,
                TextSize = Library.UI.FontSize,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = HueSlider
            })
            --
            local BackImage_2 = Library:CreateObject("ImageLabel", {
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "BackImage_2",
                TileSize = NewUDim2(0, 12, 0, 12),
                Image = "rbxassetid://8180989234",
                BackgroundTransparency = 1,
                Position = NewUDim2(0, 1, 0, 1),
                Size = NewUDim2(1, -2, 1, -2),
                ZIndex = 250,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(0, 0, 0),
                Parent = HueSlider
            })
            --
            BackImage_2.ImageTransparency = 1
            --
            local DraggingHueOutline = Library:CreateObject("Frame", {
                Size = NewUDim2(1, 0, 0, 4),
                Name = "DraggingHueOutline",
                Position = NewUDim2(0, 0, 0, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 251,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(12, 12, 12),
                Parent = HueSlider
            })
            --
            DraggingHueOutline.BackgroundTransparency = 1
            --
            local DraggingHueMain = Library:CreateObject("Frame", {
                Size = NewUDim2(1, -2, 1, -2),
                Name = "DraggingHueMain",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 251,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = DraggingHueOutline
            })
            --
            DraggingHueMain.BackgroundTransparency = 1
            --
            do -- Functions
                function ColorPicker:UpdateSize()
                    ColorPickerOutline.Position = NewUDim2(0, ColorPickerOutline_1.AbsolutePosition.X, 0, (ColorPickerOutline_1.AbsolutePosition.Y + ColorPickerOutline_1.AbsoluteSize.Y + GuiService:GetGuiInset().Y + 2))
                end
                --
                ColorPicker:UpdateSize()
                --
                Library:Connection(Options.MainUI:GetPropertyChangedSignal("AbsolutePosition"), ColorPicker.UpdateSize)
                --
                local StartingY = ColorPickerOutline_1.AbsolutePosition.Y
                local MainUIStartingY = Options.MainUI.AbsolutePosition.Y
                local StartingCanvasPosition = Options.Parent.Parent.CanvasPosition
                --
                Library:Connection(ColorPickerOutline_1:GetPropertyChangedSignal("AbsolutePosition"), function()
                    local CurrentY = ColorPickerOutline_1.AbsolutePosition.Y
                    local MainUICurrentY = Options.MainUI.AbsolutePosition.Y
                    local CurrentCanvasPosition = Options.Parent.Parent.CanvasPosition
                    --
                    if MainUICurrentY ~= MainUIStartingY then
                        MainUIStartingY = MainUICurrentY
                        StartingY = CurrentY
                        --
                        return
                    end
                    --
                    if CurrentCanvasPosition ~= StartingCanvasPosition then
                        StartingCanvasPosition = CurrentCanvasPosition
                        StartingY = CurrentY
                        --
                        return
                    end
                    --
                    if Library.UI.Resizing then
                        return
                    end
                    --
                    if CurrentY ~= StartingY then
                        ColorPicker:RemoveFrame(true)
                    end
                    --
                    StartingY = CurrentY
                end)
                --
                Library:Connection(Options.MainUI:GetPropertyChangedSignal("AbsoluteSize"), function()
                    if ColorPicker.Active then
                        ColorPickerOutline.Visible = Library:ScrollingCheck(Options.Parent.Parent, ColorPickerChecker)
                    end
                    --
                    ColorPicker:UpdateSize()
                end)
                --
                if Options.Parent.Parent:IsA("ScrollingFrame") then
                    Library:Connection(Options.Parent.Parent:GetPropertyChangedSignal("CanvasPosition"), function()
                        ColorPicker:UpdateSize()
                        --
                        if ColorPicker.Active then
                            ColorPickerOutline.Visible = Library:ScrollingCheck(Options.Parent.Parent, ColorPickerChecker)
                        end
                    end)
                end
                --
                Library:Connection(Options.MainUI:GetPropertyChangedSignal("Visible"), function()
                    if not Options.MainUI.Visible then
                        ColorPickerOutline.Visible = false
                    else
                        ColorPickerOutline.Visible = ColorPicker.Active
                    end
                end)
                --
                Library:Connection(Options.Parent.Parent:GetPropertyChangedSignal("Visible"), function()
                    if not Options.Parent.Parent.Visible then
                        ColorPickerOutline.Visible = false
                    else
                        ColorPickerOutline.Visible = ColorPicker.Active
                    end
                end)
                --
                function ColorPicker:UpdateFrame() 
                    if ColorPickerOutline.Parent == nil then 
                        return
                    end
                    --
                    UIGradient_20.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, FromHSV(ColorPicker.Hue, 1, 1)), ColorSequenceKeypoint.new(1.000, NewRGB(255, 255, 255))}
                    UIGradient_21.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, ColorPicker.Color), ColorSequenceKeypoint.new(1, ColorPicker.Color)}
                    --
                    local MaxSaturationX = MainPickerColor.AbsoluteSize.X > 0 and Max(0, MainPickerColor.AbsoluteSize.X - DraggingMainOutline.AbsoluteSize.X) / MainPickerColor.AbsoluteSize.X or 1
                    local MaxSaturationY = MainPickerColor.AbsoluteSize.Y > 0 and Max(0, MainPickerColor.AbsoluteSize.Y - DraggingMainOutline.AbsoluteSize.Y) / MainPickerColor.AbsoluteSize.Y or 1
                    local MaxAlpha = SaturationColor.AbsoluteSize.X > 0 and Max(0, SaturationColor.AbsoluteSize.X - DraggingSatOutline.AbsoluteSize.X) / SaturationColor.AbsoluteSize.X or 1
                    local MaxHue = BackImage_2.AbsoluteSize.Y > 0 and Max(0, BackImage_2.AbsoluteSize.Y - DraggingHueOutline.AbsoluteSize.Y) / BackImage_2.AbsoluteSize.Y or 1
                    --
                    Library:TweenObject(DraggingMainOutline, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = UDim2.fromScale(Clamp(ColorPicker.Saturation[1], 0, MaxSaturationX), Clamp(1 - ColorPicker.Saturation[2], 0, MaxSaturationY))})
                    Library:TweenObject(DraggingSatOutline, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = NewUDim2(Clamp(1 - ColorPicker.Alpha, 0, MaxAlpha), 0, 0, 0)})
                    Library:TweenObject(DraggingHueOutline, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = NewUDim2(0, 0, Clamp(ColorPicker.Hue, 0, MaxHue), 0)})
                    --
                    DraggingMain.BackgroundColor3 = ColorPicker.Color
                    DraggingSatMain.BackgroundColor3 = ColorPicker.Color
                    DraggingHueMain.BackgroundColor3 = ColorPicker.Color
                    UIGradient_21.Transparency = NumberSequence.new{NewNumberKeypoint(0, 0.304 + (0.604 - 0.304) * ColorPicker.Alpha), NewNumberKeypoint(0.5, 0.7), NewNumberKeypoint(1, 1)}
                end
            end
            --
            do -- Connections
                Library:Connection(Button_91.InputBegan, function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                        Library.UI.DraggingGui = MainPickerColor
                        --
                        local InputPosition = NewVector2(Input.Position.X, Input.Position.Y)
                        local Percentage = (InputPosition - MainPickerColor.AbsolutePosition) / MainPickerColor.AbsoluteSize
                        --
                        ColorPicker:UpdateSaturation(Percentage.X, Percentage.Y)
                    end
                end)
                --
                Library:Connection(Button_915241.InputBegan, function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                        Library.UI.DraggingGui = SaturationColor
                        --
                        local InputPosition = NewVector2(Input.Position.X, Input.Position.Y)
                        local GuiPosition = SaturationColor.AbsolutePosition.X
                        local GuiSize = SaturationColor.AbsoluteSize.X
                        local Percentage = ((GuiPosition + GuiSize - InputPosition.X) / GuiSize)
                        --
                        ColorPicker:UpdateAlpha(Percentage)
                    end
                end)
                --
                Library:Connection(Button_9141.InputBegan, function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                        Library.UI.DraggingGui = BackImage_2
                        --
                        local InputPosition = NewVector2(Input.Position.X, Input.Position.Y)
                        local Percentage = (InputPosition - BackImage_2.AbsolutePosition) / BackImage_2.AbsoluteSize
                        --
                        ColorPicker:UpdateHue(Percentage.Y)
                    end
                end)
                --
                Library:Connection(UserInputService.InputChanged, function(Input)
                    if (Library.UI.DraggingGui ~= SaturationColor and Library.UI.DraggingGui ~= MainPickerColor and Library.UI.DraggingGui ~= BackImage_2) then return end
                    --
                    if not (UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)) then
                        Library.UI.DraggingGui = nil
                        return
                    end
                    --
                    local InputPosition = NewVector2(Input.Position.X, Input.Position.Y)
                    --
                    if (Input.UserInputType == Enum.UserInputType.MouseMovement) then
                        if Library.UI.DraggingGui == MainPickerColor then
                            local Percentage = (InputPosition - MainPickerColor.AbsolutePosition) / MainPickerColor.AbsoluteSize
                            --
                            ColorPicker:UpdateSaturation(Percentage.X, Percentage.Y)
                        end
                        --
                        if Library.UI.DraggingGui == SaturationColor then
                            local GuiPosition = SaturationColor.AbsolutePosition.X
                            local GuiSize = SaturationColor.AbsoluteSize.X
                            local Percentage = ((GuiPosition + GuiSize - InputPosition.X) / GuiSize)
                            --
                            ColorPicker:UpdateAlpha(Percentage)
                        end
                        --
                        if Library.UI.DraggingGui == BackImage_2 then
                            local Percentage = (InputPosition - BackImage_2.AbsolutePosition) / BackImage_2.AbsoluteSize
                            --
                            ColorPicker:UpdateHue(Percentage.Y)
                        end
                    end
                end)
            end
            --
            ColorPicker:UpdateFrame()
            Library:Fade(true, Library:GetObjectsTable(ColorPickerOutline, true), ColorPickerOutline, 0.1)
        end
        --
        function ColorPicker:RemoveFrame(Fast)
            local Fast = Fast or false
            --
            ColorPicker.UpdateFrame = NoFrameUpdate 
            --
            for Index, Value in Library.UI.ScreenGUI:GetChildren() do
                if Value:IsA("Frame") and Value.Name == "ColorPickerFrame" .. PickerIndex then
                    Library.UI.OpenColorFrames = Max(Library.UI.OpenColorFrames - 1, 0)
                    --
                    if Fast then
                        Value:Destroy()
                    else
                        Library:Fade(false, Library:GetObjectsTable(Value, true), Value, 0.1)
                        --
                        Delay(Library.UI.TweenSpeed, function()
                            Value:Destroy()
                        end)
                    end
                end
            end
        end
        --
        function ColorPicker:FindFrame()
            for Index, Value in Library.UI.ScreenGUI:GetChildren() do
                if Value:IsA("Frame") and Value.Name == "ColorPickerFrame" .. PickerIndex then
                    return true
                end
            end
            --
            return false
        end
        --
        function ColorPicker:Toggle()
            if Library.UI.CurrentSelectedColorPicker and Library.UI.CurrentSelectedColorPicker.ColorPickerOutline.Name ~= ColorPickerOutline_1.Name then
                Library.UI.CurrentSelectedColorPicker.ColorPicker:RemoveFrame()
            end
            --
            if not ColorPicker:FindFrame() then
                ColorPicker.Active = true
                ColorPicker:AddFrame()
            else
                ColorPicker.Active = false
                ColorPicker:RemoveFrame()
            end
        end
        --
        function ColorPicker:RemoveAnimationFrame()
            local Section = ColorPicker.AnimationSection
            local Host = ColorPicker.AnimationHost
            --
            if Section then Section:SetVisible(false) end
            if Host then Host.Visible = false end
            --
            if Library.UI.CurrentColorAnimationPicker == ColorPicker then
                Library.UI.CurrentColorAnimationPicker = nil
            end
        end
        --
        function ColorPicker:PositionAnimationFrame()
            local Host = ColorPicker.AnimationHost
            --
            if not Host then return end
            --
            local Screen = Library.UI.ScreenGUI.AbsoluteSize
            local HostSize = Host.AbsoluteSize
            local Width = HostSize.X > 0 and HostSize.X or Host.Size.X.Offset
            local Height = HostSize.Y > 0 and HostSize.Y or Host.Size.Y.Offset
            local Window = Options.MainUI
            local Anchor = ColorPickerOutline_1.AbsolutePosition
            local X
            --
            if Window then
                local WindowPosition = Window.AbsolutePosition
                local WindowSize = Window.AbsoluteSize
                --
                X = WindowPosition.X + WindowSize.X + 6
                --
                if X + Width > Screen.X - 6 then
                    X = WindowPosition.X - Width - 6
                end
            else
                X = Anchor.X + ColorPickerOutline_1.AbsoluteSize.X + 6
            end
            --
            Host.Position = NewUDim2(0, Clamp(X, 6, Max(6, Screen.X - Width - 6)), 0, Clamp(Anchor.Y, 6, Max(6, Screen.Y - Height - 6)) + GuiService:GetGuiInset().Y)
        end
        --
        local function PointInside(Object, X, Y)
            if not Object or not Object.Parent or not Object.Visible then return false end
            --
            local Position = Object.AbsolutePosition
            local Size = Object.AbsoluteSize
            --
            if Size.X <= 0 or Size.Y <= 0 then return false end
            --
            return X >= Position.X and X <= Position.X + Size.X and Y >= Position.Y and Y <= Position.Y + Size.Y
        end
        --
        function ColorPicker:BindAnimationClose()
            if ColorPicker.AnimationCloseConnection then return end
            --
            ColorPicker.AnimationCloseConnection = Library:Connection(UserInputService.InputBegan, function(Input)
                if Input.UserInputType ~= Enum.UserInputType.MouseButton1 then return end
                --
                local Host = ColorPicker.AnimationHost
                --
                if not Host or not Host.Visible then return end
                --
                local Position = Input.Position
                local X, Y = Position.X, Position.Y
                --
                if PointInside(Host, X, Y) or PointInside(ColorPickerOutline_1, X, Y) then return end
                --
                for Index, Child in Library.UI.ScreenGUI:GetChildren() do 
                    if Child ~= Host and Child:IsA("GuiObject") and Child.ZIndex >= 25 and PointInside(Child, X, Y) then
                        return
                    end
                end
                --
                ColorPicker:RemoveAnimationFrame()
            end)
        end
        --
        function ColorPicker:AddAnimationFrame()
            if ColorPicker.AnimationHost and ColorPicker.AnimationHost.Visible then
                ColorPicker:RemoveAnimationFrame()
                return
            end

            local Current = Library.UI.CurrentColorAnimationPicker

            if Current and Current ~= ColorPicker then
                Current:RemoveAnimationFrame()
            end

            Library.UI.CurrentColorAnimationPicker = ColorPicker

            local Section = ColorPicker.AnimationSection

            if not Section then
                local Source = Options.SourceSection
                local Tab = Options.Tab or Source and Source.Tab

                if not Source or not Tab then return end

                local Host = Library:CreateObject("Frame", {
                    Name = "ColorPickerAnimationHost" .. PickerIndex,
                    Position = NewUDim2(0, 0, 0, 0),
                    Size = NewUDim2(0, 210, 0, 157),
                    BackgroundTransparency = 1,
                    BorderSizePixel = 0,
                    ZIndex = 200,
                    Visible = false,
                    Parent = Library.UI.ScreenGUI
                })

                ColorPicker.AnimationHost = Host
                --
                local Existing = {}
                --
                for Index, Child in Library.UI.ScreenGUI:GetChildren() do
                    Existing[Child] = true
                end
                --
                Section = Tab:Section({Name = "Animate", Side = Source.Side, Size = 155, Parent = Host})
                ColorPicker.AnimationSection = Section

                Library:Connection(ColorPickerOutline_1:GetPropertyChangedSignal("AbsolutePosition"), function()
                    if not Host.Visible then return end
                    --
                    ColorPicker:PositionAnimationFrame()
                end)
                --
                if Options.MainUI then
                    Library:Connection(Options.MainUI:GetPropertyChangedSignal("AbsolutePosition"), function()
                        if not Host.Visible then return end
                        --
                        ColorPicker:PositionAnimationFrame()
                    end)
                    --
                    Library:Connection(Options.MainUI:GetPropertyChangedSignal("AbsoluteSize"), function()
                        if not Host.Visible then return end
                        --
                        ColorPicker:PositionAnimationFrame()
                    end)
                end
                --

                local Color1 = Section:Label({Message = "Base Color"})
                local Color1Picker = Color1:ColorPicker({Default = ColorPicker.AnimationColor1, AllowAnimation = false, Callback = function(Value)
                    ColorPicker.AnimationColor1 = Value
                    ColorPicker.BaseColor = Value
                end})
                local Color2 = Section:Label({Message = "Color 2"})
                local Color2Picker = Color2:ColorPicker({Default = ColorPicker.AnimationColor2, AllowAnimation = false, Callback = function(Value)
                    ColorPicker.AnimationColor2 = Value
                end})
                local Speed = Section:Slider({Name = "Speed", Min = 0.1, Max = 8, Default = ColorPicker.AnimationSpeed, Decimal = 0.1, Ending = "x", Callback = function(Value)
                    ColorPicker:SetAnimation(ColorPicker.AnimationType, Value)
                end})
                local Mode
                local function RefreshMode(Value)
                    local ShowColors = Value ~= "None" and Value ~= "Rainbow"

                    Color1:SetVisible(Value ~= "None")
                    Color2:SetVisible(ShowColors)
                    Speed:SetVisible(Value ~= "None")
                    ColorPicker:SetAnimation(Value, ColorPicker.AnimationSpeed)
                end

                Mode = Section:Dropdown({Name = "Mode", Content = {"None", "Rainbow", "Fade", "Pulse", "Shift"}, Default = ColorPicker.AnimationType, Callback = RefreshMode})
                ColorPicker.AnimationControls = {Mode = Mode, Speed = Speed, Color1 = Color1, Color2 = Color2, Color1Picker = Color1Picker, Color2Picker = Color2Picker}
                RefreshMode(ColorPicker.AnimationType)
                --
                for Index, Descendant in Host:GetDescendants() do 
                    if Descendant:IsA("GuiObject") then
                        Descendant.ZIndex += 200
                    end
                end
                --
                for Index, Child in Library.UI.ScreenGUI:GetChildren() do 
                    if not Existing[Child] and Child ~= Host and Child:IsA("GuiObject") then
                        Child.ZIndex += 400
                        --
                        for Sub, Descendant in Child:GetDescendants() do
                            if Descendant:IsA("GuiObject") then
                                Descendant.ZIndex += 400
                            end
                        end
                    end
                end
            end

            ColorPicker.AnimationHost.Visible = true
            Section:SetVisible(true)
            ColorPicker:PositionAnimationFrame()
            ColorPicker:BindAnimationClose()
        end
        --
        function ColorPicker:AddOtherFrame()
            Library.UI.CurrentSelectedColorPickerExtra = {ColorPicker = ColorPicker, ColorPickerObject = ColorPickerOutline_1, Parent = Options.Parent}
            --
            local KeybindModePickerOutline = Library:CreateObject("Frame", {
                Name = "ColorPickerModeFrame" .. PickerIndex,
                Position = NewUDim2(0, 0, 0, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                Size = NewUDim2(0, 100, 0, 72),
                BorderSizePixel = 0,
                ZIndex = 25,
                AnchorPoint = NewVector2(1, 0),
                BackgroundColor3 = NewRGB(12, 12, 12),
                Parent = Library.UI.ScreenGUI
            })
            --
            local KeybindModePickerMain = Library:CreateObject("Frame", {
                Name = "KeybindModePickerMain",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                Size = NewUDim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                ZIndex = 25,
                BackgroundColor3 = NewRGB(35, 35, 35),
                Parent = KeybindModePickerOutline
            })
            --
            KeybindModePickerOutline.BackgroundTransparency = 1
            KeybindModePickerMain.BackgroundTransparency = 1
            --
            local UIListLayout_9 = Library:CreateObject("UIListLayout", {
                SortOrder = Enum.SortOrder.LayoutOrder,
                Parent = KeybindModePickerMain
            })
            --
            function ColorPicker:UpdateSize()
                KeybindModePickerOutline.Position = NewUDim2(0, ColorPickerOutline_1.AbsolutePosition.X - 2, 0, ColorPickerOutline_1.AbsolutePosition.Y + ColorPickerOutline_1.AbsoluteSize.Y + KeybindModePickerOutline.AbsoluteSize.Y - 4)
            end
            --
            ColorPicker:UpdateSize()
            --
            Library:Connection(Options.MainUI:GetPropertyChangedSignal("AbsolutePosition"), ColorPicker.UpdateSize)
            --
            local StartingY = ColorPickerOutline_1.AbsolutePosition.Y
            local MainUIStartingY = Options.MainUI.AbsolutePosition.Y
            local StartingCanvasPosition = Options.Parent.Parent.CanvasPosition
            --
            Library:Connection(ColorPickerOutline_1:GetPropertyChangedSignal("AbsolutePosition"), function()
                local CurrentY = ColorPickerOutline_1.AbsolutePosition.Y
                local MainUICurrentY = Options.MainUI.AbsolutePosition.Y
                local CurrentCanvasPosition = Options.Parent.Parent.CanvasPosition
                --
                if MainUICurrentY ~= MainUIStartingY then
                    MainUIStartingY = MainUICurrentY
                    StartingY = CurrentY
                    --
                    return
                end
                --
                if CurrentCanvasPosition ~= StartingCanvasPosition then
                    StartingCanvasPosition = CurrentCanvasPosition
                    StartingY = CurrentY
                    --
                    return
                end
                --
                if Library.UI.Resizing then
                    return
                end
                --
                if CurrentY ~= StartingY then
                    ColorPicker:RemoveOtherFrame(true)
                end
                --
                StartingY = CurrentY
            end)
            --
            Library:Connection(Options.MainUI:GetPropertyChangedSignal("AbsoluteSize"), function()
                if ColorPicker.ActiveFrame then
                    KeybindModePickerOutline.Visible = Library:ScrollingCheck(Options.Parent.Parent, ColorPickerChecker)
                end
                --
                ColorPicker:UpdateSize()
            end)
            --
            if Options.Parent.Parent:IsA("ScrollingFrame") then
                Library:Connection(Options.Parent.Parent:GetPropertyChangedSignal("CanvasPosition"), function()
                    ColorPicker:UpdateSize()
                    --
                    if ColorPicker.ActiveFrame then
                        KeybindModePickerOutline.Visible = Library:ScrollingCheck(Options.Parent.Parent, ColorPickerChecker)
                    end
                end)
            end
            --
            local Modes = {"Copy", "Paste", "Reset"}

            if Options.AllowAnimation then Modes[#Modes + 1] = "Animate" end

            KeybindModePickerOutline.Size = NewUDim2(0, 100, 0, #Modes * 17 + 4)

            for Index, Value in Modes do
                local ModeItem = {
                    Active = false,
                    Hovering = false,
                }
                --
                local Inactive = Library:CreateObject("TextLabel", {
                    FontFace = Library.UI.NewFont,
                    TextColor3 = NewRGB(208, 208, 208),
                    BorderColor3 = NewRGB(0, 0, 0),
                    Name = Value,
                    Text = Value,
                    RichText = true,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Size = NewUDim2(1, 0, 0, 17),
                    BorderSizePixel = 0,
                    TextSize = Library.UI.FontSize,
                    ZIndex = 25,
                    BackgroundColor3 = NewRGB(35, 35, 35),
                    Parent = KeybindModePickerMain
                })
                --
                local Button_4 = Library:CreateObject("TextButton", {
                    FontFace = Library.UI.NewFont,
                    TextColor3 = NewRGB(0, 0, 0),
                    BorderColor3 = NewRGB(0, 0, 0),
                    Name = "Button_4",
                    BackgroundTransparency = 1,
                    Size = NewUDim2(1, 0, 1, 0),
                    BorderSizePixel = 0,
                    TextTransparency = 1,
                    TextSize = Library.UI.FontSize,
                    ZIndex = 25,
                    BackgroundColor3 = NewRGB(255, 255, 255),
                    Parent = Inactive
                })
                --
                local UIPadding_48 = Library:CreateObject("UIPadding", {
                    PaddingLeft = NewUDim(0, 8),
                    Parent = Inactive
                })
                --
                Inactive.TextTransparency = 1
                --
                do -- Functions
                    function ModeItem:Activate()
                        if not ModeItem.Active then
                            ModeItem.Active = true
                            --
                            Inactive.Text = "<b>" .. Value .. "</b>"
                            Library:TweenObject(Inactive, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = Library.Theme.Default.Accent})
                            --
                            if Value == "Copy" then
                                Library.UI.LastCopiedColor = {Color = ColorPicker.Color, Alpha = ColorPicker.Alpha}
                            elseif Value == "Paste" then
                                if Library.UI.LastCopiedColor then
                                    ColorPicker:Set(Library.UI.LastCopiedColor.Color, Library.UI.LastCopiedColor.Alpha)
                                end
                            elseif Value == "Reset" then
                                ColorPicker:Set(Options.Default, Options.Alpha)
                            elseif Value == "Animate" then
                                ColorPicker:AddAnimationFrame()
                            end
                            --
                            ModeItem.Active = false 
                            --
                            ColorPicker:RemoveOtherFrame()
                        end
                    end
                    --
                    function ModeItem:Deactivate()
                        if ModeItem.Active then
                            ModeItem.Active = false
                            ModeItem.Hovering = false
                            Inactive.Text = Value
                            Library:TweenObject(Inactive, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = NewRGB(205, 205, 205)})
                        end
                    end
                end
                --
                do -- Connections
                    Library:Connection(Button_4.MouseButton1Click, function()
                        ModeItem:Activate()
                    end)
                    --
                    Library:Connection(Inactive.MouseEnter, function()
                        Inactive.BackgroundColor3 = NewRGB(25, 25, 25)
                        --
                        if ModeItem.Active then return end
                        --
                        Inactive.Text = "<b>" .. Value .. "</b>"
                    end)
                    --
                    Library:Connection(Inactive.MouseLeave, function()
                        Inactive.BackgroundColor3 = NewRGB(35, 35, 35)
                        --
                        if ModeItem.Active then return end
                        --
                        Inactive.Text = Value
                        Library:TweenObject(Inactive, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = NewRGB(205, 205, 205)})
                    end)
                end
            end
            --
            Library:Fade(true, Library:GetObjectsTable(KeybindModePickerOutline, true), KeybindModePickerOutline, 0.1)
        end
        --
        function ColorPicker:RemoveOtherFrame(Fast)
            local Fast = Fast or false
            --
            for Index, Value in Library.UI.ScreenGUI:GetChildren() do
                if Value:IsA("Frame") and Value.Name == "ColorPickerModeFrame" .. PickerIndex then
                    if Fast then
                        Value:Destroy()
                    else
                        Library:Fade(false, Library:GetObjectsTable(Value, true), Value, 0.1)
                        --
                        Delay(Library.UI.TweenSpeed, function()
                            Value:Destroy()
                        end)
                    end
                end
            end
        end
        --
        function ColorPicker:FindOtherFrame()
            for Index, Value in Library.UI.ScreenGUI:GetChildren() do
                if Value:IsA("Frame") and Value.Name == "ColorPickerModeFrame" .. PickerIndex then
                    return true
                end
            end
            --
            return false
        end
        --
        function ColorPicker:ToggleOtherFrame()
            if Library.UI.CurrentSelectedColorPickerExtra and Library.UI.CurrentSelectedColorPickerExtra.ColorPickerObject.Name ~= ColorPickerOutline_1.Name then
                Library.UI.CurrentSelectedColorPickerExtra.ColorPicker:RemoveOtherFrame()
            end
            --
            if not ColorPicker:FindOtherFrame() then
                ColorPicker.ActiveFrame = true
                ColorPicker:AddOtherFrame()
            else
                ColorPicker.ActiveFrame = false
                ColorPicker:RemoveOtherFrame()
            end
        end
    end
    --
    do -- Connections
        Library:Connection(Button_9.MouseButton2Click, function()
            ColorPicker:ToggleOtherFrame()
        end)
        --
        Library:Connection(Button_9.MouseButton1Click, function()
            ColorPicker:Toggle()
        end)
    end
    --
    if not Library.ColorAnimationConnection then
        Library.ColorAnimationConnection = Library:Connection(RenderStepped, function()
            local Now = Clock()

            for Picker in Library.AnimatedColorPickers do
                Picker:StepAnimation(Now)
            end
        end, "Color Picker Animations")
    end
    --
    ColorPicker:Update() 
    --
    return ColorPicker
end
--
function Library:Keybind(Options)
    Options = Library:Validate({
        Default = Enum.KeyCode.Backspace,
        Mode = "Toggle",
        UseMode = true,
        HideFromList = false,
        Blacklisted = {Enum.KeyCode.Backspace},
        Parent = nil,
        Toggle = nil,
        MainUI = nil,
        Hiding = false,
        ToggleState = false,
        Flag = Library.NewFlag(),
        Count = 1,
        Callback = function() end,
    }, Options or {})
    --
    if Options.Toggle == nil then return end
    --
    local Keybind = {
        Hover = false,
        ActiveFrame = false,
        Keybind = "[-]",
        RegKeybind = nil,
        State = false,
        SelectingKeybind = false,
        Toggle = false,
        Connection = nil,
        Mode = Options.Mode,
        ConfigKeybind = nil,
        Current = {},
        CurrentMode = nil,
        ModeItems = {},
        Hiding = false,
    }
    --
    Library.Flags[Options.Flag] = Keybind
    Library.UI.TotalKeybindModes += 1
    --
    local KeybindIndex = Library.UI.TotalKeybindModes
    --
    local KeybindObject = Library:CreateObject("TextLabel", {
        FontFace = NewFont("rbxassetid://12187371840", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
        TextColor3 = NewRGB(117, 117, 117),
        BorderColor3 = NewRGB(0, 0, 0),
        Text = "[-]",
        Name = "KeybindOutline" .. KeybindIndex,
        AnchorPoint = NewVector2(1, 0),
        BorderSizePixel = 0,
        Size = NewUDim2(0, 16, 0, 7),
        BackgroundTransparency = 1,
        Position = NewUDim2(1, 0 - (Options.Count - 1) * 22, 0, 0),
        TextXAlignment = Enum.TextXAlignment.Right,
        ZIndex = 3,
        TextStrokeTransparency = 0,
        TextSize = 9,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = Options.Parent
    })
    --
    local KeybindChecker = Library:CreateObject("Frame", {
        Position = NewUDim2(0, 0, 0, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        Size = NewUDim2(1, 0, 0, 1),
        Visible = false,
        BorderSizePixel = 0,
        Parent = KeybindObject
    })
    --
    local Button_4 = Library:CreateObject("TextButton", {
        FontFace = Library.UI.NewFont,
        TextColor3 = NewRGB(0, 0, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "Button_4",
        BackgroundTransparency = 1,
        Size = NewUDim2(1, 0, 1, 0),
        BorderSizePixel = 0,
        TextTransparency = 1,
        TextSize = Library.UI.FontSize,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = KeybindObject
    })
    --
    local UserInputTypeBinds = {"MouseButton1", "MouseButton2", "MouseButton3"}
    --
    do -- Functions
        function Keybind:SetVisible(Bool)
            if SetThreadIdentity then
                pcall(SetThreadIdentity, 8)
            end
            local OldValues = Library.Objects[KeybindObject]
            --
            Keybind.Hiding = not Bool
            --
            if Bool then
                Library.Objects[KeybindObject] = {KeybindObject, OldValues[2], true}
            end
            --
            Library:Fade(Bool, Library:GetObjectsTable(KeybindObject), KeybindObject, 0.075)
            Library:TweenObject(KeybindObject, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = Bool and NewUDim2(1, 0, 0, 8) or NewUDim2(1, 0, 0, -10)}, function()
                if not Bool then
                    Library.Objects[KeybindObject] = {KeybindObject, OldValues[2], false}
                end
            end)
        end
        --
        function Keybind:Set(Key)
            if typeof(Key) == "boolean" then return end
            --
            if typeof(Key) == "table" then
                if Key.Key then
                    Keybind:Set(Key.Key)
                end
                --
                Keybind:ApplyMode(Key.Mode)
                --
                return
            end
            --
            if typeof(Key) == "EnumItem" then
                Keybind.RegKeybind = Key
            elseif typeof(Key) == "string" then
                if Find(UserInputTypeBinds, Key) then
                    Keybind.RegKeybind = Enum.UserInputType[Key]
                    Key = Enum.UserInputType[Key]
                else
                    Keybind.RegKeybind = Enum.KeyCode[Key]
                    Key = Enum.KeyCode[Key]
                end
            end
            --
            if typeof(Key) == "string" then
                if Key:find("KEY") then
                    Key = Enum.KeyCode[Key:gsub("KEY_", "")]
                elseif Key:find("Input") then
                    Key = Enum.UserInputType[Key:gsub("Input_", "")]
                end
            end
            --
            local ValidKey = false
            local KeyString = ""
            --
            if Find(Options.Blacklisted, Key) then
                Key = nil
            end
            --
            if Key then
                if Library.UI.Keys[Key] then
                    ValidKey = true
                    KeyString = Library.UI.Keys[Key]
                elseif Key.EnumType == Enum.KeyCode and Key ~= Enum.KeyCode.Unknown then
                    ValidKey = true
                    KeyString = UserInputService:GetStringForKeyCode(Key)
                    --
                    if KeyString == "" then
                        KeyString = Key.Name
                    end
                elseif Key.EnumType == Enum.UserInputType then
                    ValidKey = true
                    KeyString = Key.Name
                end
            end
            --
            if ValidKey then
                Keybind.Keybind = KeyString
                KeybindObject.Text = "[" .. KeyString:upper() .. "]"
                --
                Options.Callback(Key)
                Library.Flags[Options.Flag] = Keybind
            else
                Keybind.RegKeybind = nil
                Keybind.Keybind = "[-]"
                KeybindObject.Text = Keybind.Keybind
            end
            --
            Library:TweenObject(KeybindObject, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = NewRGB(117, 117, 117)})
            KeybindObject.Size = NewUDim2(0, KeybindObject.TextBounds.X + 2, 0, 7)
            if not Options.HideFromList and Options.UseMode and Options.Toggle and Library.UpdateKeybindFrame then
                Library:UpdateKeybindFrame(Keybind.Mode, Options.Toggle:GetName(), Keybind.Keybind, Options.Toggle:GetSection(), Keybind.State)
            end
        end
        --
        function Keybind:Matches(Input)
            if not Keybind.RegKeybind then return false end
            if Keybind.Keybind == "[-]" then return false end
            --
            if Keybind.RegKeybind.EnumType == Enum.KeyCode then
                return Input.KeyCode == Keybind.RegKeybind
            end
            --
            return Input.UserInputType == Keybind.RegKeybind
        end
        --
        function Keybind:UpdateList()
            if Options.HideFromList or not Options.UseMode or not Options.Toggle then return end
            --
            if Keybind.State and Options.Toggle.State then
                if Library.AddKeybindFrame then Library:AddKeybindFrame(Keybind.Mode, Options.Toggle:GetName(), Keybind.Keybind, Options.Toggle:GetSection(), Keybind.State) end
            elseif Library.RemoveKeybindFrame then
                Library:RemoveKeybindFrame(Options.Toggle:GetName())
            end
        end
        --
        function Keybind:Toggle(Bool)
            if Keybind.Hiding then return end
            if not Options.UseMode then return end
            if not Options.Toggle.State then return end
            --
            if Bool == nil then
                Keybind.State = not Keybind.State
            else
                Keybind.State = Bool
            end
            --
            Keybind:UpdateList()
            --
            Options.Callback(Keybind.State)
        end
        --
        Keybind:Set(Options.Default)
        --
        Delay(1, function()
            KeybindObject.Size = NewUDim2(0, KeybindObject.TextBounds.X + 2, 0, 7)
        end)
        --
        function Keybind:Get()
            local KeyString = nil
            --
            if typeof(Keybind.RegKeybind) == "EnumItem" then
                KeyString = Keybind.RegKeybind.EnumType == Enum.KeyCode and tostring(Keybind.RegKeybind):match("^Enum%.KeyCode%.(.+)$") or tostring(Keybind.RegKeybind):match("^Enum%.UserInputType%.(.+)$")
            end
            --
            return {Key = KeyString, Mode = Keybind.Mode}
        end
        --
        function Keybind:Active()
            if Keybind.Mode == "Always on" then
                return true
            end
            --
            return Keybind.Keybind == "[-]" and true or Keybind.State
        end
        --
        function Keybind:SetMode(Mode)
            Keybind.Mode = Mode
            --
            if not Options.UseMode then return end
            --
            if Mode == "Always on" then
                Keybind.State = true
            elseif Mode == "On hotkey" then
                Keybind.State = false
            end
            --
            Keybind:UpdateList()
            --
            Options.Callback(Keybind.State)
        end
        --
        function Keybind:ApplyMode(Mode)
            if Mode ~= "Always on" and Mode ~= "On hotkey" and Mode ~= "Toggle" then return end
            --
            local Item = Keybind.ModeItems[Mode]
            --
            if Item then
                Item:Activate()
                --
                return
            end
            --
            Keybind.Mode = Mode
            --
            Keybind:SetMode(Mode)
        end
        --
        if Options.Mode == "Always on" then
            Keybind:SetMode(Options.Mode)
        end
        --
        if Options.Toggle.GetFlag and Library.OnChanged then
            Library:OnChanged(Options.Toggle:GetFlag(), function()
                Keybind:UpdateList()
            end)
        end
        --
        function Keybind:AddFrame()
            Library.UI.CurrentSelectedKeybindMode = {Keybind = Keybind, KeybindObject = KeybindObject, Parent = Options.Parent}
            --
            local KeybindModePickerOutline = Library:CreateObject("Frame", {
                Name = "KeybindModePickerOutline" .. KeybindIndex,
                Position = NewUDim2(0, 0, 0, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                Size = NewUDim2(0, 100, 0, 55),
                BorderSizePixel = 0,
                ZIndex = 25,
                AnchorPoint = NewVector2(1, 0),
                BackgroundColor3 = NewRGB(12, 12, 12),
                Parent = Library.UI.ScreenGUI
            })
            --
            local KeybindModePickerMain = Library:CreateObject("Frame", {
                Name = "KeybindModePickerMain",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                Size = NewUDim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                ZIndex = 25,
                BackgroundColor3 = NewRGB(35, 35, 35),
                Parent = KeybindModePickerOutline
            })
            --
            KeybindModePickerOutline.BackgroundTransparency = 1
            KeybindModePickerMain.BackgroundTransparency = 1
            --
            local UIListLayout_9 = Library:CreateObject("UIListLayout", {
                SortOrder = Enum.SortOrder.LayoutOrder,
                Parent = KeybindModePickerMain
            })
            --
            function Keybind:UpdateSize()
                KeybindModePickerOutline.Position = NewUDim2(0, KeybindObject.AbsolutePosition.X , 0, KeybindObject.AbsolutePosition.Y + KeybindObject.AbsoluteSize.Y + KeybindModePickerOutline.AbsoluteSize.Y - 2)
            end
            --
            Keybind:UpdateSize()
            --
            Library:Connection(Options.MainUI:GetPropertyChangedSignal("AbsolutePosition"), Keybind.UpdateSize)
            --
            local StartingY = KeybindObject.AbsolutePosition.Y
            local MainUIStartingY = Options.MainUI.AbsolutePosition.Y
            local StartingCanvasPosition = Options.Parent.Parent.CanvasPosition
            --
            Library:Connection(KeybindObject:GetPropertyChangedSignal("AbsolutePosition"), function()
                local CurrentY = KeybindObject.AbsolutePosition.Y
                local MainUICurrentY = Options.MainUI.AbsolutePosition.Y
                local CurrentCanvasPosition = Options.Parent.Parent.CanvasPosition
                --
                if MainUICurrentY ~= MainUIStartingY then
                    MainUIStartingY = MainUICurrentY
                    StartingY = CurrentY
                    --
                    return
                end
                --
                if CurrentCanvasPosition ~= StartingCanvasPosition then
                    StartingCanvasPosition = CurrentCanvasPosition
                    StartingY = CurrentY
                    --
                    return
                end
                --
                if Library.UI.Resizing then
                    return
                end
                --
                if CurrentY ~= StartingY then
                    Keybind:RemoveFrame(true)
                end
                --
                StartingY = CurrentY
            end)
            --
            Library:Connection(Options.MainUI:GetPropertyChangedSignal("AbsoluteSize"), function()
                if Keybind.ActiveFrame then
                    KeybindModePickerOutline.Visible = Library:ScrollingCheck(Options.Parent.Parent, KeybindChecker)
                end
                --
                Keybind:UpdateSize()
            end)
            --
            Library:Connection(KeybindObject:GetPropertyChangedSignal("AbsoluteSize"), function()
                Keybind:UpdateSize()
            end)
            --
            if Options.Parent.Parent:IsA("ScrollingFrame") then
                Library:Connection(Options.Parent.Parent:GetPropertyChangedSignal("CanvasPosition"), function()
                    Keybind:UpdateSize()
                    --
                    if Keybind.ActiveFrame then
                        KeybindModePickerOutline.Visible = Library:ScrollingCheck(Options.Parent.Parent, KeybindChecker)
                    end
                end)
            end
            --
            Keybind.ModeItems = {}
            --
            for Index, Value in {"Always on", "On hotkey", "Toggle"} do
                local ModeItem = {
                    Active = false,
                    Hovering = false,
                }
                --
                Keybind.ModeItems[Value] = ModeItem
                --
                local Inactive = Library:CreateObject("TextLabel", {
                    FontFace = Library.UI.NewFont,
                    TextColor3 = NewRGB(208, 208, 208),
                    BorderColor3 = NewRGB(0, 0, 0),
                    Name = Value,
                    Text = Value,
                    RichText = true,
                    TextXAlignment = Enum.TextXAlignment.Left,
                    Size = NewUDim2(1, 0, 0, 17),
                    BorderSizePixel = 0,
                    TextSize = Library.UI.FontSize,
                    ZIndex = 25,
                    BackgroundColor3 = NewRGB(35, 35, 35),
                    Parent = KeybindModePickerMain
                })
                --
                local Button_4 = Library:CreateObject("TextButton", {
                    FontFace = Library.UI.NewFont,
                    TextColor3 = NewRGB(0, 0, 0),
                    BorderColor3 = NewRGB(0, 0, 0),
                    Name = "Button_4",
                    BackgroundTransparency = 1,
                    Size = NewUDim2(1, 0, 1, 0),
                    BorderSizePixel = 0,
                    TextTransparency = 1,
                    TextSize = Library.UI.FontSize,
                    ZIndex = 25,
                    BackgroundColor3 = NewRGB(255, 255, 255),
                    Parent = Inactive
                })
                --
                local UIPadding_48 = Library:CreateObject("UIPadding", {
                    PaddingLeft = NewUDim(0, 8),
                    Parent = Inactive
                })
                --
                Inactive.TextTransparency = 1
                --
                do -- Functions
                    function ModeItem:Activate()
                        if not ModeItem.Active then
                            if Keybind.CurrentMode ~= nil then
                                Keybind.CurrentMode:Deactivate()
                            end
                            --
                            ModeItem.Active = true
                            --
                            Keybind.Mode = Value
                            Keybind.CurrentMode = ModeItem
                            --
                            Inactive.Text = "<b>" .. Value .. "</b>"
                            Library:TweenObject(Inactive, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = Library.Theme.Default.Accent})
                            --
                            Keybind:SetMode(Value)
                        end
                    end
                    --
                    function ModeItem:Deactivate()
                        if ModeItem.Active then
                            ModeItem.Active = false
                            ModeItem.Hovering = false
                            Inactive.Text = Value
                            Library:TweenObject(Inactive, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = NewRGB(205, 205, 205)})
                        end
                    end
                end
                --
                do -- Connections
                    Library:Connection(Button_4.MouseButton1Click, function()
                        ModeItem:Activate()
                    end)
                    --
                    Library:Connection(Inactive.MouseEnter, function()
                        Inactive.BackgroundColor3 = NewRGB(25, 25, 25)
                        --
                        if ModeItem.Active then return end
                        --
                        Inactive.Text = "<b>" .. Value .. "</b>"
                    end)
                    --
                    Library:Connection(Inactive.MouseLeave, function()
                        Inactive.BackgroundColor3 = NewRGB(35, 35, 35)
                        --
                        if ModeItem.Active then return end
                        --
                        Inactive.Text = Value
                        Library:TweenObject(Inactive, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = NewRGB(205, 205, 205)})
                    end)
                end
                --
                if Value == Keybind.Mode then
                    ModeItem:Activate()
                end
            end
            --
            Library:Fade(true, Library:GetObjectsTable(KeybindModePickerOutline, true), KeybindModePickerOutline, 0.1)
        end
        --
        function Keybind:RemoveFrame(Fast)
            local Fast = Fast or false
            --
            Keybind.ModeItems = {}
            Keybind.CurrentMode = nil
            --
            for Index, Value in Library.UI.ScreenGUI:GetChildren() do
                if Value:IsA("Frame") and Value.Name == "KeybindModePickerOutline" .. KeybindIndex then
                    if Fast then
                        Value:Destroy()
                    else
                        Library:Fade(false, Library:GetObjectsTable(Value, true), Value, 0.1)
                        --
                        Delay(Library.UI.TweenSpeed, function()
                            Value:Destroy()
                        end)
                    end
                end
            end
        end
        --
        function Keybind:FindFrame()
            for Index, Value in Library.UI.ScreenGUI:GetChildren() do
                if Value:IsA("Frame") and Value.Name == "KeybindModePickerOutline" .. KeybindIndex then
                    return true
                end
            end
            --
            return false
        end
        --
        function Keybind:ToggleFrame()
            Library:TweenObject(KeybindObject, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = NewRGB(176, 176, 176)})
            --
            if Library.UI.CurrentSelectedKeybindMode and Library.UI.CurrentSelectedKeybindMode.KeybindObject.Name ~= KeybindObject.Name then
                Library.UI.CurrentSelectedKeybindMode.Keybind:RemoveFrame()
                --
                Library:TweenObject(Library.UI.CurrentSelectedKeybindMode.KeybindObject, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = NewRGB(117, 117, 117)})
            end
            --
            if not Keybind:FindFrame() then
                Keybind.ActiveFrame = true
                Keybind:AddFrame()
            else
                Keybind.ActiveFrame = false
                Keybind:RemoveFrame()
            end
        end
    end
    --
    do -- Connections
        Library:Connection(KeybindObject.MouseEnter, function()
            if Keybind.SelectingKeybind then return end
            --
            Library:TweenObject(KeybindObject, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = NewRGB(176, 176, 176)})
        end)
        --
        Library:Connection(KeybindObject.MouseLeave, function()
            if Keybind.SelectingKeybind then return end
            --
            Library:TweenObject(KeybindObject, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = NewRGB(117, 117, 117)})
        end)
        --
        Library:Connection(Button_4.MouseButton2Click, function()
            if not Options.UseMode then return end
            if Keybind.Hiding then return end
            --
            Keybind:ToggleFrame()
        end)
        --
        Library:Connection(Button_4.MouseButton1Click, function()
            if Keybind.Hiding then return end
            --
            if Keybind.Connection then
                Keybind.Connection:Disconnect()
            end
            --
            Keybind.SelectingKeybind = true
            --
            Library:TweenObject(KeybindObject, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = NewRGB(255, 0, 0)})
            --
            Keybind.Connection = Library:Connection(UserInputService.InputBegan, function(Input)
                Keybind:Set(Input.UserInputType == Enum.UserInputType.Keyboard and Input.KeyCode or Input.UserInputType)
                --
                if Keybind.Connection then
                    Keybind.Connection:Disconnect()
                    --
                    Delay(0.1, function()
                        Keybind.Connection = nil
                        Keybind.SelectingKeybind = false
                    end)
                end
            end)
        end)
        --
        Library:Connection(UserInputService.InputBegan, function(Input, Proccessed)
            if Keybind.SelectingKeybind then return end
            if Library:Typing() then return end
            if Proccessed and Input.UserInputType ~= Enum.UserInputType.Keyboard then return end
            --
            if Keybind:Matches(Input) then
                if Keybind.Mode == "Always on" then
                    Keybind:Toggle(true)
                else
                    Keybind:Toggle()
                end
            end
        end)
        --
        Library:Connection(UserInputService.InputEnded, function(Input, Proccessed)
            if Keybind.Mode ~= "On hotkey" then return end
            if Library:Typing() then return end
            --
            if Keybind:Matches(Input) then
                Keybind:Toggle(false)
            end
        end)
    end
    --
    if Options.Hiding then
        Keybind:SetVisible(false)
    end
    --
    return Keybind
end
--
function Library:MultiBox(Options)
    Options = Library:Validate({
        Default = "None",
        Name = "Preview MultiBox",
        Content = {},
        Parent = nil,
        MainUI = nil,
        Hiding = false,
        TabUI = nil,
        Risky = false,
        Flag = Library.NewFlag(),
        Callback = function() end
    }, Options or {})
    --
    local MultiBox = {
        Open = false,
        Hover = false,
        Items = Options.Content,
        Scrollable = false,
        Value = {},
        SelectedOrder = {},
        AllItems = {},
    }
    --
    Library.Flags[Options.Flag] = MultiBox
    Options.Callback(Options.Default)
    --
    local PreviewMultiBox_5 = Library:CreateObject("Frame", {
        Name = "PreviewMultiBox_5",
        BackgroundTransparency = 1,
        Size = Options.Name == "" and NewUDim2(1, 0, 0, 20) or NewUDim2(1, 0, 0, 31),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = Options.Parent
    })
    --
    local MultiBoxOutline_5 = Library:CreateObject("Frame", {
        BorderColor3 = NewRGB(0, 0, 0),
        AnchorPoint = NewVector2(0, 1),
        Name = "MultiBoxOutline_5",
        Position = NewUDim2(0, -1, 1, 0),
        Size = NewUDim2(1, -19, 0, 20),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(12, 12, 12),
        Parent = PreviewMultiBox_5
    })
    --
    local MultiBoxChecker = Library:CreateObject("Frame", {
        Name = "MultiBoxChecker",
        Position = NewUDim2(0, 0, 1, 0),
        Visible = false,
        BorderColor3 = NewRGB(0, 0, 0),
        Size = NewUDim2(1, 0, 0, 1),
        BorderSizePixel = 0,
        Parent = MultiBoxOutline_5
    })
    --
    local MultiBoxBack_5 = Library:CreateObject("Frame", {
        Size = NewUDim2(1, -2, 1, -2),
        Name = "MultiBoxBack_5",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(220, 220, 220),
        Parent = MultiBoxOutline_5
    })
    --
    local MultiBoxArrow = Library:CreateObject("ImageLabel", {
        ImageColor3 = NewRGB(151, 151, 151),
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "MultiBoxArrow",
        Image = "rbxassetid://15556784588",
        BackgroundTransparency = 1,
        Position = NewUDim2(1, -11, 0, 6),
        Size = NewUDim2(0, 5, 0, 4),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = MultiBoxBack_5
    })
    --
    local UIGradient_34 = Library:CreateObject("UIGradient", {
        Rotation = -90,
        Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, NewRGB(39, 39, 39)),
            ColorSequenceKeypoint.new(1, NewRGB(35, 35, 35))
        },
        Parent = MultiBoxBack_5
    })
    --
    local MultiBoxValue_5 = Library:CreateObject("TextLabel", {
        FontFace = Library.UI.NewFont,
        TextColor3 = NewRGB(152, 152, 152),
        BorderColor3 = NewRGB(0, 0, 0),
        Text = "None",
        Name = "MultiBoxValue_5",
        BorderSizePixel = 0,
        BackgroundTransparency = 1,
        TextXAlignment = Enum.TextXAlignment.Left,
        Size = NewUDim2(1, 0, 1, 0),
        ZIndex = 3,
        TextSize = Library.UI.FontSize,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = MultiBoxBack_5
    })
    --
    local UIPadding_87 = Library:CreateObject("UIPadding", {
        PaddingLeft = NewUDim(0, 5),
        Parent = MultiBoxValue_5
    })
    --
    local Button_44 = Library:CreateObject("TextButton", {
        FontFace = Library.UI.NewFont,
        TextColor3 = NewRGB(0, 0, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "Button_44",
        BackgroundTransparency = 1,
        Size = NewUDim2(1, 0, 1, 0),
        BorderSizePixel = 0,
        TextTransparency = 1,
        TextSize = 14,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = MultiBoxOutline_5
    })
    --
    local MultiBoxName_5 = Library:CreateObject("TextLabel", {
        FontFace = Library.UI.NewFont,
        TextColor3 = Library.Theme.Default.TextColor,
        BorderColor3 = NewRGB(0, 0, 0),
        Text = Options.Name,
        Name = "MultiBoxName_5",
        ZIndex = 3,
        Size = NewUDim2(1, -19, 1, 0),
        BackgroundTransparency = 1,
        Position = NewUDim2(0, 0, 0, -4),
        TextXAlignment = Enum.TextXAlignment.Left,
        BorderSizePixel = 0,
        TextYAlignment = Enum.TextYAlignment.Top,
        TextSize = Library.UI.FontSize,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = PreviewMultiBox_5
    })
    --
    local UIPadding_88 = Library:CreateObject("UIPadding", {
        PaddingLeft = NewUDim(0, 20),
        Parent = PreviewMultiBox_5
    })
    --
    local MultiBoxMainOutline = Library:CreateObject("Frame", {
        Name = "MultiBoxMainOutline",
        Position = NewUDim2(0, 0, 0, 0),
        Size = NewUDim2(0, 0, 0, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 10,
        BorderSizePixel = 0,
        Visible = false,
        BackgroundColor3 = NewRGB(12, 12, 12),
        Parent = Library.UI.ScreenGUI
    })
    --
    local MultiBoxMain = Library:CreateObject("Frame", {
        Name = "MultiBoxMain",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        Size = NewUDim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        ZIndex = 10,
        ClipsDescendants = true,
        BackgroundColor3 = NewRGB(35, 35, 35),
        Parent = MultiBoxMainOutline
    })
    --
    MultiBoxMainOutline.BackgroundTransparency = 1
    MultiBoxMain.BackgroundTransparency = 1
    --
    local UIListLayout_9 = Library:CreateObject("UIListLayout", {
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = MultiBoxMain
    })
    --
    do -- Functions
        function MultiBox:Set(Values)
            local Selected = typeof(Values) == "table" and Values or {}
            --
            for Index, Item in MultiBox.AllItems do
                Item:Deactivate()
            end
            --
            for Index, Name in Selected do
                local Item = MultiBox.AllItems[Name]
                --
                if Item then
                    Item:Activate()
                end
            end
            --
            MultiBox:UpdateValue()
        end
        --
        function MultiBox:Get()
            return MultiBox.Value
        end
        --
        function MultiBox:SetVisible(Bool)
            if SetThreadIdentity then
                pcall(SetThreadIdentity, 8)
            end
            local OldValues = Library.Objects[PreviewMultiBox_5]
            --
            MultiBox.Hiding = not Bool
            --
            if Bool then
                Library.Objects[PreviewMultiBox_5] = {PreviewMultiBox_5, OldValues[2], true}
            end
            --
            Library:Fade(Bool, Library:GetObjectsTable(PreviewMultiBox_5), PreviewMultiBox_5, 0.075)
            Library:TweenObject(PreviewMultiBox_5, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = Bool and (Options.Name == "" and NewUDim2(1, 0, 0, 20) or NewUDim2(1, 0, 0, 31)) or NewUDim2(1, 0, 0, -10)}, function()
                if not Bool then
                    Library.Objects[PreviewMultiBox_5] = {PreviewMultiBox_5, OldValues[2], false}
                end
            end)
        end
        --
        function MultiBox:AddValue(Value)
            local Item = {
                Active = false,
                Hovering = false,
            }
            --
            MultiBox.Items[Value] = Item
            MultiBox.AllItems[Value] = Item
            --
            local Inactive = Library:CreateObject("TextLabel", {
                FontFace = Library.UI.NewFont,
                TextColor3 = NewRGB(208, 208, 208),
                BorderColor3 = NewRGB(0, 0, 0),
                Name = Value,
                Text = Value,
                RichText = true,
                TextXAlignment = Enum.TextXAlignment.Left,
                Size = NewUDim2(1, 0, 0, 20),
                BorderSizePixel = 0,
                TextSize = Library.UI.FontSize,
                ZIndex = 10,
                BackgroundColor3 = NewRGB(35, 35, 35),
                Parent = MultiBoxMain
            })
            --
            local Button_4 = Library:CreateObject("TextButton", {
                FontFace = Library.UI.NewFont,
                TextColor3 = NewRGB(0, 0, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "Button_4",
                BackgroundTransparency = 1,
                Size = NewUDim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                TextTransparency = 1,
                TextSize = Library.UI.FontSize,
                ZIndex = 11,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = Inactive
            })
            --
            local UIPadding_48 = Library:CreateObject("UIPadding", {
                PaddingLeft = NewUDim(0, 8),
                Parent = Inactive
            })
            --
            Inactive.TextTransparency = 1
            --
            do -- Functions
                function Item:GetSelectedItems()
                    local SelectedItems = {}
                    --
                    for Index, Item in MultiBox.SelectedOrder do
                        if MultiBox.Items[Item] then
                            Insert(SelectedItems, Item)
                        end
                    end
                    --
                    return SelectedItems
                end
                --
                function MultiBox:UpdateValue()
                    MultiBox.Value = Item:GetSelectedItems()
                    --
                    MultiBoxValue_5.Text = Library:ClampString(Concat(MultiBox.Value, ", "), MultiBoxMain.AbsoluteSize.X - MultiBoxArrow.AbsoluteSize.X - 4)
                end
                --
                function Item:SelectItem(Item)
                    if not Find(MultiBox.SelectedOrder, Item) then
                        Insert(MultiBox.SelectedOrder, Item)
                    end
                    --
                    MultiBox:UpdateValue()
                end

                function Item:DeselectItem(Item)
                    for Index, Value in MultiBox.SelectedOrder do
                        if Value == Item then
                            Remove(MultiBox.SelectedOrder, Index)
                            --
                            break
                        end
                    end
                    --
                    MultiBox:UpdateValue()
                end
                --
                function Item:Activate()
                    if not Item.Active then
                        Item.Active = true
                        MultiBox.CurrentItem = Item
                        MultiBox.Items[Value] = true
                        Library.Flags[Options.Flag] = MultiBox
                        Item:SelectItem(Value)
                        Options.Callback(MultiBox.Value)
                        --
                        Inactive.Text = "<b>" .. Value .. "</b>"
                        Inactive.TextColor3 = Library.Theme.Default.Accent
                        Library:AddTheme(Inactive, {
                            TextColor3 = "Accent",
                        })
                    end
                end
                --
                function Item:Deactivate()
                    if Item.Active then
                        Item.Active = false
                        Item.Hovering = false
                        MultiBox.CurrentItem = nil
                        Library.Flags[Options.Flag] = MultiBox
                        MultiBox.Items[Value] = false
                        Item:DeselectItem(Value)
                        Options.Callback(MultiBox.Value)
                        --
                        Inactive.Text = Value
                        Inactive.TextColor3 = Library.Theme.Default.TextColor
                        Library:AddTheme(Inactive, {
                            TextColor3 = "TextColor",
                        })
                    end
                end
                --
                function Item:Toggle()
                    MultiBox.Items[Value] = not MultiBox.Items[Value]
                    --
                    if MultiBox.Items[Value] then
                        Item:Activate()
                    else
                        Item:Deactivate()
                    end
                end
            end
            --
            do -- Connections
                Library:Connection(Button_4.MouseButton1Click, function()
                    if MultiBox.Hiding then return end
                    --
                    Item:Toggle()
                end)
                --
                Library:Connection(Inactive.MouseEnter, function()
                    Inactive.BackgroundColor3 = NewRGB(25, 25, 25)
                    --
                    if Item.Active then return end
                    --
                    Inactive.Text = "<b>" .. Value .. "</b>"
                end)
                --
                Library:Connection(Inactive.MouseLeave, function()
                    Inactive.BackgroundColor3 = NewRGB(35, 35, 35)
                    --
                    if Item.Active then return end
                    --
                    Inactive.Text = Value
                    Library:TweenObject(Inactive, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = NewRGB(205, 205, 205)})
                end)
            end
            --
            if typeof(Options.Default) == "table" and Find(Options.Default, Value) then
                Item:Activate()
                Item:SelectItem(Value)
            else
                MultiBox.Items[Value] = false
            end
        end
        --
        function MultiBox:Toggle(Fast)
            local Fast = Fast or false
            local OldValues = Library.Objects[MultiBoxMainOutline]
            --
            if MultiBox.Open then
                if Fast then
                    Library:Fade(false, Library:GetObjectsTable(MultiBoxMainOutline, true), MultiBoxMainOutline, 0)
                    MultiBoxMainOutline.Size = NewUDim2(0, MultiBoxOutline_5.AbsoluteSize.X, 0, 0)
                    MultiBoxMainOutline.Visible = false
                    Library.Objects[MultiBoxMainOutline] = {MultiBoxMainOutline, OldValues[2], true}
                else
                    Library:Fade(false, Library:GetObjectsTable(MultiBoxMainOutline, true), MultiBoxMainOutline, 0.1)
                    Library:TweenObject(MultiBoxMainOutline, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = NewUDim2(0, MultiBoxOutline_5.AbsoluteSize.X, 0, 0)}, function()
                        MultiBoxMainOutline.Visible = false
                        Library.Objects[MultiBoxMainOutline] = {MultiBoxMainOutline, OldValues[2], true}
                    end)
                end
            else
                Library.Objects[MultiBoxMainOutline] = {MultiBoxMainOutline, OldValues[2], false}
                MultiBoxMainOutline.Visible = Library:ScrollingCheck(Options.Parent, MultiBoxChecker)
                --
                if Fast then
                    Library:Fade(true, Library:GetObjectsTable(MultiBoxMainOutline, true), MultiBoxMainOutline, 0)
                    MultiBoxMainOutline.Size = NewUDim2(0, MultiBoxOutline_5.AbsoluteSize.X, 0, (#Options.Content * 20) + 2)
                else
                    Library:Fade(true, Library:GetObjectsTable(MultiBoxMainOutline, true), MultiBoxMainOutline, 0.1)
                    Library:TweenObject(MultiBoxMainOutline, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = NewUDim2(0, MultiBoxOutline_5.AbsoluteSize.X, 0, (#Options.Content * 20) + 2)})
                end	
            end
            --
            MultiBox.Open = not MultiBox.Open
        end
        --
        function MultiBox:Update()
            MultiBoxMainOutline.Size = NewUDim2(0, MultiBoxOutline_5.AbsoluteSize.X, 0, MultiBoxMainOutline.AbsoluteSize.Y)
            MultiBoxMainOutline.Position = NewUDim2(0, MultiBoxOutline_5.AbsolutePosition.X, 0, ((MultiBoxOutline_5.AbsolutePosition.Y + MultiBoxOutline_5.AbsoluteSize.Y) + GuiService:GetGuiInset().Y + 2))
            --
            if MultiBox.Open then
                MultiBoxMainOutline.Visible = Library:ScrollingCheck(Options.Parent, MultiBoxChecker)
            else
                MultiBoxMainOutline.Visible = false
            end
        end
        --
        MultiBox:Update()
        --
        Library:Connection(MultiBoxOutline_5:GetPropertyChangedSignal("AbsolutePosition"), MultiBox.Update)
        Library:Connection(MultiBoxOutline_5:GetPropertyChangedSignal("AbsoluteSize"), MultiBox.Update)
        --
        local StartingX = PreviewMultiBox_5.AbsolutePosition.X
        local StartingY = PreviewMultiBox_5.AbsolutePosition.Y
        local MainUIStartingX = Options.MainUI.AbsolutePosition.X
        local MainUIStartingY = Options.MainUI.AbsolutePosition.Y
        local StartingCanvasPosition = Options.Parent.CanvasPosition
        --
        Library:Connection(PreviewMultiBox_5:GetPropertyChangedSignal("AbsolutePosition"), function()
            if not MultiBox.Open then return end
            --
            local CurrentX = PreviewMultiBox_5.AbsolutePosition.X
            local CurrentY = PreviewMultiBox_5.AbsolutePosition.Y
            local MainUICurrentX = Options.MainUI.AbsolutePosition.X
            local MainUICurrentY = Options.MainUI.AbsolutePosition.Y
            local CurrentCanvasPosition = Options.Parent.CanvasPosition
            --
            if MainUICurrentX ~= MainUIStartingX or MainUICurrentY ~= MainUIStartingY then
                MainUIStartingX = MainUICurrentX
                MainUIStartingY = MainUICurrentY
                StartingX = CurrentX
                StartingY = CurrentY
                --
                return
            end
            --
            if CurrentCanvasPosition ~= StartingCanvasPosition then
                StartingCanvasPosition = CurrentCanvasPosition
                StartingX = CurrentX
                StartingY = CurrentY
                --
                return
            end
            --
            if Library.UI.Resizing then
                return
            end
            --
            if CurrentX ~= StartingX or CurrentY ~= StartingY then
                MultiBox:Toggle(true)
            end
            --
            StartingX = CurrentX
            StartingY = CurrentY
        end)
        --
        if Options.Parent:IsA("ScrollingFrame") then
            Library:Connection(Options.Parent:GetPropertyChangedSignal("CanvasPosition"), function()
                MultiBox:Update()
            end)
        end
    end
    --
    do -- Connections
        Library:Connection(Button_44.MouseButton1Click, function()
            if MultiBox.Hiding then return end
            --
            MultiBox:Toggle()
        end)
        --
        Library:Connection(MultiBoxOutline_5.MouseEnter, function()
            if Library.UI.Faded then return end
            --
            if not MultiBox.Open then
                MultiBox.Hovering = true
                Library:TweenObject(MultiBoxBack_5, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundColor3 = NewRGB(255, 255, 255)})
            end	
        end)
        --
        Library:Connection(MultiBoxOutline_5.MouseLeave, function()
            if Library.UI.Faded then return end
            --
            if not MultiBox.Open then
                MultiBox.Hovering = false
                Library:TweenObject(MultiBoxBack_5, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundColor3 = NewRGB(220, 220, 220)})
            end	
        end)
    end
    --
    for Index, Value in Options.Content do
        if typeof(Value) == "boolean" or typeof(Value) == "table" then continue end
        --
        MultiBox:AddValue(Value)
    end
    --
    MultiBoxMainOutline.Visible = false
    MultiBoxMainOutline.Size = NewUDim2(0, MultiBoxOutline_5.AbsoluteSize.X, 0, 0)
    MultiBox.Open = false
    Library:Fade(false, Library:GetObjectsTable(MultiBoxMainOutline, true), MultiBoxMainOutline, 0)
    --
    if Options.Hiding or Options.Hidden then
        MultiBox:SetVisible(false)
    end
    --
    return MultiBox
end
--
function Library:Dropdown(Options)
    Options = Library:Validate({
        Default = "None",
        Name = "Preview Dropdown",
        Content = {},
        Parent = nil,
        MainUI = nil,
        Hiding = false,
        TabUI = nil,
        Risky = false,
        Flag = Library.NewFlag(),
        Callback = function() end
    }, Options or {})
    --
    local Dropdown = {
        Open = false,
        Active = false,
        Hovering = false,
        CurrentItem = nil,
        Scrollable = false,
        Hiding = false,
        Items = {},
        Order = {},
        Value = Options.Default,
    }
    --
    Library.Flags[Options.Flag] = Dropdown
    --
    local PreviewDropdown_5 = Library:CreateObject("Frame", {
        Name = "PreviewDropdown_5",
        BackgroundTransparency = 1,
        Size = Options.Name == "" and NewUDim2(1, 0, 0, 20) or NewUDim2(1, 0, 0, 31),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = Options.Parent
    })
    --
    local DropdownOutline_5 = Library:CreateObject("Frame", {
        BorderColor3 = NewRGB(0, 0, 0),
        AnchorPoint = NewVector2(0, 1),
        Name = "DropdownOutline_5",
        Position = NewUDim2(0, -1, 1, 0),
        Size = NewUDim2(1, -19, 0, 20),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(12, 12, 12),
        Parent = PreviewDropdown_5
    })
    --
    local DropdownChecker = Library:CreateObject("Frame", {
        Name = "DropdownChecker",
        Position = NewUDim2(0, 0, 1, 0),
        Visible = false,
        BorderColor3 = NewRGB(0, 0, 0),
        Size = NewUDim2(1, 0, 0, 1),
        BorderSizePixel = 0,
        Parent = DropdownOutline_5
    })
    --
    local DropdownBack_5 = Library:CreateObject("Frame", {
        Size = NewUDim2(1, -2, 1, -2),
        Name = "DropdownBack_5",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(220, 220, 220),
        Parent = DropdownOutline_5
    })
    --
    local DropdownArrow = Library:CreateObject("ImageLabel", {
        ImageColor3 = NewRGB(151, 151, 151),
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "DropdownArrow",
        Image = "rbxassetid://15556784588",
        BackgroundTransparency = 1,
        Position = NewUDim2(1, -11, 0, 6),
        Size = NewUDim2(0, 5, 0, 4),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = DropdownBack_5
    })
    --
    local UIGradient_34 = Library:CreateObject("UIGradient", {
        Rotation = -90,
        Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, NewRGB(39, 39, 39)),
            ColorSequenceKeypoint.new(1, NewRGB(35, 35, 35))
        },
        Parent = DropdownBack_5
    })
    --
    local DropdownValue_5 = Library:CreateObject("TextLabel", {
        FontFace = Library.UI.NewFont,
        TextColor3 = NewRGB(152, 152, 152),
        BorderColor3 = NewRGB(0, 0, 0),
        Text = Options.Default ~= "None" and Find(Options.Content, Options.Default) and Options.Default or "None",
        Name = "DropdownValue_5",
        BorderSizePixel = 0,
        BackgroundTransparency = 1,
        TextXAlignment = Enum.TextXAlignment.Left,
        Size = NewUDim2(1, 0, 1, 0),
        ZIndex = 3,
        TextSize = Library.UI.FontSize,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = DropdownBack_5
    })
    --
    local UIPadding_87 = Library:CreateObject("UIPadding", {
        PaddingLeft = NewUDim(0, 5),
        Parent = DropdownValue_5
    })
    --
    local Button_44 = Library:CreateObject("TextButton", {
        FontFace = Library.UI.NewFont,
        TextColor3 = NewRGB(0, 0, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "Button_44",
        BackgroundTransparency = 1,
        Size = NewUDim2(1, 0, 1, 0),
        BorderSizePixel = 0,
        TextTransparency = 1,
        TextSize = 14,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = DropdownOutline_5
    })
    --
    local DropdownName_5 = Library:CreateObject("TextLabel", {
        FontFace = Library.UI.NewFont,
        TextColor3 = Library.Theme.Default.TextColor,
        BorderColor3 = NewRGB(0, 0, 0),
        Text = Options.Name,
        Name = "DropdownName_5",
        ZIndex = 3,
        Position = NewUDim2(0, 0, 0, -4),
        Size = NewUDim2(1, -19, 1, 0),
        BackgroundTransparency = 1,
        TextXAlignment = Enum.TextXAlignment.Left,
        BorderSizePixel = 0,
        TextYAlignment = Enum.TextYAlignment.Top,
        TextSize = Library.UI.FontSize,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = PreviewDropdown_5
    })
    --
    local UIPadding_88 = Library:CreateObject("UIPadding", {
        PaddingLeft = NewUDim(0, 20),
        Parent = PreviewDropdown_5
    })
    --
    local DropdownMainOutline = Library:CreateObject("Frame", {
        Name = "DropdownMainOutline",
        Position = NewUDim2(0, 0, 0, 0),
        Size = NewUDim2(0, 0, 0, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 10,
        BorderSizePixel = 0,
        Visible = false,
        BackgroundColor3 = NewRGB(12, 12, 12),
        Parent = Library.UI.ScreenGUI
    })
    --
    local DropdownMain = Library:CreateObject("Frame", {
        Name = "DropdownMain",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        Size = NewUDim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        ZIndex = 10,
        ClipsDescendants = true,
        BackgroundColor3 = NewRGB(35, 35, 35),
        Parent = DropdownMainOutline
    })
    --
    DropdownMainOutline.BackgroundTransparency = 1
    DropdownMain.BackgroundTransparency = 1
    --
    local UIListLayout_9 = Library:CreateObject("UIListLayout", {
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = DropdownMain
    })
    --
    do -- Functions
        function Dropdown:Set(State)
            if not Dropdown.Items[State] then
                Dropdown.Pending = State
                --
                return
            end
            --
            Dropdown.Pending = nil
            --
            for Index, Value in Dropdown.Items do
                if Index == State then
                    Value:Activate()
                else
                    Value:Deactivate()
                end
            end
        end
        --
        function Dropdown:Get()
            return Dropdown.Value
        end
        --
        function Dropdown:SetVisible(Bool)
            if SetThreadIdentity then
                pcall(SetThreadIdentity, 8)
            end
            local OldValues = Library.Objects[PreviewDropdown_5]
            --
            Dropdown.Hiding = not Bool
            --
            if Bool then
                Library.Objects[PreviewDropdown_5] = {PreviewDropdown_5, OldValues[2], true}
            end
            --
            Library:Fade(Bool, Library:GetObjectsTable(PreviewDropdown_5), PreviewDropdown_5, 0.075)
            Library:TweenObject(PreviewDropdown_5, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = Bool and (Options.Name == "" and NewUDim2(1, 0, 0, 20) or NewUDim2(1, 0, 0, 31)) or NewUDim2(1, 0, 0, -10)}, function()
                if not Bool then
                    Library.Objects[PreviewDropdown_5] = {PreviewDropdown_5, OldValues[2], false}
                end
            end)
        end
        --
        function Dropdown:AddValue(Value)
            local Item = {
                Active = false,
                Hovering = false,
            }
            --
            Dropdown.Items[Value] = Item
            Dropdown.Order[#Dropdown.Order + 1] = Value
            --
            local Inactive = Library:CreateObject("TextLabel", {
                FontFace = Library.UI.NewFont,
                TextColor3 = NewRGB(208, 208, 208),
                BorderColor3 = NewRGB(0, 0, 0),
                Name = Value,
                Text = Value,
                RichText = true,
                TextXAlignment = Enum.TextXAlignment.Left,
                Size = NewUDim2(1, 0, 0, 20),
                BorderSizePixel = 0,
                TextSize = Library.UI.FontSize,
                ZIndex = 10,
                BackgroundColor3 = NewRGB(35, 35, 35),
                Parent = DropdownMain
            })
            --
            local Button_4 = Library:CreateObject("TextButton", {
                FontFace = Library.UI.NewFont,
                TextColor3 = NewRGB(0, 0, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "Button_4",
                BackgroundTransparency = 1,
                Size = NewUDim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                TextTransparency = 1,
                TextSize = Library.UI.FontSize,
                ZIndex = 10,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = Inactive
            })
            --
            local UIPadding_48 = Library:CreateObject("UIPadding", {
                PaddingLeft = NewUDim(0, 8),
                Parent = Inactive
            })
            --
            Inactive.TextTransparency = 1
            Item.Object = Inactive
            Item.Parts = {Inactive, Button_4, UIPadding_48}
            Item.TextColor = nil
            do
                function Item:Activate()
                    if not Item.Active then
                        if Dropdown.CurrentItem ~= nil then
                            Dropdown.CurrentItem:Deactivate()
                        end
                        Item.Active = true
                        Dropdown.CurrentItem = Item
                        Dropdown.Value = Value
                        Library.Flags[Options.Flag] = Dropdown
                        DropdownValue_5.Text = Value
                        Inactive.Text = "<b>" .. Value .. "</b>"
                        Inactive.TextColor3 = Library.Theme.Default.Accent
                        Library:AddTheme(Inactive, {
                            TextColor3 = "Accent",
                        })
                        Options.Callback(Value)
                    end
                end
                function Item:Deactivate()
                    if Item.Active then
                        Item.Active = false
                        Item.Hovering = false
                        Inactive.Text = Value
                        Inactive.BackgroundColor3 = NewRGB(35, 35, 35)
                        local FallbackColor = Item.TextColor or NewRGB(205, 205, 205)
                        Library:TweenObject(Inactive, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = FallbackColor})
                        if not Item.TextColor then
                            Library:AddTheme(Inactive, {
                                TextColor3 = "TextColor",
                            })
                        else
                            Library.Theme.Objects[Inactive] = nil
                        end
                    end
                end
            end
            do
                Library:Connection(Button_4.MouseButton1Click, function()
                    if Dropdown.Hiding then return end
                    Item:Activate()
                    Dropdown:Toggle()
                end)
                Library:Connection(Inactive.MouseEnter, function()
                    Inactive.BackgroundColor3 = NewRGB(25, 25, 25)
                    if Item.Active then return end
                    Inactive.Text = "<b>" .. Value .. "</b>"
                end)
                Library:Connection(Inactive.MouseLeave, function()
                    Inactive.BackgroundColor3 = NewRGB(35, 35, 35)
                    if Item.Active then return end
                    Inactive.Text = Value
                    local FallbackColor = Item.TextColor or NewRGB(205, 205, 205)
                    Library:TweenObject(Inactive, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = FallbackColor})
                end)
            end
            --
            if Value == Options.Default then
                Item:Activate()
            end
        end
        --
        function Dropdown:Refresh(Content, Default)
            if Dropdown.Open then
                Dropdown:Toggle(true)
            end
            --
            local Keep = not Default and (Dropdown.Value or Dropdown.Pending)
            local Source = {}
            --
            for Index, Value in Content do
                Source[Index] = Value
            end
            --
            for Index, Value in Dropdown.Order do
                local Item = Dropdown.Items[Value]
                --
                if Item then
                    for Index2, Part in Item.Parts do
                        Library.Objects[Part] = nil
                        Library.Theme.Objects[Part] = nil
                    end
                    --
                    Item.Object:Destroy()
                end
            end
            --
            Clear(Dropdown.Items)
            Clear(Dropdown.Order)
            Clear(Options.Content)
            --
            Dropdown.CurrentItem = nil
            Dropdown.Value = nil
            --
            Options.Default = Default or Source[1] or "None"
            --
            for Index, Value in Source do
                Options.Content[Index] = Value
                Dropdown:AddValue(Value)
            end
            --
            if Keep and Dropdown.Items[Keep] then
                Dropdown.Pending = nil
                --
                Dropdown.Items[Keep]:Activate()
            end
            --
            if not Dropdown.CurrentItem then
                Dropdown.Value = Options.Default
                DropdownValue_5.Text = Options.Default
                Library.Flags[Options.Flag] = Dropdown
            end
        end
        --
        function Dropdown:Toggle(Fast)
            local Fast = Fast or false
            local OldValues = Library.Objects[DropdownMainOutline]
            --
            if Dropdown.Open then
                if Fast then
                    Library:Fade(false, Library:GetObjectsTable(DropdownMainOutline, true), DropdownMainOutline, 0)
                    DropdownMainOutline.Size = NewUDim2(0, DropdownOutline_5.AbsoluteSize.X, 0, 0)
                    DropdownMainOutline.Visible = false
                    Library.Objects[DropdownMainOutline] = {DropdownMainOutline, OldValues[2], true}
                else
                    Library:Fade(false, Library:GetObjectsTable(DropdownMainOutline, true), DropdownMainOutline, 0.1)
                    Library:TweenObject(DropdownMainOutline, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = NewUDim2(0, DropdownOutline_5.AbsoluteSize.X, 0, 0)}, function()
                        DropdownMainOutline.Visible = false
                        Library.Objects[DropdownMainOutline] = {DropdownMainOutline, OldValues[2], true}
                    end)
                end
            else
                Library.Objects[DropdownMainOutline] = {DropdownMainOutline, OldValues[2], false}
                DropdownMainOutline.Visible = Library:ScrollingCheck(Options.Parent, DropdownChecker)
                --
                if Fast then
                    Library:Fade(true, Library:GetObjectsTable(DropdownMainOutline, true), DropdownMainOutline, 0)
                    DropdownMainOutline.Size = NewUDim2(0, DropdownOutline_5.AbsoluteSize.X, 0, (#Options.Content * 20) + 2)
                else
                    Library:Fade(true, Library:GetObjectsTable(DropdownMainOutline, true), DropdownMainOutline, 0.1)
                    Library:TweenObject(DropdownMainOutline, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = NewUDim2(0, DropdownOutline_5.AbsoluteSize.X, 0, (#Options.Content * 20) + 2)})
                end	
            end
            --
            Dropdown.Open = not Dropdown.Open
        end
        --
        function Dropdown:Update()
            DropdownMainOutline.Size = NewUDim2(0, DropdownOutline_5.AbsoluteSize.X, 0, DropdownMainOutline.AbsoluteSize.Y)
            DropdownMainOutline.Position = NewUDim2(0, DropdownOutline_5.AbsolutePosition.X, 0, ((DropdownOutline_5.AbsolutePosition.Y + DropdownOutline_5.AbsoluteSize.Y) + GuiService:GetGuiInset().Y + 2))
            --
            if Dropdown.Open then
                DropdownMainOutline.Visible = Library:ScrollingCheck(Options.Parent, DropdownChecker)
            else
                DropdownMainOutline.Visible = false
            end
        end
        --
        Dropdown:Update()
        --
        Library:Connection(DropdownOutline_5:GetPropertyChangedSignal("AbsolutePosition"), Dropdown.Update)
        Library:Connection(DropdownOutline_5:GetPropertyChangedSignal("AbsoluteSize"), Dropdown.Update)
        --
        local StartingX = PreviewDropdown_5.AbsolutePosition.X
        local StartingY = PreviewDropdown_5.AbsolutePosition.Y
        local MainUIStartingX = Options.MainUI.AbsolutePosition.X
        local MainUIStartingY = Options.MainUI.AbsolutePosition.Y
        local StartingCanvasPosition = Options.Parent.CanvasPosition
        --
        Library:Connection(PreviewDropdown_5:GetPropertyChangedSignal("AbsolutePosition"), function()
            if not Dropdown.Open then return end
            --
            local CurrentX = PreviewDropdown_5.AbsolutePosition.X
            local CurrentY = PreviewDropdown_5.AbsolutePosition.Y
            local MainUICurrentX = Options.MainUI.AbsolutePosition.X
            local MainUICurrentY = Options.MainUI.AbsolutePosition.Y
            local CurrentCanvasPosition = Options.Parent.CanvasPosition
            --
            if MainUICurrentX ~= MainUIStartingX or MainUICurrentY ~= MainUIStartingY then
                MainUIStartingX = MainUICurrentX
                MainUIStartingY = MainUICurrentY
                StartingX = CurrentX
                StartingY = CurrentY
                --
                return
            end
            --
            if CurrentCanvasPosition ~= StartingCanvasPosition then
                StartingCanvasPosition = CurrentCanvasPosition
                StartingX = CurrentX
                StartingY = CurrentY
                --
                return
            end
            --
            if Library.UI.Resizing then
                return
            end
            --
            if CurrentX ~= StartingX or CurrentY ~= StartingY then
                Dropdown:Toggle(true)
            end
            --
            StartingX = CurrentX
            StartingY = CurrentY
        end)
        --
        if Options.Parent:IsA("ScrollingFrame") then
            Library:Connection(Options.Parent:GetPropertyChangedSignal("CanvasPosition"), function()
                Dropdown:Update()
            end)
        end
    end
    --
    do -- Connections
        Library:Connection(Button_44.MouseButton1Click, function()
            if Dropdown.Hiding then return end
            --
            Dropdown:Toggle()
        end)
        --
        Library:Connection(DropdownOutline_5.MouseEnter, function()
            if Library.UI.Faded then return end
            --
            if not Dropdown.Open then
                Dropdown.Hovering = true
                Library:TweenObject(DropdownBack_5, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundColor3 = NewRGB(255, 255, 255)})
            end	
        end)
        --
        Library:Connection(DropdownOutline_5.MouseLeave, function()
            if Library.UI.Faded then return end
            --
            if not Dropdown.Open then
                Dropdown.Hovering = false
                Library:TweenObject(DropdownBack_5, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundColor3 = NewRGB(220, 220, 220)})
            end	
        end)
    end
    --
    for Index, Value in Options.Content do
        Dropdown:AddValue(Value)
    end
    --
    DropdownMainOutline.Visible = false
    DropdownMainOutline.Size = NewUDim2(0, DropdownOutline_5.AbsoluteSize.X, 0, 0)
    Dropdown.Open = false
    Library:Fade(false, Library:GetObjectsTable(DropdownMainOutline, true), DropdownMainOutline, 0)
    --
    if Options.Hiding or Options.Hidden then
        Dropdown:SetVisible(false)
    end
    --
    return Dropdown
end
--
function Library:Slider(Options)
    Options = Library:Validate({
        Name = "Preview Slider",
        Min = 0,
        Max = 100,
        Default = 1,
        Decimal = 1,
        Ending = "",
        Disable = {},
        Hidden = false,
        Risky = false,
        Parent = nil,
        Flag = Library.NewFlag(),
        Callback = function() end
    }, Options or {})
    --
    local Slider = {
        MouseDown = false,
        Hiding = false,
        Hovering = false,
        Connection = nil,
        CurrentValue = -9999,
        LeftControlDown = false,
    }
    --
    Library.Flags[Options.Flag] = Slider
    --
    local PreviewSlider = Library:CreateObject("Frame", {
        Name = "PreviewSlider",
        BackgroundTransparency = 1,
        Size = Options.Name == "" and NewUDim2(1, 0, 0, 7) or NewUDim2(1, 0, 0, 20),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = Options.Parent
    })
    --
    local SliderOutline = Library:CreateObject("Frame", {
        BorderColor3 = NewRGB(0, 0, 0),
        AnchorPoint = NewVector2(0, 1),
        Name = "SliderOutline",
        Position = NewUDim2(0, -1, 1, 0),
        Size = NewUDim2(1, -19, 0, 7),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(12, 12, 12),
        Parent = PreviewSlider
    })
    --
    local SliderBack = Library:CreateObject("Frame", {
        Size = NewUDim2(1, -2, 1, -2),
        Name = "SliderBack",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(205, 205, 205),
        Parent = SliderOutline
    })
    --
    local UIGradient_2 = Library:CreateObject("UIGradient", {
        Rotation = -90,
        Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, NewRGB(81, 81, 81)),
            ColorSequenceKeypoint.new(1, NewRGB(68, 68, 68))
        },
        Parent = SliderBack
    })
    --
    local SliderDrag = Library:CreateObject("Frame", {
        Name = "Slider",
        Size = NewUDim2(0.5, 0, 1, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = SliderBack
    })
    --
    local UIGradient_3 = Library:CreateObject("UIGradient", {
        Rotation = 90,
        Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, Library.Theme.Default.Accent),
            ColorSequenceKeypoint.new(1, Library.Theme.Default.SecondAccent)
        },
        Parent = SliderDrag
    })
    --
    Library:AddTheme(UIGradient_3, {
        Color = {"Accent", "SecondAccent"},
    })
    --
    local Button_4 = Library:CreateObject("TextButton", {
        FontFace = Library.UI.NewFont,
        TextColor3 = NewRGB(0, 0, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "Button_4",
        BackgroundTransparency = 1,
        Size = NewUDim2(1, 0, 1, 12),
        Position = NewUDim2(0, 0, 0, -6),
        ZIndex = 4,
        BorderSizePixel = 0,
        TextTransparency = 1,
        TextSize = Library.UI.FontSize,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = SliderOutline
    })
    --
    local SliderName = Library:CreateObject("TextLabel", {
        FontFace = Library.UI.NewFont,
        TextColor3 = Options.Risky and Library.Theme.Default.Risky or Library.Theme.Default.TextColor,
        BorderColor3 = NewRGB(0, 0, 0),
        Text = Options.Name,
        Name = "SliderName",
        ZIndex = 3,
        Size = NewUDim2(1, 0, 1, 0),
        BackgroundTransparency = 1,
        TextXAlignment = Enum.TextXAlignment.Left,
        BorderSizePixel = 0,
        TextYAlignment = Enum.TextYAlignment.Top,
        TextSize = Library.UI.FontSize,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = PreviewSlider
    })
    --
    if Options.Risky then
        Library:AddTheme(SliderName, {
            TextColor3 = "Risky",
        })
    end
    --
    local UIPadding_3 = Library:CreateObject("UIPadding", {
        PaddingTop = NewUDim(0, -4),
        PaddingLeft = NewUDim(0, 20),
        Parent = PreviewSlider
    })
    --
    local SliderValue = Library:CreateObject("TextBox", {
        FontFace = Library.UI.BoldFont or Library.UI.NewFont,
        TextColor3 = NewRGB(198, 198, 198),
        BorderColor3 = NewRGB(0, 0, 0),
        Text = Options.Default,
        Name = "SliderValue",
        ZIndex = 3,
        AnchorPoint = NewVector2(1, 0),
        Size = NewUDim2(0, 10, 0, 10),
        Position = NewUDim2(0, 100, 0, 0),
        BackgroundTransparency = 1,
        Active = false,
        Selectable = false,
        TextEditable = false,
        RichText = true,
        BorderSizePixel = 0,
        TextYAlignment = Enum.TextYAlignment.Top,
        TextSize = Library.UI.BoldFontSize or Library.UI.FontSize,
        TextStrokeTransparency = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = SliderDrag
    })
    --
    local AddButton = Library:CreateObject("Frame", {
        BorderColor3 = NewRGB(0, 0, 0),
        AnchorPoint = NewVector2(1, 1),
        Name = "AddButton",
        Position = NewUDim2(1, -13, 1, -3),
        Size = NewUDim2(0, 3, 0, 1),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(100, 100, 100),
        Parent = PreviewSlider
    })
    --
    local AddButton2 = Library:CreateObject("Frame", {
        Size = NewUDim2(0, 1, 0, 3),
        Name = "AddButton2",
        Position = NewUDim2(0, 1, 0, -1),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(100, 100, 100),
        Parent = AddButton
    })
    --
    local AddActualButton = Library:CreateObject("TextButton", {
        FontFace = Library.UI.NewFont,
        TextColor3 = NewRGB(0, 0, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "AddActualButton",
        TextTransparency = 1,
        AnchorPoint = NewVector2(1, 1),
        Size = NewUDim2(0, 11, 0, 7),
        BackgroundTransparency = 1,
        Position = NewUDim2(1, -9, 1, 1),
        BorderSizePixel = 0,
        ZIndex = 3,
        TextSize = Library.UI.FontSize,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = PreviewSlider
    })
    --
    local MinusActualButton = Library:CreateObject("TextButton", {
        FontFace = Library.UI.NewFont,
        TextColor3 = NewRGB(0, 0, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "MinusActualButton",
        TextTransparency = 1,
        AnchorPoint = NewVector2(0, 1),
        Size = NewUDim2(0, 11, 0, 7),
        BackgroundTransparency = 1,
        Position = NewUDim2(0, -12, 1, 0),
        BorderSizePixel = 0,
        ZIndex = 3,
        TextSize = Library.UI.FontSize,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = PreviewSlider
    })
    --
    local MinusButton = Library:CreateObject("Frame", {
        BorderColor3 = NewRGB(0, 0, 0),
        AnchorPoint = NewVector2(0, 1),
        Name = "MinusButton",
        Position = NewUDim2(0, -8, 1, -3),
        Size = NewUDim2(0, 3, 0, 1),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(100, 100, 100),
        Parent = PreviewSlider
    })
    --
    local function GetValue(Value)
        return typeof(Value) == "string" and Value or ("%.14g"):format(Value)
    end
    --
    local function SetValue(Value)
        if not Value then return end
        --
        local Value = Value and Clamp(Options.Decimal * Round(tonumber(Value) / Options.Decimal), Options.Min, Options.Max) or 0
        local ValueText = Options.Disable[1] and ((Value <= Options.Disable[2] or Value >= Options.Disable[3]) and Options.Disable[1]) or tostring(GetValue(Value)) .. Options.Ending
        --
        SliderValue.Text = "<b>" .. ValueText .. "</b>"
        --
        if Value ~= Slider.CurrentValue then
            Slider.CurrentValue = Value
            --
            local Target = NewUDim2((Value - Options.Min) / (Options.Max - Options.Min), 0, 1, 0)
            --
            if Slider.MouseDown then
                SliderDrag.Size = Target
            else
                Library:TweenObject(SliderDrag, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = Target})
            end
            --
            SliderValue.Size = UDim2.fromOffset(SliderValue.TextBounds.X, SliderValue.TextBounds.Y)
            SliderValue.Position = NewUDim2(1, SliderValue.TextBounds.X / 2, 0, 1)
        end
        --
        Library.Flags[Options.Flag] = Slider
        Options.Callback(tonumber(GetValue(Value)))
    end
    --
    SetValue(Options.Default)
    --
    function Slider:Get()
        local Value = Slider.CurrentValue
        if typeof(Value) == "number" then return Value end

        return tonumber(GetValue(Value))
    end
    --
    function Slider:Max()
        return Options.Max
    end
    --
    function Slider:Min()
        return Options.Min
    end
    --
    function Slider:Set(Value)
        if not Value then return end
        --
        SetValue(Value)
    end
    --
    function Slider:GetName()
        return Options.Name
    end
    --
    function Slider:SetVisible(Bool)
        if SetThreadIdentity then
            pcall(SetThreadIdentity, 8)
        end
        local OldValues = Library.Objects[PreviewSlider]
        --
        Slider.Hiding = not Bool
        SliderValue.Visible = Bool
        --
        if Bool then
            Library.Objects[PreviewSlider] = {PreviewSlider, OldValues[2], true}
        end
        --
        Library:Fade(Bool, Library:GetObjectsTable(PreviewSlider), PreviewSlider, 0.075)
        Library:TweenObject(PreviewSlider, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = Bool and (Options.Name == "" and NewUDim2(1, 0, 0, 7) or NewUDim2(1, 0, 0, 20)) or NewUDim2(1, 0, 0, -10)}, function()
            if not Bool then
                Library.Objects[PreviewSlider] = {PreviewSlider, OldValues[2], false}
            end
        end)
    end
    --
    local function SlideBar(Input)
        local SizeX = (Input.Position.X - SliderBack.AbsolutePosition.X) / SliderBack.AbsoluteSize.X
        local Value = Clamp((Options.Max - Options.Min) * SizeX + Options.Min, Options.Min, Options.Max)
        --
        SetValue(Value)
    end
    --
    do -- Connections
        Library:Connection(Button_4.MouseEnter, function()
            if Library.UI.Faded then return end
            --
            Slider.Hovering = true
            --
            Library:TweenObject(SliderBack, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundColor3 = NewRGB(255, 255, 255)})
        end)
        --
        Library:Connection(Button_4.MouseLeave, function()
            if Library.UI.Faded then return end
            --
            Slider.Hovering = false
            --
            Library:TweenObject(SliderBack, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundColor3 = NewRGB(205, 205, 205)})
        end)
        --
        Library:Connection(MinusActualButton.MouseButton1Click, function()
            if Library.UI.Faded then return end
            if Slider.Hiding then return end
            --
            Slider:Set(Slider.CurrentValue - Options.Decimal)
        end)
        --
        Library:Connection(AddActualButton.MouseButton1Click, function()
            if Library.UI.Faded then return end
            if Slider.Hiding then return end
            --
            Slider:Set(Slider.CurrentValue + Options.Decimal)
        end)
        --
        Library:Connection(Button_4.MouseButton1Down, function()
            if Library.UI.Faded then return end
            if Slider.Hiding then return end
            --
            Library.UI.DraggingGui = SliderDrag
            Slider.MouseDown = true
            SlideBar({Position = UserInputService:GetMouseLocation()})
        end)
        --
        Library:Connection(Button_4.MouseButton2Click, function()
            if Library.UI.Faded then return end
            if Slider.Hiding then return end
            --
            SliderValue.TextEditable = true
            SliderValue.Active = true
            SliderValue.Selectable = true
            SliderValue.Text = GetValue(Slider.CurrentValue)
            --
            SliderValue:CaptureFocus()
        end)
        --
        Library:Connection(SliderValue.FocusLost, function()
            local NewValue = tonumber(Match(SliderValue.Text, "%-?%d+%.?%d*"))
            --
            SliderValue.TextEditable = false
            SliderValue.Active = false
            SliderValue.Selectable = false
            --
            Slider.CurrentValue = -9999
            --
            if NewValue then
                SetValue(NewValue)
            else
                SetValue(Options.Min)
            end
        end)
        --
        Library:Connection(UserInputService.InputChanged, function(Input)
            if not Slider.MouseDown then return end
            if Library.UI.Faded then return end
            if Input.UserInputType ~= Enum.UserInputType.MouseMovement then return end
            --
            if Library.UI.DraggingGui ~= SliderDrag and not (UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)) then
                return
            end
            --
            SlideBar(Input)
        end)
        --
        Library:Connection(UserInputService.InputEnded, function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                if Library.UI.DraggingGui == SliderDrag then
                    Library.UI.DraggingGui = nil
                end
                --
                Slider.MouseDown = false
            end
        end)
    end
    --
    if Options.Hidden then
        Slider:SetVisible(false)
    end
    --
    return Slider
end
--
function Library:Toggle(Options)
    Options = Library:Validate({
        Default = false,
        Name = "Preview Toggle",
        Risky = false,
        SectionName = nil,
        Parent = nil,
        Hidden = false,
        AnchorPoint = NewVector2(0, 0),
        MainUI = nil,
        Size = NewUDim2(1, 0, 0, 8),
        Position = NewUDim2(0, 0, 0, 0),
        UseToggleOutline = false,
        ZIndex = 2,
        Flag = Library:NewFlag(),
        Callback = function() end
    }, Options or {})
    --
    local Toggle = {
        Active = false,
        Hovering = false,
        State = false,
        Hiding = false,
        MainUI = Options.MainUI,
        TabUI = Options.TabUI,
        ColorPickers = {},
        KeybindState = false,
        Tab = Options.Tab,
        SourceSection = Options.SourceSection,
    }
    --
    Library.Flags[Options.Flag] = Toggle
    --
    local PreviewToggle = Library:CreateObject("Frame", {
        Name = "PreviewToggle",
        BackgroundTransparency = 1,
        Size = Options.Size,
        Position = Options.Position,
        BorderColor3 = NewRGB(0, 0, 0),
        AnchorPoint = Options.AnchorPoint,
        ZIndex = Options.ZIndex or 2,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = Options.Parent
    })
    --
    local ToggleOutline = Library:CreateObject("Frame", {
        Name = "ToggleOutline",
        Size = NewUDim2(0, 8, 0, 8),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = Options.ZIndex or 2,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(12, 12, 12),
        Parent = PreviewToggle
    })
    --
    if Options.UseToggleOutline then
        ToggleOutline.AnchorPoint = Options.AnchorPoint
        ToggleOutline.Position = Options.Position
    end
    --
    local ToggleInline = Library:CreateObject("Frame", {
        Size = NewUDim2(1, -2, 1, -2),
        Name = "ToggleInline",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = Options.ZIndex or 2,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(227, 227, 227),
        Parent = ToggleOutline
    })
    --
    local UIGradient_3 = Library:CreateObject("UIGradient", {
        Rotation = 90,
        Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, NewRGB(84, 84, 84)),
            ColorSequenceKeypoint.new(1, NewRGB(74, 74, 74))
        },
        Parent = ToggleInline
    })
    --
    local ToggleMain = Library:CreateObject("Frame", {
        Size = NewUDim2(1, -2, 1, -2),
        Name = "ToggleInline",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = Options.ZIndex or 2,
        BorderSizePixel = 0,
        BackgroundTransparency = 1,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = ToggleOutline
    })
    --
    local UIGradient_32 = Library:CreateObject("UIGradient", {
        Rotation = 90,
        Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, Library.Theme.Default.Accent),
            ColorSequenceKeypoint.new(1, Library.Theme.Default.SecondAccent)
        },
        Parent = ToggleMain
    })
    --
    Library:AddTheme(UIGradient_32, {
        Color = {"Accent", "SecondAccent"},
    })
    --
    local ToggleName = Library:CreateObject("TextLabel", {
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "ToggleName",
        BorderSizePixel = 0,
        BackgroundTransparency = 1,
        TextXAlignment = Enum.TextXAlignment.Left,
        Size = NewUDim2(1, 0, 1, 0),
        ZIndex = Options.ZIndex or 2,
        FontFace = Library.UI.NewFont,
        RichText = true,
        Text = Options.Name,
        TextColor3 = Options.Risky and Library.Theme.Default.Risky or Library.Theme.Default.TextColor,
        TextSize = Library.UI.FontSize,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = PreviewToggle
    })
    --
    if Options.Risky then
        Library:AddTheme(ToggleName, {
            TextColor3 = "Risky",
        })
    end
    --
    local UIPadding_7 = Library:CreateObject("UIPadding", {
        PaddingLeft = NewUDim(0, 20),
        Parent = ToggleName
    })
    --
    local Button_9 = Library:CreateObject("TextButton", {
        FontFace = Library.UI.NewFont,
        TextColor3 = NewRGB(0, 0, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "Button_9",
        BackgroundTransparency = 1,
        Size = NewUDim2(1, 0, 1, 0),
        BorderSizePixel = 0,
        TextTransparency = 1,
        TextSize = Library.UI.FontSize,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = PreviewToggle
    })
    --
    do -- Functions
        function Toggle:ToggleGUI(Bool)
            if SetThreadIdentity then
                pcall(SetThreadIdentity, 8)
            end
            if Bool == nil then
                Toggle.State = not Toggle.State
            else
                Toggle.State = Bool
            end
            --
            Library:TweenObject(ToggleMain, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundTransparency = Toggle.State and 0 or 1})
            --
            Library.Flags[Options.Flag] = Toggle
            Options.Callback(Toggle.State)
        end
        --
        function Toggle:GetName()
            return Options.Name
        end
        --
        function Toggle:GetFlag()
            return Options.Flag
        end
        --
        function Toggle:GetSection()
            return Options.SectionName
        end
        --
        function Toggle:GetState()
            return Toggle.State
        end
        --
        function Toggle:GetCallback(b)
            Options.Callback(b)
        end
        --
        function Toggle:Set(Value)
            Toggle:ToggleGUI(Value)
        end
        --
        function Toggle:SetName(Name)
            Options.Name = Name
            ToggleName.Text = Name
        end
        --
        function Toggle:Get()
            return Toggle.State
        end
        --
        function Toggle:SetVisible(Bool)
            if SetThreadIdentity then
                pcall(SetThreadIdentity, 8)
            end
            local OldValues = Library.Objects[PreviewToggle]
            --
            Toggle.Hiding = not Bool
            --
            if Bool then
                Library.Objects[PreviewToggle] = {PreviewToggle, OldValues[2], true}
            end
            --
            Library:Fade(Bool, Library:GetObjectsTable(PreviewToggle), PreviewToggle, 0.075)
            Library:TweenObject(PreviewToggle, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = Bool and NewUDim2(1, 0, 0, 8) or NewUDim2(1, 0, 0, -10)}, function()
                if not Bool then
                    Library.Objects[PreviewToggle] = {PreviewToggle, OldValues[2], false}
                end
            end)
        end
        --
        function Toggle:ColorPicker(Options)
            Options = Library:Validate({
                Name = "Preview Color Picker",
                Default = NewRGB(255, 0, 0),
                Flag = Library.NewFlag(),
                Alpha = 0,
                AlphaBar = true,
                AllowAnimation = true,
                Callback = function() end,
            }, Options or {})
            --
            local ColorPicker = {}
            --
            Toggle.ColorPickers[#Toggle.ColorPickers + 1] = ColorPicker
            --
            local ColorPickerFrame = Library:ColorPicker({
                Name = Options.Name,
                Default = Options.Default,
                Flag = Options.Flag,
                Alpha = Options.Alpha,
                AlphaBar = Options.AlphaBar,
                MainUI = Toggle.MainUI,
                TabUI = Toggle.TabUI,
                AllowAnimation = Options.AllowAnimation,
                Tab = Toggle.Tab,
                SourceSection = Toggle.SourceSection,
                Callback = Options.Callback,
                Parent = PreviewToggle,
                Keybind = Toggle.KeybindState,
                Count = #Toggle.ColorPickers,
            })
            --
            return ColorPickerFrame
        end
        --
        function Toggle:Keybind(Options)
            Options = Library:Validate({
                Default = Enum.KeyCode.Backspace,
                Mode = "Toggle",
                UseMode = true,
                HideFromList = false,
                Blacklisted = {Enum.KeyCode.Backspace},
                Hiding = false,
                Flag = Library.NewFlag(),
                Callback = function() end,
            }, Options or {})
            --
            local Keybind = {}
            --
            Toggle.KeybindState = true
            --
            Library:Keybind({
                Default = Options.Default,
                Mode = Options.Mode,
                HideFromList = Options.HideFromList,
                Blacklisted = Options.Blacklisted,
                Parent = PreviewToggle,
                UseMode = Options.UseMode,
                Toggle = Toggle,
                MainUI = Toggle.MainUI,
                TabUI = Toggle.TabUI,
                Hiding = Options.Hiding,
                ToggleState = Toggle.State,
                Flag = Options.Flag,
                Callback = Options.Callback,
                Count = #Toggle.ColorPickers + 1,
            })
            --
            return Keybind
        end
    end
    --
    do -- Connections
        Library:Connection(PreviewToggle.MouseEnter, function()
            if Library.UI.Faded then return end
            --
            Library:TweenObject(ToggleInline, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundColor3 = NewRGB(255, 255, 255)})
        end)
        --
        Library:Connection(PreviewToggle.MouseLeave, function()
            if Library.UI.Faded then return end
            --
            Library:TweenObject(ToggleInline, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundColor3 = NewRGB(227, 227, 227)})
        end)
        --
        Library:Connection(Button_9.MouseButton1Click, function()
            if Library.UI.Faded then return end
            --
            if Toggle.Hiding then return end
            --
            Toggle:ToggleGUI()
        end)
    end
    --
    Toggle:ToggleGUI(Options.Default)
    --
    if Options.Hidden then
        Toggle:SetVisible(false)
    end
    --
    return Toggle
end
--
function Library:Label(Options)
    Options = Library:Validate({
        Message = "Preview Label",
        Side = "Left",
        Risky = false,
        Parent = nil,
        MainUI = nil,
        SectionName = nil,
        Hidden = false,
        TabUI = nil,
        Tab = nil,
        SourceSection = nil,
        Callback = function() end
    }, Options or {})
    --
    local Label = {
        ColorPickers = {},
        KeybindState = false,
        Hiding = false,
        MainUI = Options.MainUI,
        TabUI = Options.TabUI,
        Tab = Options.Tab,
        SourceSection = Options.SourceSection,
        State = true,
    }
    --
    local PreviewLabel = Library:CreateObject("Frame", {
        Name = "PreviewLabel",
        BackgroundTransparency = 1,
        Size = NewUDim2(1, 0, 0, 7),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 2,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = Options.Parent
    })
    --
    local LabelText = Library:CreateObject("TextLabel", {
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "ToggleName",
        BorderSizePixel = 0,
        BackgroundTransparency = 1,
        TextXAlignment = Enum.TextXAlignment[Options.Side],
        Size = NewUDim2(1, 0, 1, 0),
        Position = NewUDim2(0, 0, 0, -1),
        ZIndex = 2,
        FontFace = Library.UI.NewFont,
        RichText = true,
        Text = Options.Message,
        TextColor3 = NewRGB(198, 198, 198),
        TextSize = Library.UI.FontSize,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = PreviewLabel
    })
    --
    local UIPadding_7 = Library:CreateObject("UIPadding", {
        PaddingLeft = NewUDim(0, 20),
        Parent = LabelText
    })
    --
    do -- Functions
        function Label:GetName()
            return Options.Message
        end
        --
        function Label:GetState()
            return Label.State
        end
        --
        function Label:GetSection()
            return Options.SectionName
        end
        --
        function Label:GetCallback(Bool)
            Options.Callback(Bool)
        end
        --
        function Label:SetVisible(Bool)
            if SetThreadIdentity then
                pcall(SetThreadIdentity, 8)
            end
            local OldValues = Library.Objects[PreviewLabel]
            --
            Label.Hiding = not Bool
            --
            if Bool then
                Library.Objects[PreviewLabel] = {PreviewLabel, OldValues[2], true}
            end
            --
            Library:Fade(Bool, Library:GetObjectsTable(PreviewLabel), PreviewLabel, 0.075)
            Library:TweenObject(PreviewLabel, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = Bool and NewUDim2(1, 0, 0, 8) or NewUDim2(1, 0, 0, -10)}, function()
                if not Bool then
                    Library.Objects[PreviewLabel] = {PreviewLabel, OldValues[2], false}
                end
            end)
        end
        --
        function Label:ColorPicker(Options)
            Options = Library:Validate({
                Name = "Preview Color Picker",
                Default = NewRGB(255, 0, 0),
                Flag = Library.NewFlag(),
                Alpha = 0,
                AlphaBar = true,
                AllowAnimation = true,
                MainUI = nil,
                Callback = function() end,
            }, Options or {})
            --
            local ColorPicker = {}
            --
            Label.ColorPickers[#Label.ColorPickers + 1] = ColorPicker
            --
            local ColorPickerFrame = Library:ColorPicker({
                Name = Options.Name,
                Default = Options.Default,
                Flag = Options.Flag,
                Alpha = Options.Alpha,
                AlphaBar = Options.AlphaBar,
                MainUI = Label.MainUI,
                TabUI = Label.TabUI,
                AllowAnimation = Options.AllowAnimation,
                Tab = Label.Tab,
                SourceSection = Label.SourceSection,
                Callback = Options.Callback,
                Parent = PreviewLabel,
                Keybind = Label.KeybindState,
                Count = #Label.ColorPickers,
            })
            --
            return ColorPickerFrame
        end
        --
        function Label:Keybind(Options)
            Options = Library:Validate({
                Default = Enum.KeyCode.Backspace,
                Mode = "Toggle",
                UseMode = true,
                HideFromList = false,
                Blacklisted = {Enum.KeyCode.Backspace},
                Hiding = false,
                Flag = Library.NewFlag(),
                Callback = function() end,
            }, Options or {})
            --
            local Keybind = {}
            --
            Label.KeybindState = true
            --
            Library:Keybind({
                Default = Options.Default,
                Mode = Options.Mode,
                HideFromList = Options.HideFromList,
                Blacklisted = Options.Blacklisted,
                Parent = PreviewLabel,
                Toggle = Label,
                UseMode = Options.UseMode,
                MainUI = Label.MainUI,
                TabUI = Label.TabUI,
                Hiding = Options.Hiding,
                ToggleState = Label.State,
                Flag = Options.Flag,
                Callback = Options.Callback,
                Count = #Label.ColorPickers + 1,
            })
            --
            return Keybind
        end
        --
        --[[function Label:Update()
            LabelText.Size = NewUDim2(LabelText.Size.X.Scale, LabelText.Size.X.Offset, 0, Infinite)
            LabelText.Size = NewUDim2(LabelText.Size.X.Scale, LabelText.Size.X.Offset, 0, LabelText.TextBounds.Y)
            PreviewLabel.Size = NewUDim2(PreviewLabel.Size.X.Scale, PreviewLabel.Size.X.Offset, 0, LabelName.TextBounds.Y + 6)
        end]]
    end
    --
    --Label:Update()
    --
    if Options.Hidden then
        Label:SetVisible(false)
    end
    --
    return Label
end
--
function Library:TextBox(Options)
    Options = Library:Validate({
        Default = "",
        Name = "Preview TextBox",
        Max = 32,
        Parent = nil,
        Size = NewUDim2(1, 0, 0, 19),
        Position = NewUDim2(0, 0, 0, 0),
        NumbersOnly = false,
        ClearOnFocus = false,
        Hidden = false,
        TypedCheck = false,
        CheckIfPressedEnter = false,
        Risky = false,
        Flag = Library.NewFlag(),
        Callback = function() end
    }, Options or {})
    --
    local TextBox = {
        Focused = false,
        Hovering = false,
        Hiding = false,
    }
    --
    Library.Flags[Options.Flag] = TextBox
    --
    local PreviewTextBox = Library:CreateObject("Frame", {
        Name = "PreviewTextBox",
        BackgroundTransparency = 1,
        Size = Options.Size,
        Position = Options.Position,
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = Options.Parent
    })
    --
    local TextBoxOutline = Library:CreateObject("Frame", {
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "TextBoxOutline",
        Position = NewUDim2(0, -1, 0, 0),
        Size = NewUDim2(1, -19, 0, 19),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(12, 12, 12),
        Parent = PreviewTextBox
    })
    --
    local TextBoxInline = Library:CreateObject("Frame", {
        Size = NewUDim2(1, -2, 1, -2),
        Name = "TextBoxInline",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(50, 50, 50),
        Parent = TextBoxOutline
    })
    --
    local TextBoxMain = Library:CreateObject("Frame", {
        Size = NewUDim2(1, -2, 1, -2),
        Name = "TextBoxMain",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(24, 24, 24),
        Parent = TextBoxInline
    })
    --
    local TextBoxObject = Library:CreateObject("TextBox", {
        FontFace = Library.UI.NewFont,
        TextColor3 = Library.Theme.Default.TextColor,
        BorderColor3 = NewRGB(0, 0, 0),
        Text = "",
        ZIndex = 3,
        Size = NewUDim2(1, 0, 1, 0),
        BorderSizePixel = 0,
        BackgroundTransparency = 1,
        SelectionStart = 1,
        ClearTextOnFocus = Options.ClearOnFocus,
        PlaceholderColor3 = Library.Theme.Default.TextColor,
        TextXAlignment = Enum.TextXAlignment.Left,
        PlaceholderText = "_",
        TextSize = Library.UI.FontSize,
        TextTruncate = Enum.TextTruncate.AtEnd,
        ClipsDescendants = false,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = TextBoxMain
    })
    --
    TextBox.Object = TextBoxObject
    Library.Flags[Options.Flag] = TextBox
    --
    local UIPadding_6 = Library:CreateObject("UIPadding", {
        PaddingBottom = NewUDim(0, 2),
        PaddingLeft = NewUDim(0, 5),
        Parent = TextBoxObject
    })
    --
    local UIPadding_7 = Library:CreateObject("UIPadding", {
        PaddingLeft = NewUDim(0, 20),
        Parent = PreviewTextBox
    })
    --
    do -- Functions
        function TextBox:SetVisible(Bool)
            if SetThreadIdentity then
                pcall(SetThreadIdentity, 8)
            end
            local OldValues = Library.Objects[PreviewTextBox]
            --
            TextBox.Hiding = not Bool
            TextBoxObject.Visible = Bool
            --
            if Bool then
                Library.Objects[PreviewTextBox] = {PreviewTextBox, OldValues[2], true}
            end
            --
            Library:Fade(Bool, Library:GetObjectsTable(PreviewTextBox), PreviewTextBox, 0.075)
            Library:TweenObject(PreviewTextBox, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = Bool and Options.Size or NewUDim2(1, 0, 0, -10)}, function()
                if not Bool then
                    Library.Objects[PreviewTextBox] = {PreviewTextBox, OldValues[2], false}
                end
            end)
        end
        --
        function TextBox:Get()
            SetThreadIdentity(8)
            return TextBoxObject.Text
        end
        --
        function TextBox:Set(Value)
            SetThreadIdentity(8)
            local Value = tostring(Value)
            --
            if TextBoxObject.Text == Value then return end
            --
            TextBoxObject.Text = Value
            --
            Library.Flags[Options.Flag] = TextBox
            Options.Callback(TextBoxObject.Text)
        end
    end
    --
    do -- Connections
        Library:Connection(TextBoxObject:GetPropertyChangedSignal("Text"), function()
            if Options.NumbersOnly then
                TextBoxObject.Text = TextBoxObject.Text:gsub('[^%d%.%-]+', '')
            end
            --
            if Options.TypedCheck then
                Library.Flags[Options.Flag] = TextBox
                Options.Callback(TextBoxObject.Text)
            end
            --
            TextBox.Focused = true
        end)
        --
        Library:Connection(TextBoxObject.Focused, function()
            if Library.UI.Faded then return end
            --
            if TextBox.Hiding then
                TextBoxObject:ReleaseFocus()
                --
                return
            end
            --
            TextBox.Focused = true
            --
            TextBoxObject.TextColor3 = Library.Theme.Default.Accent
            --
            Library:AddTheme(TextBoxObject, {
                TextColor3 = "Accent",
            })
            --
            TextBoxObject.PlaceholderText = ""
        end)
        --
        Library:Connection(TextBoxObject.FocusLost, function(EnterPressed)
            if Options.CheckIfPressedEnter and not EnterPressed then return end
            --
            TextBox.Focused = false
            TextBoxObject.PlaceholderText = "_"
            --
            TextBoxObject.TextColor3 = Library.Theme.Default.TextColor
            --
            Library:AddTheme(TextBoxObject, {
                TextColor3 = "TextColor",
            })
            --
            Library.Flags[Options.Flag] = TextBox
            Options.Callback(TextBoxObject.Text)
        end)
    end
    --
    if Options.Hidden then
        TextBox:SetVisible(false)
    end
    --
    if Options.Default and Options.Default ~= "" then
        TextBoxObject.Text = Options.Default
        Options.Callback(Options.Default)
    end
    --
    return TextBox
end
--
function Library:List(Options)
    Options = Library:Validate({
        Size = 100,
        Hidden = false,
        Multi = false,
        Flag = Library.NewFlag(),
        Callback = function() end
    }, Options or {})
    --
    local List = {
        CurrentValue = nil,
        CurrentValueName = nil,
        Pending = nil,
        Multi = Options.Multi and true or false,
        Applying = false,
        Selected = {},
        Values = {},
    }
    --
    Library.Flags[Options.Flag] = List
    --
    local PreviewList = Library:CreateObject("Frame", {
        Name = "PreviewList",
        BackgroundTransparency = 1,
        Size = NewUDim2(1, 0, 0, Options.Size),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = Options.Parent
    })
    --
    local UIPadding_11 = Library:CreateObject("UIPadding", {
        PaddingLeft = NewUDim(0, 20),
        Parent = PreviewList
    })
    --
    local ListOutline = Library:CreateObject("Frame", {
        Size = NewUDim2(1, -19, 1, -18),
        Name = "ListOutline",
        Position = NewUDim2(0, -1, 0, 18),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(12, 12, 12),
        Parent = PreviewList
    })
    --
    local ListMain = Library:CreateObject("Frame", {
        Size = NewUDim2(1, -2, 1, -2),
        Name = "ListMain",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 4,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(35, 35, 35),
        Parent = ListOutline
    })
    --
    local DownArrow = Library:CreateObject("ImageButton", {
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "DownArrow",
        Image = "rbxassetid://15540867448",
        BackgroundTransparency = 1,
        Position = NewUDim2(1, -10, 1, -9),
        Size = NewUDim2(0, 5, 0, 4),
        ZIndex = 7,
        Visible = false,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = ListMain
    })
    --
    local UpArrow = Library:CreateObject("ImageButton", {
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "UpArrow",
        Image = "rbxassetid://15540851994",
        BackgroundTransparency = 1,
        Position = NewUDim2(1, -10, 0, 5),
        Size = NewUDim2(0, 5, 0, 4),
        ZIndex = 7,
        Visible = false,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = ListMain
    })
    --
    local ListScrolling = Library:CreateObject("ScrollingFrame", {
        ScrollBarImageColor3 = NewRGB(65, 65, 65),
        MidImage = "rbxassetid://158362264",
        Active = true,
        BorderColor3 = NewRGB(0, 0, 0),
        ScrollBarThickness = 5,
        Name = "ListScrolling",
        ZIndex = 3,
        TopImage = "rbxassetid://158362264",
        Position = NewUDim2(0, 1, 0, 1),
        Size = NewUDim2(1, -2, 1, -2),
        BottomImage = "rbxassetid://158362264",
        BorderSizePixel = 0,
        CanvasSize = NewUDim2(0, 0, 0, 0),
        CanvasPosition = NewVector2(0, 0),
        AutomaticCanvasSize = Enum.AutomaticSize.Y,
        BackgroundColor3 = NewRGB(40, 40, 40),
        Parent = ListOutline
    })
    --
    local UIListLayout_2 = Library:CreateObject("UIListLayout", {
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = ListScrolling
    })
    --
    local TextBox = Library:TextBox({Parent = PreviewList, TypedCheck = true, Size = NewUDim2(1, 20, 0, 19), Position = NewUDim2(0, -20, 0, 0), Callback = function(Text)
        List:UpdateSection()
        --
        for Index, Frame in ListScrolling:GetChildren() do
            if Frame:IsA("Frame") then
                Frame.Visible = StringFind(Frame.Name:lower(), Text:lower()) and true or false
            end
        end
    end})
    --
    do -- Functions
        function List:Get()
            if List.Multi then
                return List.Selected
            end
            --
            return List.CurrentValueName or List.Pending
        end
        --
        function List:SetVisible(Bool)
            if SetThreadIdentity then
                pcall(SetThreadIdentity, 8)
            end
            local OldValues = Library.Objects[PreviewList]
            --
            TextBox.Object.Visible = Bool
            --
            if Bool then
                Library.Objects[PreviewList] = {PreviewList, OldValues[2], true}
            end
            --
            Library:Fade(Bool, Library:GetObjectsTable(PreviewList, false), PreviewList, 0.075)
            Library:TweenObject(PreviewList, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = Bool and NewUDim2(1, 0, 0, Options.Size) or NewUDim2(1, 0, 0, -10)}, function()
                if not Bool then
                    Library.Objects[PreviewList] = {PreviewList, OldValues[2], false}
                end
            end)
        end
        --
        function List:AddValue(Value, Icon)
            if List.Values[Value] then return end
            --
            local ListValue = {
                Active = false,
                Hovering = false,
                Parts = {},
                Connections = {},
            }
            --
            local InactiveValue = Library:CreateObject("Frame", {
                Name = Value .. "1",
                Size = NewUDim2(1, 0, 0, 20),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 5,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(35, 35, 35),
                Parent = ListScrolling
            })
            --
            local Button_912 = Library:CreateObject("TextButton", {
                FontFace = Library.UI.NewFont,
                TextColor3 = NewRGB(0, 0, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "Button_9",
                BackgroundTransparency = 1,
                Size = NewUDim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                TextTransparency = 1,
                TextSize = Library.UI.FontSize,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = InactiveValue
            })
            local ValueName_1 = Library:CreateObject("TextLabel", {
                FontFace = Library.UI.NewFont,
                TextColor3 = NewRGB(208, 208, 208),
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "ValueName_1",
                BorderSizePixel = 0,
                Text = Value,
                RichText = true,
                BackgroundTransparency = 1,
                TextXAlignment = Enum.TextXAlignment.Left,
                Size = NewUDim2(1, 0, 1, 0),
                ZIndex = 5,
                TextSize = Library.UI.FontSize,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = InactiveValue
            })
            local TextColor = Icon and Icon.TextColor
            if TextColor then
                ValueName_1.TextColor3 = TextColor
            end
            if Icon then
                local Color = Icon.Color or NewRGB(255, 255, 255)
                local IconImage = Library:CreateObject("ImageLabel", {
                    BorderColor3 = NewRGB(0, 0, 0),
                    Image = Icon.Image,
                    AnchorPoint = NewVector2(0, 0.5),
                    Position = Icon.Position or NewUDim2(0, 7, 0.5, 0),
                    BackgroundTransparency = 1,
                    Name = "BackImage",
                    Size = Icon.Size or NewUDim2(0, 13, 0, 13),
                    ZIndex = 5,
                    BorderSizePixel = 0,
                    ImageColor3 = Color,
                    BackgroundColor3 = NewRGB(0, 0, 0),
                    Parent = InactiveValue
                })
                local UIPadding_135 = Library:CreateObject("UIPadding", {
                    PaddingLeft = NewUDim(0, 10),
                    Parent = IconImage
                })
                ListValue.Parts[#ListValue.Parts + 1] = IconImage
                ListValue.Parts[#ListValue.Parts + 1] = UIPadding_135
            end
            ValueName_1.Text = Library:ClampString(Value, ValueName_1.AbsoluteSize.X - (Icon and 35 or 25))
            local UIPadding_13 = Library:CreateObject("UIPadding", {
                PaddingLeft = NewUDim(0, (Icon and (Icon.PaddingLeft or 30) or 10)),
                Parent = ValueName_1
            })
            ListValue.Object = InactiveValue
            ListValue.Parts[#ListValue.Parts + 1] = InactiveValue
            ListValue.Parts[#ListValue.Parts + 1] = Button_912
            ListValue.Parts[#ListValue.Parts + 1] = ValueName_1
            ListValue.Parts[#ListValue.Parts + 1] = UIPadding_13
            List.Values[Value] = ListValue
            do
                function ListValue:Activate()
                    if not ListValue.Active then
                        if not List.Multi and List.CurrentValue then
                            List.CurrentValue:Deactivate()
                        end
                        ListValue.Active = true
                        ValueName_1.TextColor3 = Library.Theme.Default.Accent
                        ValueName_1.Text = Library:ClampString(Value, ValueName_1.AbsoluteSize.X - (Icon and 35 or 25))
                        Library:AddTheme(ValueName_1, {
                            TextColor3 = "Accent",
                        })
                        List.CurrentValue = ListValue
                        List.CurrentValueName = Value
                        Library.Flags[Options.Flag] = List
                        if List.Multi then
                            if not Find(List.Selected, Value) then
                                Insert(List.Selected, Value)
                            end
                            if not List.Applying then
                                Options.Callback(List.Selected)
                            end
                        else
                            Options.Callback(Value)
                        end
                    end
                end
                function ListValue:Deactivate()
                    if ListValue.Active then
                        ListValue.Active = false
                        ListValue.Hovering = false
                        ValueName_1.TextColor3 = TextColor or Library.Theme.Default.TextColor
                        ValueName_1.Text = Library:ClampString(Value, ValueName_1.AbsoluteSize.X - (Icon and 35 or 25))
                        if not TextColor then
                            Library:AddTheme(ValueName_1, {
                                TextColor3 = "TextColor",
                            })
                        end
                        if List.Multi then
                            local Position = Find(List.Selected, Value)
                            if Position then
                                Remove(List.Selected, Position)
                            end
                            if List.CurrentValue == ListValue then
                                List.CurrentValue = nil
                                List.CurrentValueName = nil
                            end
                            Library.Flags[Options.Flag] = List
                            if not List.Applying then
                                Options.Callback(List.Selected)
                            end
                        end
                    end
                end
            end
            do
                local OldText = ValueName_1.Text
                local LastClick = 0
                local Connections = ListValue.Connections
                Connections[#Connections + 1] = Library:Connection(PreviewList:GetPropertyChangedSignal("AbsoluteSize"), function()
                    ValueName_1.Text = Library:ClampString(Value, ValueName_1.AbsoluteSize.X - 25)
                end)
                Connections[#Connections + 1] = Library:Connection(InactiveValue.MouseEnter, function()
                    if Library.UI.Faded then return end
                    InactiveValue.BackgroundColor3 = NewRGB(25, 25, 25)
                    OldText = ValueName_1.Text
                    if not ListValue.Active then
                        ValueName_1.Text = "<b>" .. OldText .. "</b>"
                    end
                end)
                Connections[#Connections + 1] = Library:Connection(InactiveValue.MouseLeave, function()
                    if Library.UI.Faded then return end
                    InactiveValue.BackgroundColor3 = NewRGB(35, 35, 35)
                    if not ListValue.Active then
                        ValueName_1.Text = OldText
                    end
                end)
                Connections[#Connections + 1] = Library:Connection(Button_912.MouseButton1Click, function()
                    if Library.UI.Faded then return end
                    if List.Multi then
                        local Now = Clock()
                        --
                        if ListValue.Active and Now - LastClick <= 0.35 then
                            LastClick = 0
                            --
                            ListValue:Deactivate()
                            --
                            return
                        end
                        --
                        LastClick = Now
                    end
                    ListValue:Activate()
                end)
            end
            --
            if List.Multi then
                if Find(List.Selected, Value) then
                    ListValue:Activate()
                end
            elseif List.Pending == Value then
                List.Pending = nil
                --
                ListValue:Activate()
            end
        end
        --
        function List:RemoveValue(Value)
            local Entry = List.Values[Value]
            --
            if not Entry then return end
            --
            for Index = 1, #Entry.Connections do
                local Connection = Entry.Connections[Index]
                local Position = Find(Library.Connections, Connection)
                --
                if Position then
                    Remove(Library.Connections, Position)
                end
                --
                Connection:Disconnect()
            end
            --
            for Index = 1, #Entry.Parts do
                local Part = Entry.Parts[Index]
                --
                Library.Objects[Part] = nil
                Library.Theme.Objects[Part] = nil
            end
            --
            Entry.Object:Destroy()
            --
            List.Values[Value] = nil
            --
            if List.CurrentValue == Entry then
                List.CurrentValue = nil
                List.CurrentValueName = nil
            end
        end
        --
        function List:Clear()
            for Value in List.Values do
                List:RemoveValue(Value)
            end
        end
        --
        function List:Set(Value)
            if List.Multi then
                local Wanted = {}
                --
                if typeof(Value) == "table" then
                    for Index = 1, #Value do
                        local Name = Value[Index]
                        --
                        if typeof(Name) == "string" and Name ~= "" and not Find(Wanted, Name) then
                            Insert(Wanted, Name)
                        end
                    end
                elseif typeof(Value) == "string" and Value ~= "" then
                    Insert(Wanted, Value)
                end
                --
                List.Applying = true
                --
                for Name, Entry in List.Values do
                    if not Find(Wanted, Name) then
                        Entry:Deactivate()
                    end
                end
                --
                List.Selected = Wanted
                --
                for Index = 1, #Wanted do
                    local Entry = List.Values[Wanted[Index]]
                    --
                    if Entry then
                        Entry:Activate()
                    end
                end
                --
                List.Applying = false
                Library.Flags[Options.Flag] = List
                Options.Callback(List.Selected)
                --
                return
            end
            --
            local Entry = List.Values[Value]
            --
            if not Entry then
                List.Pending = Value
                --
                return
            end
            --
            List.Pending = nil
            --
            Entry:Activate()
        end
        --
        function List:Refresh(Content, Default)
            if List.Multi then
                List.Applying = true
                --
                List:Clear()
                --
                for Index, Value in Content do
                    List:AddValue(Value)
                end
                --
                List.Applying = false
                Library.Flags[Options.Flag] = List
                Options.Callback(List.Selected)
                --
                return
            end
            --
            local Keep = List.CurrentValueName or List.Pending
            --
            List:Clear()
            --
            for Index, Value in Content do
                List:AddValue(Value)
            end
            --
            local Wanted = Keep or Default
            --
            if Wanted then
                List:Set(Wanted)
            end
        end
        --
        function List:UpdateSection()
            local CanvasSize = ListScrolling.AbsoluteCanvasSize.Y
            local AbsoluteSize = ListMain.AbsoluteSize.Y
            --
            if CanvasSize > AbsoluteSize then
                ListMain.Size = NewUDim2(1, -8, 1, -2)
                UpArrow.Visible = not List:CheckArrows("Up")
                DownArrow.Visible = not List:CheckArrows("Down")
            elseif CanvasSize == AbsoluteSize then
                ListMain.Size = NewUDim2(1, -2, 1, -2)
                UpArrow.Visible = false
                DownArrow.Visible = false
            end
        end
        --
        function List:CheckArrows(Type)
            if Type == "Up" then
                return ListScrolling.CanvasPosition == NewVector2(0, 0)
            elseif Type == "Down" then
                return ListScrolling.CanvasPosition == NewVector2(0, ListScrolling.AbsoluteCanvasSize.Y - ListScrolling.AbsoluteSize.Y)
            else
                return false
            end
        end
    end
    --
    List:UpdateSection()
    --
    do -- Connections
        Library:Connection(ListScrolling.ChildAdded, function()
            List:UpdateSection()
        end)
        --
        Library:Connection(ListScrolling.ChildRemoved, function()
            List:UpdateSection()
        end)
        --
        Library:Connection(ListOutline:GetPropertyChangedSignal("AbsoluteSize"), function()
            List:UpdateSection()
        end)
        --
        Library:Connection(ListScrolling:GetPropertyChangedSignal("AbsoluteSize"), function()
            List:UpdateSection()
        end)
        --
        Library:Connection(ListScrolling:GetPropertyChangedSignal("CanvasPosition"), function()
            List:UpdateSection()
        end)
        --
        Library:Connection(UpArrow.MouseButton1Click, function()
            if Library.UI.Faded then return end
            --
            if not UpArrow.Visible then return end
            --
            Library:TweenObject(ListScrolling, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {CanvasPosition = NewVector2(0, 0)})
        end)
        --
        Library:Connection(DownArrow.MouseButton1Click, function()
            if Library.UI.Faded then return end
            --
            if not DownArrow.Visible then return end
            --
            Library:TweenObject(ListScrolling, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {CanvasPosition = NewVector2(0, ListScrolling.AbsoluteCanvasSize.Y - ListScrolling.AbsoluteSize.Y)})
        end)
    end
    --
    if Options.Hidden then
        List:SetVisible(false)
    end
    --
    return List
end
--
function Library:Button(Options)
    Options = Library:Validate({
        Name = "Preview Button",
        Confirmation = false,
        Parent = nil,
        Hidden = false,
        Size = NewUDim2(1, 0, 0, 25),
        Position = NewUDim2(0, 0, 0, 0),
        Risky = false,
        Callback = function() end
    }, Options or {})
    --
    local Button = {
        MouseDown = false,
        Hovering = false,
        WaitingForConfirm = false,
        Hiding = false,
        ConfirmationTime = 0,
        ConfirmationConnection = nil,
    }
    --
    local PreviewButton = Library:CreateObject("Frame", {
        Name = "PreviewButton",
        BackgroundTransparency = 1,
        Size = Options.Size,
        Position = Options.Position,
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = Options.Parent
    })
    --
    local ButtonOutline = Library:CreateObject("Frame", {
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "ButtonOutline",
        Position = NewUDim2(0, -1, 0, 0),
        Size = NewUDim2(1, -19, 0, 25),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(12, 12, 12),
        Parent = PreviewButton
    })
    --
    local ButtonInline = Library:CreateObject("Frame", {
        Size = NewUDim2(1, -2, 1, -2),
        Name = "ButtonInline",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(50, 50, 50),
        Parent = ButtonOutline
    })
    --
    local ButtonMain_1 = Library:CreateObject("Frame", {
        Size = NewUDim2(1, -2, 1, -2),
        Name = "ButtonMain_1",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        ZIndex = 3,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(220, 220, 220),
        Parent = ButtonInline
    })
    --
    local UIGradient_4 = Library:CreateObject("UIGradient", {
        Rotation = 90,
        Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, NewRGB(39, 39, 39)),
            ColorSequenceKeypoint.new(1, NewRGB(35, 35, 35))
        },
        Parent = ButtonMain_1
    })
    --
    local Button_6 = Library:CreateObject("TextButton", {
        FontFace = Library.UI.NewFont,
        TextColor3 = Options.Risky and Library.Theme.Default.Risky or Library.Theme.Default.TextColor,
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "Button_6",
        RichText = true,
        Text = "<b>" .. Options.Name .. "</b>",
        BackgroundTransparency = 1,
        BorderSizePixel = 0,
        Size = NewUDim2(1, 0, 1, 0),
        ZIndex = 3,
        TextSize = Library.UI.FontSize,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = ButtonOutline
    })
    --
    if Options.Risky then
        Library:AddTheme(Button_6, {
            TextColor3 = "Risky",
        })
    end
    --
    local UIPadding_8 = Library:CreateObject("UIPadding", {
        PaddingLeft = NewUDim(0, 20),
        Parent = PreviewButton
    })
    --
    do -- Functions
        function Button:UpdateSize(Size)
            ButtonOutline.Size = Size
        end
        --
        function Button:UpdatePosition(Position)
            PreviewButton.Position = Position
        end
        --
        function Button:SetVisible(Bool)
            if SetThreadIdentity then
                pcall(SetThreadIdentity, 8)
            end
            local OldValues = Library.Objects[PreviewButton]
            --
            Button.Hiding = not Bool
            --
            if Bool then
                Library.Objects[PreviewButton] = {PreviewButton, OldValues[2], true}
            end
            --
            Library:Fade(Bool, Library:GetObjectsTable(PreviewButton), PreviewButton, 0.075)
            Library:TweenObject(PreviewButton, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = Bool and Options.Size or NewUDim2(1, 0, 0, -10)}, function()
                if not Bool then
                    Library.Objects[PreviewButton] = {PreviewButton, OldValues[2], false}
                end
            end)
        end
        --
        function Button:ConfirmationStart()
            Button.MouseDown = true
            Button.WaitingForConfirm = true
            Button.ConfirmationTime = 3
            Button_6.Text = "<b>Are you sure?</b>"
            --
            if Button.ConfirmationConnection then
                coroutine.close(Button.ConfirmationConnection)
                Button.ConfirmationConnection = nil
            end
            --
            Button.ConfirmationConnection = coroutine.create(function()
                for i = 1, 3 do 
                    Wait(1)
                    --
                    Button.ConfirmationTime = Button.ConfirmationTime - 1
                    --
                    if Button.ConfirmationTime <= 0 then
                        Button_6.Text = "<b>" .. Options.Name .. "</b>"
                        --
                        if Button.MouseDown then
                            Library:TweenObject(Button_6, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextColor3 = Library.Theme.Default.TextColor})
                            --
                            Button.MouseDown = false
                            Button.WaitingForConfirm = false
                        end
                        --
                        break
                    end
                end
            end)
            --
            coroutine.resume(Button.ConfirmationConnection)
        end
    end
    --
    do -- Connections
        Library:Connection(Button_6.MouseButton1Down, function()
            if Library.UI.Faded then return end
            --
            if Button.Hiding then return end
            --
            Library:TweenObject(ButtonMain_1, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundColor3 = NewRGB(180, 180, 180)})
            --
            if Options.Confirmation then
                if not Button.WaitingForConfirm then
                    Button:ConfirmationStart()
                else
                    if Button.ConfirmationConnection then
                        coroutine.close(Button.ConfirmationConnection)
                        Button.ConfirmationConnection = nil
                    end
                    --
                    Library:Protect(Options.Name, Options.Callback)
                    Button.MouseDown = true
                    Button.Hovering = false
                    Button.WaitingForConfirm = false
                    --
                    Library:TweenObject(ButtonMain_1, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundColor3 = NewRGB(180, 180, 180)})
                    --
                    Button_6.Text = "<b>" .. Options.Name .. "</b>"
                end
            else
                Library:Protect(Options.Name, Options.Callback)
                Button.MouseDown = true
            end
        end)
        --
        Library:Connection(UserInputService.InputEnded, function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 and Button.MouseDown and not Button.WaitingForConfirm then
                Button.Hovering = false
                Button.MouseDown = false
            end
            --
            Library:TweenObject(ButtonMain_1, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundColor3 = NewRGB(220, 220, 220)})
        end)
        --
        Library:Connection(ButtonOutline.MouseEnter, function()
            if Library.UI.Faded then return end
            --
            if not Button.MouseDown then
                Button.Hovering = true
                Library:TweenObject(ButtonMain_1, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundColor3 = NewRGB(255, 255, 255)})
            end	
        end)
        --
        Library:Connection(ButtonOutline.MouseLeave, function()
            if Library.UI.Faded then return end
            --
            if not Button.MouseDown then
                Button.Hovering = false
                Library:TweenObject(ButtonMain_1, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundColor3 = NewRGB(220, 220, 220)})
            end	
        end)
    end
    --
    if Options.Hidden then
        Button:SetVisible(false)
    end
    --
    return Button
end
--
function Library:Window(Options)
    Options = Library:Validate({
        Name = cheatname,
        Size = NewUDim2(0, 700, 0, 612),
        MinResize = NewUDim2(0, 500, 0, 400),
        MaxResize = NewUDim2(0, 10000, 0, 10000),
        CloseBind = Enum.KeyCode.Insert,
    }, Options or {})
    --
    local Window = {
        Visible = true,
        CurrentTab = nil,
        Tabs = {},
    }
    --
    local MainUI = Library:CreateObject("ScreenGui", {
        ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets,
        DisplayOrder = 1000,
        ResetOnSpawn = false,
        IgnoreGuiInset = true,
        Name = "\0",
        Parent = gethui()
    })
    --
    Library.UI.ScreenGUI = MainUI
    --
    local Outline = Library:CreateObject("Frame", {
        Name = "Outline",
        Position = NewUDim2(0.5, 0, 0.5, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        Size = Options.Size,
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(12, 12, 12),
        Parent = MainUI
    })
    --
    Outline:SetAttribute("g", Window.CurrentTab)
    Library.UI.MainUI = Outline
    --
    Outline.Position = UDim2.fromOffset((Viewport.X / 2) - (Outline.Size.X.Offset / 2), (Viewport.Y / 2) - (Outline.Size.Y.Offset / 2))
    Outline.Active = true
    Outline.Draggable = true
    --
    local Inline = Library:CreateObject("Frame", {
        Name = "Inline",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        Size = NewUDim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(60, 60, 60),
        Parent = Outline
    })
    --
    local Inner = Library:CreateObject("Frame", {
        Name = "Inner",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        Size = NewUDim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(40, 40, 40),
        Parent = Inline
    })
    --
    local Outline_1 = Library:CreateObject("Frame", {
        Name = "Outline_1",
        Position = NewUDim2(0, 3, 0, 3),
        BorderColor3 = NewRGB(0, 0, 0),
        Size = NewUDim2(1, -6, 1, -6),
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(60, 60, 60),
        Parent = Inner
    })
    --
    local PatternHolder = Library:CreateObject("Frame", {
        Name = "PatternHolder",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        Size = NewUDim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(20, 20, 20),
        Parent = Outline_1
    })
    --
    local Pattern = Library:CreateObject("ImageLabel", {
        ImageColor3 = NewRGB(12, 12, 12),
        ScaleType = Enum.ScaleType.Tile,
        BorderColor3 = NewRGB(0, 0, 0),
        Image = "rbxassetid://8547666218",
        BackgroundTransparency = 1,
        Name = "Pattern",
        Size = NewUDim2(1, 0, 1, 0),
        TileSize = NewUDim2(0, 8, 0, 8),
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = PatternHolder
    })
    --
    local TopBarGradientHolder = Library:CreateObject("Frame", {
        Name = "TopBarGradientHolder",
        Position = NewUDim2(0, 1, 0, 1),
        BorderColor3 = NewRGB(0, 0, 0),
        Size = NewUDim2(1, -2, 0, 4),
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = Outline_1
    })
    --
    local GradientBar = Library:CreateObject("ImageLabel", {
        BorderColor3 = NewRGB(0, 0, 0),
        Image = "rbxassetid://8508019876",
        BackgroundTransparency = 1,
        Position = NewUDim2(0, 1, 0, 1),
        Name = "GradientBar",
        Size = NewUDim2(1, -2, 1, -2),
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = TopBarGradientHolder
    })
    --
    local UIGradient = Library:CreateObject("UIGradient", {
        Rotation = 90,
        Transparency = NumberSequence.new{
            NewNumberKeypoint(0, 0),
            NewNumberKeypoint(1, 0.550000011920929)
        },
        Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, NewRGB(12, 12, 12)),
            ColorSequenceKeypoint.new(1, NewRGB(0, 0, 0))
        },
        Parent = TopBarGradientHolder
    })
    --
    local SideBarMain = Library:CreateObject("Frame", {
        Name = "SideBarMain",
        Position = NewUDim2(0, 1, 0, 5),
        BorderColor3 = NewRGB(0, 0, 0),
        Size = NewUDim2(0, 75, 1, -6),
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(12, 12, 12),
        ClipsDescendants = true,
        Parent = Outline_1
    })
    --
    local Outline_2 = Library:CreateObject("Frame", {
        AnchorPoint = NewVector2(1, 0),
        Name = "Outline_2",
        Position = NewUDim2(1, 0, 0, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        Size = NewUDim2(0, 1, 1, 0),
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(40, 40, 40),
        Parent = SideBarMain
    })
    --
    local Holder = Library:CreateObject("Frame", {
        BackgroundTransparency = 1,
        Name = "Holder",
        BorderColor3 = NewRGB(0, 0, 0),
        Size = NewUDim2(1, 0, 1, 0),
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = SideBarMain
    })
    --
    local UIListLayout = Library:CreateObject("UIListLayout", {
        Padding = NewUDim(0, 0),
        SortOrder = Enum.SortOrder.LayoutOrder,
        Parent = Holder
    })
    --
    local UIPadding = Library:CreateObject("UIPadding", {
        PaddingTop = NewUDim(0, 10),
        Parent = Holder
    })
    --
    local Inline_4 = Library:CreateObject("Frame", {
        AnchorPoint = NewVector2(1, 0),
        Name = "Inline_4",
        Position = NewUDim2(1, -1, 0, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        Size = NewUDim2(0, 1, 1, 0),
        BorderSizePixel = 0,
        BackgroundColor3 = NewRGB(0, 0, 0),
        Parent = SideBarMain
    })
    --
    local ResizeButton = Library:CreateObject("TextButton", {
        FontFace = Library.UI.NewFont,
        TextColor3 = NewRGB(0, 0, 0),
        BorderColor3 = NewRGB(0, 0, 0),
        Name = "Button",
        AnchorPoint = NewVector2(1, 1),
        Size = NewUDim2(0, 20, 0, 20),
        BackgroundTransparency = 1,
        Position = NewUDim2(1, 0, 1, 0),
        BorderSizePixel = 0,
        TextTransparency = 1,
        TextSize = Library.UI.FontSize,
        ZIndex = 5,
        BackgroundColor3 = NewRGB(255, 255, 255),
        Parent = Outline
    })
    --
    do -- Functions
        function Window:SetTab(Number)
            for Index, Tab in Window.Tabs do
                if Index == Number then
                    if Window.CurrentTab ~= nil then
                        Window.CurrentTab:Deactivate()
                    end
                    --
                    Tab:Activate()
                end
            end
        end
    end
    --
    do -- Connections
        Library:Connection(UserInputService.InputBegan, function(Input)
            if Library:Typing() then return end
            --
            if Input.KeyCode == Library.UI.CloseBind then
                Window.Visible = not Window.Visible
                --
                Library:Fade(Window.Visible, Library.Objects, Outline, 0.2)
            end
        end)
        --
        local InputState
        --
        Library:Connection(RunService.PreRender, function()
            if Outline.Visible and not Library.UI.Faded then
                if not InputState then
                    InputState = {
                        Behavior = UserInputService.MouseBehavior,
                        Icon = UserInputService.MouseIconEnabled
                    }
                end
                --
                if UserInputService.MouseBehavior ~= Enum.MouseBehavior.Default then
                    UserInputService.MouseBehavior = Enum.MouseBehavior.Default
                end
                --
                if not Library.UI.Resizing and not UserInputService.MouseIconEnabled then
                    UserInputService.MouseIconEnabled = true
                end
            elseif InputState then
                UserInputService.MouseBehavior = InputState.Behavior
                UserInputService.MouseIconEnabled = InputState.Icon
                --
                InputState = nil
            end
        end, "Window Cursor")
        --
        Restores[#Restores + 1] = function()
            if not InputState then return end
            --
            UserInputService.MouseBehavior = InputState.Behavior
            UserInputService.MouseIconEnabled = InputState.Icon
            --
            InputState = nil
        end
        --
        Library:Resizable(Outline, ResizeButton, Options.MinResize, Options.MaxResize)
    end
    --
    function Window:CreateTab(Options)
        Options = Library:Validate({
            Icon = "rbxassetid://8547236654",
        }, Options or {})
        --
        local Tab = {
            Hovering = false,
            Active = false,
            Index = Library.UI.TabIndex + 1,
            SubSectionEnabled = false,
            DropdownSectionEnabled = false,
            Position = "Bottom",
            Sides = {
                Left = {
                    Sections = {},
                    Sizes = 0,
                },
                Right = {
                    Sections = {},
                    Sizes = 0,
                }
            }
        }
        --
        Library.UI.TabIndex = Tab.Index
        --
        local TabActive = Library:CreateObject("Frame", {
            BackgroundTransparency = 1,
            Name = "TabActive",
            BorderColor3 = NewRGB(0, 0, 0),
            Size = NewUDim2(1, -2, 0, 64),
            BorderSizePixel = 0,
            BackgroundColor3 = NewRGB(255, 255, 255),
            Parent = Holder
        })
        --
        local Outline_3 = Library:CreateObject("Frame", {
            Name = "Outline_3",
            Size = NewUDim2(1, 0, 1, 0),
            BorderColor3 = NewRGB(0, 0, 0),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = NewRGB(0, 0, 0),
            Visible = false,
            Parent = TabActive
        })
        --
        local Inline_1 = Library:CreateObject("Frame", {
            Size = NewUDim2(1, 1, 1, -2),
            Name = "Inline_1",
            Position = NewUDim2(0, 0, 0, 1),
            BorderColor3 = NewRGB(0, 0, 0),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = NewRGB(40, 40, 40),
            Parent = Outline_3
        })
        --
        local Main = Library:CreateObject("Frame", {
            Size = NewUDim2(1, 1, 1, -2),
            Name = "Main",
            Position = NewUDim2(0, 0, 0, 1),
            BorderColor3 = NewRGB(0, 0, 0),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = NewRGB(20, 20, 20),
            Parent = Inline_1
        })
        --
        local Pattern_1 = Library:CreateObject("ImageLabel", {
            ImageColor3 = NewRGB(12, 12, 12),
            ScaleType = Enum.ScaleType.Tile,
            BorderColor3 = NewRGB(0, 0, 0),
            Name = "Pattern_1",
            Image = "rbxassetid://8547666218",
            BackgroundTransparency = 1,
            TileSize = NewUDim2(0, 8, 0, 8),
            Size = NewUDim2(1, 0, 1, 0),
            ZIndex = 2,
            BorderSizePixel = 0,
            BackgroundColor3 = NewRGB(0, 0, 0),
            Parent = Main
        })
        --
        local Button = Library:CreateObject("TextButton", {
            FontFace = NewFont("rbxasset://fonts/families/Zekton.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal),
            BorderColor3 = NewRGB(0, 0, 0),
            Name = "Button",
            Text = Options.Icon,
            BackgroundTransparency = 1,
            Size = NewUDim2(1, 0, 1, 0),
            TextColor3 = NewRGB(90, 90, 90),
            BorderSizePixel = 0,
            TextTransparency = 1,
            TextSize = Library.UI.FontSize,
            BackgroundColor3 = NewRGB(255, 255, 255),
            Parent = TabActive
        })
        --
        local Icon = Library:CreateObject("ImageLabel", {
            BorderColor3 = NewRGB(0, 0, 0),
            Name = "Button",
            Image = Options.Icon,
            BackgroundTransparency = 1,
            Size = NewUDim2(1, 0, 1, 0),
            ImageColor3 = NewRGB(109, 109, 109),
            BorderSizePixel = 0,
            ZIndex = 3,
            BackgroundColor3 = NewRGB(255, 255, 255),
            Parent = TabActive
        })
        --
        local SectionsHolder = Library:CreateObject("Frame", {
            Name = "SectionsHolder",
            BackgroundTransparency = 1,
            Visible = true,
            Position = NewUDim2(0, 76, 0, 5),
            BorderColor3 = NewRGB(0, 0, 0),
            Size = NewUDim2(1, -78, 1, -6),
            BorderSizePixel = 0,
            BackgroundColor3 = NewRGB(255, 255, 255),
            ClipsDescendants = true,
            Parent = Outline_1
        })
        --
        local Left = Library:CreateObject("Frame", {
            BackgroundTransparency = 1,
            Name = "Left",
            BorderColor3 = NewRGB(0, 0, 0),
            Size = NewUDim2(0.5, 0, 1, 0),
            Position = NewUDim2(0, 1, 0, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = NewRGB(255, 255, 255),
            ClipsDescendants = true,
            Parent = SectionsHolder
        })
        --
        local UIPadding_1 = Library:CreateObject("UIPadding", {
            PaddingTop = NewUDim(0, 19),
            PaddingBottom = NewUDim(0, 19),
            PaddingRight = NewUDim(0, 8),
            PaddingLeft = NewUDim(0, 21),
            Parent = Left
        })
        --
        local UIListLayout12 = Library:CreateObject("UIListLayout", {
            Padding = NewUDim(0, 19),
            SortOrder = Enum.SortOrder.LayoutOrder,
            Parent = Left
        })
        --
        local Right = Library:CreateObject("Frame", {
            Name = "Right",
            BackgroundTransparency = 1,
            Position = NewUDim2(0.5, 1, 0, 0),
            BorderColor3 = NewRGB(0, 0, 0),
            Size = NewUDim2(0.5, 0, 1, 0),
            BorderSizePixel = 0,
            BackgroundColor3 = NewRGB(255, 255, 255),
            ClipsDescendants = true,
            Parent = SectionsHolder
        })
        --
        local UIPadding_2 = Library:CreateObject("UIPadding", {
            PaddingTop = NewUDim(0, 19),
            PaddingBottom = NewUDim(0, 19),
            PaddingRight = NewUDim(0, 19),
            PaddingLeft = NewUDim(0, 10),
            Parent = Right
        })
        --
        local UIListLayout52 = Library:CreateObject("UIListLayout", {
            Padding = NewUDim(0, 19),
            SortOrder = Enum.SortOrder.LayoutOrder,
            Parent = Right
        })
        --
        local SectionsHolder2 = Library:CreateObject("Frame", {
            Name = "SectionsHolder",
            BackgroundTransparency = 1,
            Visible = true,
            Position = NewUDim2(0, 76, 0, 5),
            BorderColor3 = NewRGB(0, 0, 0),
            Size = NewUDim2(1, -78, 1, -6),
            BorderSizePixel = 0,
            BackgroundColor3 = NewRGB(255, 255, 255),
            ClipsDescendants = true,
            Parent = Outline_1
        })
        --
        local SubSectionHolder = Library:CreateObject("Frame", {
            Name = "SubSectionHolder",
            BorderColor3 = NewRGB(0, 0, 0),
            Size = NewUDim2(1, -39, 0, 61),
            BorderSizePixel = 0,
            ZIndex = 1,
            Visible = false,
            BackgroundColor3 = NewRGB(12, 12, 12),
            Parent = SectionsHolder2
        })
        --
        Left.Position = NewUDim2(0, 0, 0, Left.AbsoluteSize.Y)
        Right.Position = NewUDim2(0.5, 1, 0, Right.AbsoluteSize.Y)
        SubSectionHolder.Position = NewUDim2(0, 21, 0, SectionsHolder2.AbsoluteSize.Y + SubSectionHolder.AbsoluteSize.Y)
        --
        do -- Functions
            function Tab:MoveSides(State)
                Spawn(function()
                    if State then
                        if Tab.Position == "Bottom" then
                            Left.Position = NewUDim2(0, 0, 0, Left.AbsoluteSize.Y)
                            Right.Position = NewUDim2(0.5, 1, 0, Right.AbsoluteSize.Y)
                            SubSectionHolder.Position = NewUDim2(0, 21, 0, SectionsHolder2.AbsoluteSize.Y + SubSectionHolder.AbsoluteSize.Y)
                        else
                            Left.Position = NewUDim2(0, 0, 0, -Left.AbsoluteSize.Y)
                            Right.Position = NewUDim2(0.5, 1, 0, -Right.AbsoluteSize.Y)
                            SubSectionHolder.Position = NewUDim2(0, 21, 0, -(SectionsHolder2.AbsoluteSize.Y + SubSectionHolder.AbsoluteSize.Y))
                        end
                        --
                        Library:TweenObject(SubSectionHolder, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = NewUDim2(0, 21, 0, 19)})
                        Library:TweenObject(Left, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = NewUDim2(0, 0, 0, 0)})
                        Library:TweenObject(Right, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = NewUDim2(0.5, 1, 0, 0)})
                    else
                        Wait(0.001)
                        --
                        local SubSectionPosition = Tab.Position == "Bottom" and SectionsHolder2.AbsoluteSize.Y + 10 or -SectionsHolder2.AbsoluteSize.Y
                        local LeftPosition = Tab.Position == "Bottom" and Left.AbsoluteSize.Y + 10 or -Left.AbsoluteSize.Y
                        local RightPosition = Tab.Position == "Bottom" and Right.AbsoluteSize.Y + 10 or -Right.AbsoluteSize.Y
                        --
                        Library:TweenObject(SubSectionHolder, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = NewUDim2(0, 21, 0, SubSectionPosition)})
                        Library:TweenObject(Left, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = NewUDim2(0, 0, 0, LeftPosition)})
                        Library:TweenObject(Right, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = NewUDim2(0.5, 1, 0, RightPosition)})
                    end
                end)
            end
            --
            function Tab:Activate()
                if not Tab.Active then
                    --
                    if Window.CurrentTab ~= nil then
                        Window.CurrentTab:Deactivate()
                    end
                    --
                    Tab.Active = true
                    Tab:MoveSides(true)
                    --
                    Library:TweenObject(Icon, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {ImageColor3 = NewRGB(210, 210, 210)})
                    Outline_3.Visible = true
                    --
                    Window.CurrentTab = Tab
                    Outline:SetAttribute("g", Find(Window.Tabs, Tab))
                end
            end
            --
            function Tab:Deactivate()
                if Tab.Active then
                    Tab.Active = false
                    Tab.Hovering = false
                    Outline_3.Visible = false
                    Library:TweenObject(Icon, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {ImageColor3 = NewRGB(90, 90, 90)})
                    --
                    Tab:MoveSides(false)
                end
            end
        end
        --
        do -- Connections
            Library:Connection(Outline:GetAttributeChangedSignal("g"), function()
                if Outline:GetAttribute("g") > Tab.Index then
                    Tab.Position = "Top"
                elseif Outline:GetAttribute("g") < Tab.Index then
                    Tab.Position = "Bottom"
                end
            end)
            --
            Library:Connection(Outline:GetPropertyChangedSignal("AbsoluteSize"), function()
                if not Tab.Active then
                    SubSectionHolder.Position = NewUDim2(0, 21, 0, SectionsHolder2.AbsoluteSize.Y + SubSectionHolder.AbsoluteSize.Y)
                    Left.Position = NewUDim2(0, 0, 0, Left.AbsoluteSize.Y)
                    Right.Position = NewUDim2(0.5, 0, 0, Right.AbsoluteSize.Y)
                else
                    Left.Position = NewUDim2(0, 0, 0, 0)
                    Right.Position = NewUDim2(0.5, 0, 0, 0)
                end
            end)
            --
            Library:Connection(Button.MouseButton1Click, function()
                Tab:Activate()
            end)
            --
            Library:Connection(TabActive.MouseEnter, function()
                if not Tab.Active then
                    Tab.Hovering = true
                    Library:TweenObject(Icon, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {ImageColor3 = NewRGB(168, 168, 168)})
                end
            end)
            --
            Library:Connection(TabActive.MouseLeave, function()
                if not Tab.Active then
                    Tab.Hovering = false
                    Library:TweenObject(Icon, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {ImageColor3 = NewRGB(90, 90, 90)})
                end
            end)
        end
        --
        Window.Tabs[#Window.Tabs + 1] = Tab
        --
        function Tab:Section(Options)
            Options = Library:Validate({
                Name = "Preview Section",
                Side = "Left",
                Fill = false,
                Size = 40,
                ParentOptions = {},
                Icon = nil,
                Parent = nil,
            }, Options or {})
            --
            local Section = {
                Tab = Tab,
                Side = Options.Side,
                Elements = {},
                SizeButton = nil,
                Hovering = false,
                DragConnection = nil,
                Left = {
                    Order = 1,
                },
                Right = {
                    Order = 1,
                },
            }
            --
            local Parent = Options.Side == "Left" and Left or Right
            --
            local SectionOutline = Library:CreateObject("Frame", {
                Name = "SectionOutline",
                BorderColor3 = NewRGB(0, 0, 0),
                Size = NewUDim2(1, 0, 0, Options.Size),
                AutomaticSize = Enum.AutomaticSize.None,
                BorderSizePixel = 0,
                ZIndex = 1,
                BackgroundColor3 = NewRGB(12, 12, 12),
                Parent = Options.Parent or Parent
            })
            --
            if not Options.Parent then
                Insert(Tab.Sides[Options.Side].Sections, SectionOutline)
            end
            --
            if Options.Fill then
                SectionOutline:SetAttribute("Fill", true)
            end
            --
            if not Options.Parent then Delay(0.01, function()
                if Options.Fill == false then
                    Tab.Sides[Options.Side].Sizes += SectionOutline.AbsoluteSize.Y + 19
                end
                --
                if Options.Fill then
                    SectionOutline.Size = Library:FillSize(SectionOutline)
                else
                    SectionOutline.Size = NewUDim2(1, 0, 0, Options.Size)
                end
            end) end
            --
            local SectionInline = Library:CreateObject("Frame", {
                Name = "SectionInline",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                Size = NewUDim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(40, 40, 40),
                Parent = SectionOutline
            })
            --
            local SectionScrolling = Library:CreateObject("ScrollingFrame", {
                ScrollBarImageColor3 = NewRGB(65, 65, 65),
                MidImage = "rbxassetid://158362264",
                Active = true,
                BorderColor3 = NewRGB(0, 0, 0),
                ScrollBarThickness = 5,
                Size = NewUDim2(1, -2, 1, -2),
                TopImage = "rbxassetid://158362264",
                Position = NewUDim2(0, 1, 0, 1),
                CanvasSize = NewUDim2(0, 0, 0, 0),
                CanvasPosition = NewVector2(0, 0),
                BottomImage = "rbxassetid://158362264",
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(40, 40, 40),
                AutomaticCanvasSize = Enum.AutomaticSize.Y,
                Parent = SectionInline
            })
            --
            local UIListLayout_3 = Library:CreateObject("UIListLayout", {
                Padding = NewUDim(0, 10),
                SortOrder = Enum.SortOrder.LayoutOrder,
                Parent = SectionScrolling
            })
            --
            local UIPadding_8 = Library:CreateObject("UIPadding", {
                PaddingTop = NewUDim(0, 19),
                PaddingBottom = NewUDim(0, 10),
                PaddingRight = NewUDim(0, 18),
                PaddingLeft = NewUDim(0, 18),
                Parent = SectionScrolling
            })
            --
            local SectionMain = Library:CreateObject("Frame", {
                Size = NewUDim2(1, -2, 1, -2),
                Name = "SectionMain_1",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 1,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(23, 23, 23),
                Parent = SectionInline
            })
            --
            local SectionFader = Library:CreateObject("Frame", {
                Size = NewUDim2(1, 0, 0, 20),
                AnchorPoint = NewVector2(0, 1),
                Name = "SectionFader",
                Position = NewUDim2(0, 0, 1, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 3,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(23, 23, 23),
                Parent = SectionMain
            })
            --
            local DownArrow = Library:CreateObject("ImageButton", {
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "DownArrow",
                Image = "rbxassetid://15540867448",
                BackgroundTransparency = 1,
                Position = NewUDim2(1, -10, 1, -9),
                Size = NewUDim2(0, 5, 0, 4),
                ZIndex = 4,
                BorderSizePixel = 0,
                Visible = false,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = SectionMain
            })
            --
            local UpArrow = Library:CreateObject("ImageButton", {
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "UpArrow",
                Image = "rbxassetid://15540851994",
                BackgroundTransparency = 1,
                Position = NewUDim2(1, -10, 0, 5),
                Size = NewUDim2(0, 5, 0, 4),
                ZIndex = 4,
                BorderSizePixel = 0,
                Visible = false,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = SectionMain
            })
            --
            local UIGradient = Library:CreateObject("UIGradient", {
                Rotation = -90,
                Transparency = NumberSequence.new{
                    NewNumberKeypoint(0, 0),
                    NewNumberKeypoint(1, 1)
                },
                Parent = SectionFader
            })
            --
            local SectionFader2 = Library:CreateObject("Frame", {
                Size = NewUDim2(1, 0, 0, 20),
                Name = "SectionFader",
                Position = NewUDim2(0, 0, 0, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 3,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(23, 23, 23),
                Parent = SectionMain
            })
            --
            local UIGradient = Library:CreateObject("UIGradient", {
                Rotation = 90,
                Transparency = NumberSequence.new{
                    NewNumberKeypoint(0, 0),
                    NewNumberKeypoint(1, 1)
                },
                Parent = SectionFader2
            })
            --
            local TitleInline = Library:CreateObject("Frame", {
                BackgroundColor3 = NewRGB(255, 255, 255),
                BackgroundTransparency = 0,
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "TitleInline",
                BorderSizePixel = 0,
                Parent = SectionOutline,
                Position = NewUDim2(0, 9, 0, 0),
                Size = NewUDim2(0, 0, 0, 2),
                ZIndex = 5
            })
            --
            local UIGradient2 = Library:CreateObject("UIGradient", {
                Rotation = 90,
                Color = ColorSequence.new{
                    ColorSequenceKeypoint.new(0, NewRGB(19, 19, 19)),
                    ColorSequenceKeypoint.new(1, NewRGB(24, 24, 24))
                },
                Parent = TitleInline
            })
            --
            local Title = Library:CreateObject("TextButton", {
                AnchorPoint = NewVector2(0, 0.5),
                BackgroundColor3 = NewRGB(0, 0, 0),
                BackgroundTransparency = 1,
                BorderColor3 = NewRGB(0, 0, 0),
                BorderSizePixel = 0,
                Parent = SectionOutline,
                Position = NewUDim2(0, 12, 0, 0),
                Size = NewUDim2(1, -26, 0, 15),
                ZIndex = 5,
                FontFace = Library.UI.NewFont,
                RichText = true,
                Text = "<b>" .. Options.Name .. "</b>",
                TextColor3 = NewRGB(198, 198, 198),
                TextSize = Library.UI.FontSize,
                TextStrokeTransparency = 1,
                TextXAlignment = "Left"
            })
            --
            local ResizableButton_6 = Library:CreateObject("ImageButton", {
                ImageColor3 = NewRGB(40, 40, 40),
                BorderColor3 = NewRGB(0, 0, 0),
                AnchorPoint = NewVector2(1, 1),
                Image = "http://www.roblox.com/asset/?id=127012144286347",
                BackgroundTransparency = 1,
                Position = NewUDim2(1, -2, 1, -2),
                Name = "ResizableButton_6",
                Size = NewUDim2(0, 6, 0, 6),
                BorderSizePixel = 0,
                ZIndex = 5,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = SectionOutline
            })
            --
            Section.Elements = {
                Name = Title,
                ContentHolder = SectionScrolling,
                Outline = SectionOutline,
            }
            --
            Title.Size = UDim2.fromOffset(Title.TextBounds.X, 15)
            TitleInline.Size = NewUDim2(0, Title.TextBounds.X + 6, 0, 2)
            --
            do -- Functions
                function Section:SetVisible(State)
                    if SetThreadIdentity then
                        pcall(SetThreadIdentity, 8)
                    end
                    SectionOutline.Visible = State
                end

                function Section:UpdateSection()
                    local CanvasSizeFloored = Floor(SectionScrolling.AbsoluteCanvasSize.Y)
                    local AbsoluteSizeFloored = Floor(SectionMain.AbsoluteSize.Y)
                    --
                    if CanvasSizeFloored > AbsoluteSizeFloored then
                        SectionMain.Size = NewUDim2(1, -8, 1, -2)
                        UpArrow.Visible = not Section:CheckArrows("Up")
                        DownArrow.Visible = not Section:CheckArrows("Down")
                    elseif CanvasSizeFloored == AbsoluteSizeFloored then
                        SectionMain.Size = NewUDim2(1, -2, 1, -2)
                        UpArrow.Visible = false
                        DownArrow.Visible = false
                    end
                end
                --
                function Section:CheckArrows(Type)
                    if Type == "Up" then
                        return SectionScrolling.CanvasPosition == NewVector2(0, 0)
                    elseif Type == "Down" then
                        return SectionScrolling.CanvasPosition == NewVector2(0, SectionScrolling.AbsoluteCanvasSize.Y - SectionScrolling.AbsoluteSize.Y)
                    else
                        return false
                    end
                end
                --
                function Section:CalculateHeight(Section, Container)
                    local Padding = 10
                    local Height = 0
                    --
                    for Index, Child in Container:GetChildren() do
                        if Child:IsA("GuiObject") and Child.Visible then
                            Height = Height + Child.AbsoluteSize.Y + Padding
                        end
                    end
                    --
                    Section:SetAttribute("Fill", false)
                    Section.Size = NewUDim2(Section.Size.X.Scale, Section.Size.X.Offset, 0, Clamp(Height + 31, 50, SectionOutline.Parent.AbsoluteSize.Y))
                end
                --
                function Section:CalculateButton(Position)
                    if Section.SizeButton then return end
                    --
                    local ButtonOutline = Library:CreateObject("Frame", {
                        Name = "SectionOutline",
                        BorderColor3 = NewRGB(0, 0, 0),
                        Size = NewUDim2(0, 30, 0, 25),
                        BorderSizePixel = 0,
                        Position = Position,
                        ZIndex = 5,
                        BackgroundColor3 = NewRGB(12, 12, 12),
                        Parent = Library.UI.ScreenGUI
                    })
                    --
                    local ButtonMain = Library:CreateObject("Frame", {
                        Size = NewUDim2(1, -2, 1, -2),
                        Name = "SectionMain_1",
                        Position = NewUDim2(0, 1, 0, 1),
                        BorderColor3 = NewRGB(0, 0, 0),
                        ZIndex = 5,
                        BorderSizePixel = 0,
                        BackgroundColor3 = NewRGB(35, 35, 35),
                        Parent = ButtonOutline
                    })
                    --
                    local ButtonText = Library:CreateObject("TextLabel", {
                        AnchorPoint = NewVector2(0, 0.5),
                        BackgroundColor3 = NewRGB(0, 0, 0),
                        BackgroundTransparency = 1,
                        BorderColor3 = NewRGB(0, 0, 0),
                        BorderSizePixel = 0,
                        Parent = ButtonOutline,
                        Position = NewUDim2(0, 0, 0.5, -1),
                        Size = NewUDim2(1, 0, 1, 0),
                        ZIndex = 5,
                        FontFace = Library.UI.NewFont,
                        RichText = true,
                        Text = "Calculate height",
                        TextColor3 = NewRGB(198, 198, 198),
                        TextSize = Library.UI.FontSize,
                        TextStrokeTransparency = 1,
                        TextXAlignment = "Left"
                    })
                    --
                    local UIPadding_82 = Library:CreateObject("UIPadding", {
                        PaddingLeft = NewUDim(0, 8),
                        Parent = ButtonText
                    })
                    --
                    local Button_945 = Library:CreateObject("TextButton", {
                        FontFace = Library.UI.NewFont,
                        TextColor3 = NewRGB(0, 0, 0),
                        BorderColor3 = NewRGB(0, 0, 0),
                        Name = "Button_9",
                        BackgroundTransparency = 1,
                        ZIndex = 5,
                        Size = NewUDim2(1, 0, 1, 0),
                        BorderSizePixel = 0,
                        TextTransparency = 1,
                        TextSize = Library.UI.FontSize,
                        BackgroundColor3 = NewRGB(255, 255, 255),
                        Parent = ButtonOutline
                    })
                    --
                    Section.SizeButton = ButtonOutline
                    ButtonOutline.Size = UDim2.fromOffset(ButtonText.TextBounds.X + 16, 25)
                    ButtonOutline.BackgroundTransparency = 1
                    ButtonMain.BackgroundTransparency = 1
                    ButtonText.TextTransparency = 1
                    Button_945.TextTransparency = 1
                    --
                    do -- Connections
                        Library:Connection(Button_945.MouseEnter, function()
                            Section.Hovering = true
                        end)
                        --
                        Library:Connection(Button_945.MouseLeave, function()
                            Section.Hovering = false
                        end)
                        --
                        Library:Connection(Button_945.MouseButton1Click, function()
                            Section:CalculateHeight(SectionOutline, SectionScrolling)
                            Library:Fade(false, Library:GetObjectsTable(ButtonOutline, true), ButtonOutline, 0.1)
                            --
                            Delay(Library.UI.TweenSpeed, function()
                                for Index, Value in ButtonOutline:GetDescendants() do
                                    Value:Destroy()
                                end
                                --
                                ButtonOutline:Destroy()
                                Section.SizeButton = nil
                            end)
                        end)
                    end
                    --
                    Library:Fade(true, Library:GetObjectsTable(ButtonOutline, true), ButtonOutline, 0.1)
                end
            end
            --
            do -- Connections
                Library:Connection(SectionScrolling.ChildAdded, function()
                    Section:UpdateSection()
                end)
                --
                Library:Connection(SectionScrolling.ChildRemoved, function()
                    Section:UpdateSection()
                end)
                --
                Library:Connection(SectionOutline:GetPropertyChangedSignal("AbsoluteSize"), function()
                    Section:UpdateSection()
                end)
                --
                Library:Connection(RunService.PreRender, function() -- fastest option
                    if Library.UI.Faded then return end
                    --
                    local SectionParent = SectionOutline.Parent
                    --
                    if not SectionParent or not SectionParent.Visible then return end
                    --
                    local Sides = Tab.Sides[Options.Side]
                    local ParentSizeY = SectionParent.AbsoluteSize.Y
                    local SectionSizeY = SectionOutline.AbsoluteSize.Y
                    --
                    if SectionOutline:GetAttribute("Fill") then
                        local Target = Library:FillSize(SectionOutline)
                        --
                        if SectionOutline.Size ~= Target then
                            SectionOutline.Size = Target
                        end
                    end
                    --
                    if Section.LastParentSizeY == ParentSizeY and Section.LastSectionSizeY == SectionSizeY and Section.LastSidesSizes == Sides.Sizes and Section.LastParent == SectionParent and Section.LastLayoutVersion == Library.LayoutVersion then
                        return
                    end
                    --
                    Section.LastParentSizeY = ParentSizeY
                    Section.LastSectionSizeY = SectionSizeY
                    Section.LastSidesSizes = Sides.Sizes
                    Section.LastParent = SectionParent
                    Section.LastLayoutVersion = Library.LayoutVersion
                    --
                    local Children = SectionParent:GetChildren()
                    --
                    if #Children < 2 then return end
                    --
                    for i = 1, #Children do
                        local Child = Children[i]
                        --
                        if Child ~= SectionOutline and Child:IsA("Frame") and not Child:GetAttribute("Fill") then
                            if Library:CheckFrameFirst(SectionOutline, Child) then
                                local ChildSizeY = Child.AbsoluteSize.Y
                                --
                                if ChildSizeY >= ((Child.Parent.AbsoluteSize.Y - Sides.Sizes) - 38) then
                                    Child.Size = NewUDim2(Child.Size.X.Scale, Child.Size.X.Offset, 0, Max(50, (ParentSizeY - SectionSizeY) - 57))
                                end
                            end
                        end
                    end
                end)
                --
                Library:Connection(SectionScrolling:GetPropertyChangedSignal("AbsoluteCanvasSize"), function()
                    Section:UpdateSection()
                end)
                --
                Library:Connection(SectionScrolling:GetPropertyChangedSignal("CanvasPosition"), function()
                    UpArrow.Visible = not Section:CheckArrows("Up")
                    DownArrow.Visible = not Section:CheckArrows("Down")
                end)
                --
                Library:Connection(UpArrow.MouseButton1Click, function()
                    if not UpArrow.Visible then return end
                    --
                    Library:TweenObject(SectionScrolling, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {CanvasPosition = NewVector2(0, 0)})
                end)
                --
                Library:Connection(DownArrow.MouseButton1Click, function()
                    if not DownArrow.Visible then return end
                    --
                    Library:TweenObject(SectionScrolling, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {CanvasPosition = NewVector2(0, SectionScrolling.AbsoluteCanvasSize.Y - SectionScrolling.AbsoluteSize.Y)})
                end)
                --
                do -- Dragging
                    Library:Connection(Title.MouseButton1Down, function()
                        if Options.Parent then return end 
                        --
                        Title.TextColor3 = Library.Theme.Default.Accent
                        local LastParent, LastTopHalf
                        --
                        Section.DragConnection = Library:Connection(UserInputService.InputChanged, function(Input)
                            if Input.UserInputType == Enum.UserInputType.MouseMovement then
                                local NewLeft, NewRight
                                --
                                if Tab.SubSectionEnabled then
                                    NewLeft, NewRight = Options.ParentOptions[1], Options.ParentOptions[2]
                                else
                                    NewLeft, NewRight = Left, Right
                                end
                                --
                                local Parent2 = Library:SectionDragging(NewLeft) and NewLeft or Library:SectionDragging(NewRight) and NewRight
                                --
                                if not Parent2 then return end
                                --
                                local ParentName = Parent2 == NewLeft and "Left" or "Right"
                                local TopHalf = Input.Position.Y < Parent2.AbsolutePosition.Y + Parent2.AbsoluteSize.Y / 2
                                --
                                if Parent2 == LastParent and TopHalf == LastTopHalf then return end
                                --
                                LastParent = Parent2
                                LastTopHalf = TopHalf
                                --
                                if SectionOutline.Parent ~= Parent2 then
                                    SectionOutline.Parent = Parent2
                                    Library.LayoutVersion += 1
                                end
                                --
                                local Children = Parent2:GetChildren()
                                --
                                for i = 1, #Children do
                                    local SectionChild = Children[i]
                                    --
                                    if SectionChild:IsA("Frame") and SectionChild.Visible then
                                        if SectionChild == SectionOutline then
                                            if TopHalf then
                                                SectionChild.LayoutOrder = (Tab.DropdownSectionEnabled and Parent2 == NewLeft and 2) or 1
                                            else
                                                SectionChild.LayoutOrder = Section[ParentName].Order + 1
                                            end
                                        else
                                            if SectionChild.Name == "DropdownSection1" then
                                                SectionChild.LayoutOrder = 1
                                            else
                                                SectionChild.LayoutOrder = Section[ParentName].Order
                                                Section[ParentName].Order = 3
                                            end
                                        end
                                    end
                                end
                                --
                                Library.LayoutVersion += 1
                            end
                        end)
                    end)
                end
                --
                do -- Resizing
                    Library:Connection(ResizableButton_6.MouseButton2Click, function()
                        Section:CalculateButton(UDim2.fromOffset(ResizableButton_6.AbsolutePosition.X + ResizableButton_6.AbsoluteSize.X + 4, ResizableButton_6.AbsolutePosition.Y + ResizableButton_6.AbsoluteSize.Y + GuiService:GetGuiInset().Y))
                    end)
                    --
                    Library:Connection(ResizableButton_6.MouseButton1Down, function()
                        ResizableButton_6.ImageColor3 = Library.Theme.Default.Accent
                        SectionInline.BackgroundColor3 = Library.Theme.Default.Accent
                        --
                        SectionOutline.Size = NewUDim2(SectionOutline.Size.X.Scale, SectionOutline.Size.X.Offset, 0, SectionOutline.AbsoluteSize.Y)
                    end)
                    --
                    Library:Connection(UserInputService.InputBegan, function(Input)
                        if Input.UserInputType == Enum.UserInputType.MouseButton1 and Section.SizeButton and not Section.Hovering then
                            Library:Fade(false, Library:GetObjectsTable(Section.SizeButton, true), Section.SizeButton, 0.1)
                            --
                            Delay(Library.UI.TweenSpeed, function()
                                for Index, Value in Section.SizeButton:GetDescendants() do
                                    Value:Destroy()
                                end
                                --
                                Section.SizeButton:Destroy()
                                Section.SizeButton = nil
                            end)
                        end
                    end)
                    --
                    Library:Resizable(SectionOutline, ResizableButton_6, UDim2.fromOffset(200, 50), UDim2.fromOffset(SectionOutline.Parent.AbsoluteSize.X - 29, SectionOutline.Parent.AbsoluteSize.Y - 38), Library.UI.SectionResizeIncrements, false, true, 0.01)
                end
                --
                Library:Connection(UserInputService.InputEnded, function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if Section.DragConnection then Section.DragConnection:Disconnect() Section.DragConnection = nil end
                        Section.Left.Order = 1
                        Section.Right.Order = 1
                        Title.TextColor3 = NewRGB(198, 198, 198)
                        --
                        ResizableButton_6.ImageColor3 = NewRGB(40, 40, 40)
                        SectionInline.BackgroundColor3 = NewRGB(40, 40, 40)
                    end
                end)
            end
            --
            return SetMetaTable(Section, Library.Sections)
        end
        --
        function Tab:SubSection(Options)
            Options = Library:Validate({
                Name = "Preview Sub Section",
                Options = {},
                Flag = Library:NewFlag(),
                Callback = function() end
            }, Options or {})
            --
            local SubSection = {
                CurrentSection = nil,
                Sections = {},
                List = {},
                Elements = {},
            }
            --
            SubSectionHolder.Visible = true
            Tab.SubSectionEnabled = true
            Tab.Sides.Right.Sizes = 0
            Tab.Sides.Left.Sizes = 0
            --
            local SectionOutline = Library:CreateObject("Frame", {
                Name = "SectionOutline",
                BorderColor3 = NewRGB(0, 0, 0),
                Size = NewUDim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                ZIndex = 1,
                BackgroundColor3 = NewRGB(12, 12, 12),
                Parent = SubSectionHolder
            })
            --
            SectionOutline:SetAttribute("g", 0)
            --
            local SectionInline = Library:CreateObject("Frame", {
                Name = "SectionInline",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                Size = NewUDim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                ZIndex = 2,
                BackgroundColor3 = NewRGB(40, 40, 40),
                Parent = SectionOutline
            })
            --
            local SectionMain = Library:CreateObject("Frame", {
                Size = NewUDim2(1, -2, 1, -2),
                Name = "SectionMain_1",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 2,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(23, 23, 23),
                Parent = SectionInline
            })
            --
            local UIPadding_81 = Library:CreateObject("UIPadding", {
                PaddingRight = NewUDim(0, 10),
                PaddingLeft = NewUDim(0, 10),
                Parent = SectionMain
            })
            --
            local UIListLayout52 = Library:CreateObject("UIListLayout", {
                Padding = NewUDim(0, -0),
                FillDirection = Enum.FillDirection.Horizontal,
                VerticalAlignment = Enum.VerticalAlignment.Center,
                SortOrder = Enum.SortOrder.LayoutOrder,
                HorizontalAlignment = Enum.HorizontalAlignment.Left,
                Parent = SectionMain
            })
            --
            local TitleInline = Library:CreateObject("Frame", {
                BackgroundColor3 = NewRGB(255, 255, 255),
                BackgroundTransparency = 0,
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "TitleInline",
                BorderSizePixel = 0,
                Parent = SectionOutline,
                Position = NewUDim2(0, 9, 0, 0),
                Size = NewUDim2(0, 0, 0, 2),
                ZIndex = 5
            })
            --
            local UIGradient2 = Library:CreateObject("UIGradient", {
                Rotation = 90,
                Color = ColorSequence.new{
                    ColorSequenceKeypoint.new(0, NewRGB(19, 19, 19)),
                    ColorSequenceKeypoint.new(1, NewRGB(24, 24, 24))
                },
                Parent = TitleInline
            })
            --
            local Title = Library:CreateObject("TextLabel", {
                AnchorPoint = NewVector2(0, 0.5),
                BackgroundColor3 = NewRGB(0, 0, 0),
                BackgroundTransparency = 1,
                BorderColor3 = NewRGB(0, 0, 0),
                BorderSizePixel = 0,
                Parent = SectionOutline,
                Position = NewUDim2(0, 12, 0, 0),
                Size = NewUDim2(1, -26, 0, 15),
                ZIndex = 5,
                FontFace = Library.UI.NewFont,
                RichText = true,
                Text = "<b>" .. Options.Name .. "</b>",
                TextColor3 = NewRGB(198, 198, 198),
                TextSize = Library.UI.FontSize,
                TextStrokeTransparency = 1,
                TextXAlignment = "Left"
            })
            --
            for Index, Value in Options.Options do
                local SectionItem = {
                    Active = false,
                    Hovering = false,
                    Position = "Bottom",
                    Elements = {},
                }
                --
                local SectionsHolder2 = Library:CreateObject("Frame", {
                    Name = "SectionsHolder",
                    BackgroundTransparency = 1,
                    Visible = false,
                    Position = NewUDim2(0, 97, 0, 33),
                    BorderColor3 = NewRGB(0, 0, 0),
                    Size = NewUDim2(1, -112, 1, -34),
                    BorderSizePixel = 0,
                    BackgroundColor3 = NewRGB(255, 255, 255),
                    ClipsDescendants = true,
                    Parent = Outline_1
                })
                --
                local UIPadding_141 = Library:CreateObject("UIPadding", {
                    PaddingTop = NewUDim(0, 52),
                    Parent = SectionsHolder2
                })
                --
                local Left2 = Library:CreateObject("Frame", {
                    BackgroundTransparency = 1,
                    Name = "Left2",
                    BorderColor3 = NewRGB(0, 0, 0),
                    Size = NewUDim2(0.5, 0, 1, 0),
                    BorderSizePixel = 0,
                    BackgroundColor3 = NewRGB(255, 255, 255),
                    Parent = SectionsHolder2
                })
                --
                local UIPadding_11 = Library:CreateObject("UIPadding", {
                    PaddingTop = NewUDim(0, 19),
                    PaddingBottom = NewUDim(0, 19),
                    PaddingRight = NewUDim(0, 12),
                    Parent = Left2
                })
                --
                local UIListLayout12 = Library:CreateObject("UIListLayout", {
                    Padding = NewUDim(0, 19),
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    Parent = Left2
                })
                --
                local Right2 = Library:CreateObject("Frame", {
                    Name = "Right2",
                    BackgroundTransparency = 1,
                    Position = NewUDim2(0.5, 0, 0, 0),
                    BorderColor3 = NewRGB(0, 0, 0),
                    Size = NewUDim2(0.5, 0, 1, 0),
                    BorderSizePixel = 0,
                    BackgroundColor3 = NewRGB(255, 255, 255),
                    Parent = SectionsHolder2
                })
                --
                local UIPadding_21 = Library:CreateObject("UIPadding", {
                    PaddingTop = NewUDim(0, 19),
                    PaddingBottom = NewUDim(0, 19),
                    PaddingRight = NewUDim(0, 6),
                    PaddingLeft = NewUDim(0, 6),
                    Parent = Right2
                })
                --
                local UIListLayout521 = Library:CreateObject("UIListLayout", {
                    Padding = NewUDim(0, 19),
                    SortOrder = Enum.SortOrder.LayoutOrder,
                    Parent = Right2
                })
                --
                local Icon = Library:CreateObject("ImageButton", {
                    ImageColor3 = NewRGB(100, 100, 100),
                    BorderColor3 = NewRGB(0, 0, 0),
                    Name = "Icon",
                    Image = Value,
                    BackgroundTransparency = 1,
                    Size = NewUDim2(0, 75, 0, 57),
                    ZIndex = 2,
                    BorderSizePixel = 0,
                    BackgroundColor3 = NewRGB(255, 255, 255),
                    Parent = SectionMain
                })
                --
                Left2.Position = NewUDim2(0, -(Left2.AbsoluteSize.X * 2), 0, 0)
                Right2.Position = NewUDim2(0.5, -(Right2.AbsoluteSize.X * 2), 0, 0)
                --
                do -- Functions
                    function SectionItem:MoveSides(State)
                        Spawn(function()
                            if State then
                                if SectionItem.Position == "Bottom" then
                                    Left2.Position = NewUDim2(0, (Left2.AbsoluteSize.X * 2), 0, 0)
                                    Right2.Position = NewUDim2(0.5, (Right2.AbsoluteSize.X * 2), 0, 0)
                                else
                                    Left2.Position = NewUDim2(0, -(Left2.AbsoluteSize.X * 2), 0, 0)
                                    Right2.Position = NewUDim2(0.5, -(Right2.AbsoluteSize.X * 2), 0, 0)
                                end
                                --
                                SectionsHolder2.Visible = Outline:GetAttribute("g") == Find(Window.Tabs, Tab)
                                Library:TweenObject(Left2, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = NewUDim2(0, 1, 0, 0)})
                                Library:TweenObject(Right2, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = NewUDim2(0.5, 1, 0, 0)})
                            else
                                Wait(0.001)
                                --
                                local LeftPosition = SectionItem.Position == "Bottom" and (Left2.AbsoluteSize.X * 2) + 10 or -(Left2.AbsoluteSize.X * 2)
                                local RightPosition = SectionItem.Position == "Bottom" and (Right2.AbsoluteSize.X * 2) + 10 or -(Right2.AbsoluteSize.X * 2)
                                --
                                Library:TweenObject(Left2, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = NewUDim2(0, LeftPosition, 0, 0)})
                                Library:TweenObject(Right2, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = NewUDim2(0.5, RightPosition, 0, 0)})
                            end
                        end)
                    end
                    --
                    function SectionItem:Activate()
                        if not SectionItem.Active then
                            if SubSection.CurrentSection ~= nil then
                                SubSection.CurrentSection:Deactivate()
                            end
                            --
                            SectionItem.Active = true
                            --
                            SectionItem:MoveSides(true)
                            Icon.ImageColor3 = NewRGB(188, 188, 188)
                            --
                            SubSection.CurrentSection = SectionItem
                            SectionOutline:SetAttribute("g", Index)
                        end
                    end
                    --
                    function SectionItem:Deactivate()
                        if SectionItem.Active then
                            SectionItem.Active = false
                            SectionItem.Hovering = false
                            --
                            SectionItem:MoveSides(false)
                            Icon.ImageColor3 = NewRGB(93, 93, 93)
                        end
                    end
                    --
                    function SectionItem:Section(Options)
                        Options = Library:Validate({
                            Name = "Preview Section",
                            Side = "Left",
                            Size = 40,
                        }, Options or {})
                        --
                        local Section = Tab:Section({
                            Name = Options.Name,
                            Side = Options.Side,
                            Fill = Options.Fill,
                            Size = Options.Size,
                            Parent = Options.Side == "Left" and Left2 or Right2,
                            ParentOptions = {Left2, Right2},
                            Icon = Icon,
                        })
                        --
                        return Section
                    end
                end
                --
                do -- Connections
                    Library:Connection(Outline:GetPropertyChangedSignal("AbsoluteSize"), function()
                        if not SectionItem.Active then
                            Left2.Position = NewUDim2(0, Left2.AbsoluteSize.X * 2, 0, 0)
                            Right2.Position = NewUDim2(0.5, Right2.AbsoluteSize.X * 2, 0, 0)
                        end
                    end)
                    --
                    Library:Connection(Outline:GetAttributeChangedSignal("g"), function()
                        if Outline:GetAttribute("g") == Find(Window.Tabs, Tab) then
                            SectionsHolder2.Visible = true
                        end
                    end)
                    --
                    Library:Connection(SectionOutline:GetAttributeChangedSignal("g"), function()
                        if SectionOutline:GetAttribute("g") > Index then
                            SectionItem.Position = "Top"
                        elseif SectionOutline:GetAttribute("g") < Index then
                            SectionItem.Position = "Bottom"
                        end
                    end)
                    --
                    Library:Connection(Left:GetPropertyChangedSignal("AbsolutePosition"), function()
                        if SectionItem.Active then
                            Left2.Position = Left.Position
                        end
                    end)
                    --
                    Library:Connection(Right:GetPropertyChangedSignal("AbsolutePosition"), function()
                        if SectionItem.Active then
                            Right2.Position = Right.Position
                        end
                    end)
                    --
                    Library:Connection(Icon.MouseButton1Click, function()
                        SectionItem:Activate()
                    end)
                    --
                    Library:Connection(Icon.MouseEnter, function()
                        if not SectionItem.Active then
                            SectionItem.Hovering = true
                            Icon.ImageColor3 = NewRGB(124, 124, 124)
                        end
                    end)
                    --
                    Library:Connection(Icon.MouseLeave, function()
                        if not SectionItem.Active then
                            SectionItem.Hovering = false
                            Icon.ImageColor3 = NewRGB(93, 93, 93)
                        end
                    end)
                end
                --
                if SubSection.CurrentSection == nil then
                    SectionItem:Activate()
                end
                --
                SubSection.Sections[#SubSection.Sections + 1] = SetMetaTable(SectionItem, Library.Sections)
            end
            --
            SubSection.Elements = {
                Name = Title,
                ContentHolder = SectionMain,
            }
            --
            TitleInline.Size = NewUDim2(0, Title.TextBounds.X + 6, 0, 2)
            --
            return Unpack(SubSection.Sections)
        end
        --
        function Tab:ImageDropdown(Options)
            Options = Library:Validate({
                Name = "Weapon Type",
                Options = {},
                Default = nil,
                Flag = Library:NewFlag(),
                Callback = function() end
            }, Options or {})
            --
            local ImageDropdown = {
                Open = false,
                Active = false,
                Hovering = false,
                CurrentItem = nil,
                Scrollable = false,
                Hiding = false,
                ContentLength = Library:GetTableLength(Options.Options),
            }
            --
            Tab.DropdownSectionEnabled = true
            Tab.Sides.Left.Sizes = 70
            --
            local DropdownImageOutline = Library:CreateObject("Frame", {
                Name = "DropdownSection1",
                BorderColor3 = NewRGB(0, 0, 0),
                Size = NewUDim2(1, 0, 0, 51),
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(12, 12, 12),
                Parent = Left
            })
            --
            local DropdownChecker = Library:CreateObject("Frame", {
                Name = "DropdownChecker",
                Position = NewUDim2(0, 0, 1, 0),
                Visible = false,
                BorderColor3 = NewRGB(0, 0, 0),
                Size = NewUDim2(1, 0, 0, 1),
                BorderSizePixel = 0,
                Parent = DropdownImageOutline
            })
            --
            local DropdownImageInline = Library:CreateObject("Frame", {
                Name = "DropdownImageInline",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                Size = NewUDim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(40, 40, 40),
                Parent = DropdownImageOutline
            })
            --
            local DropdownImageMain = Library:CreateObject("Frame", {
                Size = NewUDim2(1, -2, 1, -2),
                Name = "DropdownImageMain",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 2,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(23, 23, 23),
                Parent = DropdownImageInline
            })
            --
            local Button_92 = Library:CreateObject("TextButton", {
                FontFace = Library.UI.NewFont,
                TextColor3 = NewRGB(0, 0, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "Button_9",
                BackgroundTransparency = 1,
                Size = NewUDim2(1, 0, 1, 0),
                BorderSizePixel = 0,
                TextTransparency = 1,
                TextSize = Library.UI.FontSize,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = DropdownImageMain
            })
            --
            local DownArrow = Library:CreateObject("ImageLabel", {
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "DownArrow",
                Size = NewUDim2(0, 5, 0, 4),
                AnchorPoint = NewVector2(1, 0.5),
                Image = "rbxassetid://15540867448",
                BackgroundTransparency = 1,
                Position = NewUDim2(1, -6, 0.5, 0),
                ZIndex = 2,
                BorderSizePixel = 0,
                ImageColor3 = NewRGB(210, 210, 210),
                Parent = DropdownImageMain
            })
            --
            local Icon = Library:CreateObject("ImageLabel", {
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "Icon",
                Size = NewUDim2(0, 50, 1, -6),
                AnchorPoint = NewVector2(1, 0.5),
                Image = "rbxassetid://18657040454",
                BackgroundTransparency = 1,
                Position = NewUDim2(1, -14, 0.5, 0),
                ZIndex = 2,
                BorderSizePixel = 0,
                ImageColor3 = NewRGB(210, 210, 210),
                Parent = DropdownImageMain
            })
            --
            local ToggleHolder = Library:CreateObject("Frame", {
                Name = "ToggleHolder",
                BackgroundTransparency = 1,
                Size = NewUDim2(0, 100, 1, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 2,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(255, 255, 255),
                Parent = DropdownImageMain
            })
            --
            local ActualToggleButton = Library:Toggle({
                Default = false,
                Name = "Global",
                SectionName = "ToggleHolder",
                Parent = ToggleHolder,
                Risky = false,
                MainUI = Outline,
                ZIndex = 2,
                TabUI = SideBarMain,
                AnchorPoint = NewVector2(0, 0.5),
                Size = NewUDim2(1, 0, 1, 0),
                Position = NewUDim2(0, 0, 0.5, 0),
                UseToggleOutline = true,
                Hidden = false,
                Flag = Options.Flag .. "Extra",
                Callback = function(State)
                    if ImageDropdown.CurrentItem then
                        ImageDropdown.CurrentItem:SetValue(State)
                        Library.Flags[Options.Flag] = ImageDropdown.CurrentItem
                        Options.Callback(ImageDropdown.CurrentItem.Name, ImageDropdown.CurrentItem.CurrentValue)
                    end
                end,
            })
            --
            local UIPadding = Library:CreateObject("UIPadding", {
                PaddingLeft = NewUDim(0, 18),
                Parent = ToggleHolder
            })
            --
            local TitleInline = Library:CreateObject("Frame", {
                BackgroundColor3 = NewRGB(255, 255, 255),
                BackgroundTransparency = 0,
                BorderColor3 = NewRGB(0, 0, 0),
                Name = "TitleInline",
                BorderSizePixel = 0,
                Parent = DropdownImageOutline,
                Position = NewUDim2(0, 9, 0, 0),
                Size = NewUDim2(0, 0, 0, 2),
                ZIndex = 5
            })
            --
            local UIGradient2 = Library:CreateObject("UIGradient", {
                Rotation = 90,
                Color = ColorSequence.new{
                    ColorSequenceKeypoint.new(0, NewRGB(19, 19, 19)),
                    ColorSequenceKeypoint.new(1, NewRGB(24, 24, 24))
                },
                Parent = TitleInline
            })
            --
            local Title = Library:CreateObject("TextButton", {
                AnchorPoint = NewVector2(0, 0.5),
                BackgroundColor3 = NewRGB(0, 0, 0),
                BackgroundTransparency = 1,
                BorderColor3 = NewRGB(0, 0, 0),
                BorderSizePixel = 0,
                Parent = DropdownImageOutline,
                Position = NewUDim2(0, 12, 0, 0),
                Size = NewUDim2(1, -26, 0, 15),
                ZIndex = 5,
                FontFace = Library.UI.NewFont,
                RichText = true,
                Text = "<b>" .. Options.Name .. "</b>",
                TextColor3 = NewRGB(198, 198, 198),
                TextSize = Library.UI.FontSize,
                TextStrokeTransparency = 1,
                TextXAlignment = "Left"
            })
            --
            local DropdownMainOutline = Library:CreateObject("Frame", {
                Name = "DropdownMainOutline",
                Position = NewUDim2(0, 0, 0, 0),
                BorderColor3 = NewRGB(0, 0, 0),
                ZIndex = 50,
                BorderSizePixel = 0,
                BackgroundColor3 = NewRGB(12, 12, 12),
                Parent = Library.UI.ScreenGUI
            })
            --
            local DropdownMain = Library:CreateObject("Frame", {
                Name = "DropdownMain",
                Position = NewUDim2(0, 1, 0, 1),
                BorderColor3 = NewRGB(0, 0, 0),
                Size = NewUDim2(1, -2, 1, -2),
                BorderSizePixel = 0,
                ZIndex = 50,
                ClipsDescendants = true,
                BackgroundColor3 = NewRGB(35, 35, 35),
                Parent = DropdownMainOutline
            })
            --
            DropdownMainOutline.BackgroundTransparency = 1
            DropdownMain.BackgroundTransparency = 1
            --
            local UIListLayout_9 = Library:CreateObject("UIListLayout", {
                SortOrder = Enum.SortOrder.LayoutOrder,
                Parent = DropdownMain
            })
            --
            Title.Size = UDim2.fromOffset(Title.TextBounds.X, 15)
            TitleInline.Size = NewUDim2(0, Title.TextBounds.X + 6, 0, 2)
            --
            for Index, Value in Options.Options do
                local DropdownOption = {
                    Hovering = false,
                    Active = false,
                    CurrentValue = false,
                    Name = Index,
                }
                --
                local ButtonMain = Library:CreateObject("Frame", {
                    Name = "DropdownMain",
                    BorderColor3 = NewRGB(0, 0, 0),
                    Size = NewUDim2(1, 0, 0, 30),
                    BorderSizePixel = 0,
                    ZIndex = 50,
                    ClipsDescendants = true,
                    LayoutOrder = Value.Order,
                    BackgroundColor3 = NewRGB(35, 35, 35),
                    Parent = DropdownMain
                })
                --
                local Button_925 = Library:CreateObject("TextButton", {
                    FontFace = Library.UI.NewFont,
                    TextColor3 = NewRGB(0, 0, 0),
                    BorderColor3 = NewRGB(0, 0, 0),
                    Name = "Button_9",
                    BackgroundTransparency = 1,
                    Size = NewUDim2(1, 0, 1, 0),
                    BorderSizePixel = 0,
                    ZIndex = 50,
                    TextTransparency = 1,
                    TextSize = Library.UI.FontSize,
                    BackgroundColor3 = NewRGB(255, 255, 255),
                    Parent = ButtonMain
                })
                --
                ButtonMain.BackgroundTransparency = 1
                --
                local ToggleButton = Library:Toggle({
                    Default = false,
                    Name = Index,
                    SectionName = "ImageDropdown",
                    Parent = ButtonMain,
                    Risky = false,
                    MainUI = Outline,
                    ZIndex = 50,
                    TabUI = SideBarMain,
                    AnchorPoint = NewVector2(0, 0.5),
                    Position = NewUDim2(0, 15, 0.5, 0),
                    Hidden = false,
                    Callback = function(State)

                    end,
                })
                --
                local IconButton = Library:CreateObject("ImageLabel", {
                    BorderColor3 = NewRGB(0, 0, 0),
                    Name = "Icon",
                    Size = NewUDim2(0, 35, 1, 0),
                    AnchorPoint = NewVector2(1, 0.5),
                    Image = Value.Icon,
                    BackgroundTransparency = 1,
                    Position = NewUDim2(1, -10, 0.5, 0),
                    ZIndex = 50,
                    BorderSizePixel = 0,
                    ImageColor3 = NewRGB(124, 124, 124),
                    Parent = ButtonMain
                })
                --
                do -- Functions
                    function DropdownOption:Activate()
                        if not DropdownOption.Active then
                            if ImageDropdown.CurrentItem ~= nil then
                                ImageDropdown.CurrentItem:Deactivate()
                            end
                            --
                            DropdownOption.Active = true
                            ImageDropdown.CurrentItem = DropdownOption
                            --
                            IconButton.ImageColor3 = NewRGB(210, 210, 210)
                            Icon.Image = Value.Icon
                            ActualToggleButton:SetName(Index)
                        end
                    end
                    --
                    function DropdownOption:Deactivate()
                        if DropdownOption.Active then
                            DropdownOption.Active = false
                            DropdownOption.Hovering = false
                            ImageDropdown.CurrentItem = nil
                            --
                            ButtonMain.BackgroundColor3 = NewRGB(35, 35, 35)
                            IconButton.ImageColor3 = NewRGB(124, 124, 124)
                        end
                    end
                    --
                    function DropdownOption:SetValue(Value)
                        ToggleButton:Set(Value)
                        DropdownOption.CurrentValue = Value
                    end
                    --
                    function DropdownOption:Get()
                        return {Name = DropdownOption.Name, Value = DropdownOption.CurrentValue}
                    end
                end
                --
                do -- Connections
                    Library:Connection(ButtonMain.MouseEnter, function()
                        ButtonMain.BackgroundColor3 = NewRGB(25, 25, 25)
                        IconButton.ImageColor3 = NewRGB(210, 210, 210)
                    end)
                    --
                    Library:Connection(ButtonMain.MouseLeave, function()
                        ButtonMain.BackgroundColor3 = NewRGB(35, 35, 35)
                        --
                        if DropdownOption.Active then return end
                        --
                        IconButton.ImageColor3 = NewRGB(124, 124, 124)
                    end)
                    --
                    Library:Connection(Button_925.MouseButton1Click, function()
                        DropdownOption:Activate()
                        ActualToggleButton:Set(DropdownOption.CurrentValue)
                    end)
                end
                --
                if Options.Default == Index then
                    DropdownOption:Activate()
                end
                --
                Library:Fade(false, Library:GetObjectsTable(DropdownMainOutline, true), DropdownMainOutline, 0.1)
            end
            --
            do -- Functions
                function ImageDropdown:Toggle(Fast)
                    local Fast = Fast or false
                    local OldValues = Library.Objects[DropdownMainOutline]
                    --
                    if ImageDropdown.Open then
                        if Fast then
                            Library:Fade(false, Library:GetObjectsTable(DropdownMainOutline, true), DropdownMainOutline, 0)
                            DropdownMainOutline.Size = NewUDim2(0, DropdownImageOutline.AbsoluteSize.X, 0, 0)
                            Library.Objects[DropdownMainOutline] = {DropdownMainOutline, OldValues[2], true}
                        else
                            Library:Fade(false, Library:GetObjectsTable(DropdownMainOutline, true), DropdownMainOutline, 0.1)
                            Library:TweenObject(DropdownMainOutline, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = NewUDim2(0, DropdownImageOutline.AbsoluteSize.X, 0, 0)}, function()
                                Library.Objects[DropdownMainOutline] = {DropdownMainOutline, OldValues[2], true}
                            end)
                        end
                    else
                        Library.Objects[DropdownMainOutline] = {DropdownMainOutline, OldValues[2], false}
                        --
                        if Fast then
                            Library:Fade(true, Library:GetObjectsTable(DropdownMainOutline, true), DropdownMainOutline, 0)
                            DropdownMainOutline.Size = NewUDim2(0, DropdownImageOutline.AbsoluteSize.X, 0, (ImageDropdown.ContentLength * 30) + 2)
                        else
                            Library:Fade(true, Library:GetObjectsTable(DropdownMainOutline, true), DropdownMainOutline, 0.1)
                            Library:TweenObject(DropdownMainOutline, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = NewUDim2(0, DropdownImageOutline.AbsoluteSize.X, 0, (ImageDropdown.ContentLength * 30) + 2)})
                        end	
                    end
                    --
                    ImageDropdown.Open = not ImageDropdown.Open
                end
                --
                function ImageDropdown:Update()
                    DropdownMainOutline.Size = NewUDim2(0, DropdownImageOutline.AbsoluteSize.X, 0, DropdownMainOutline.AbsoluteSize.Y)
                    DropdownMainOutline.Position = NewUDim2(0, DropdownImageOutline.AbsolutePosition.X, 0, ((DropdownImageOutline.AbsolutePosition.Y + DropdownImageOutline.AbsoluteSize.Y) + GuiService:GetGuiInset().Y + 2))
                end
            end
            --
            do -- Dropdown Connections
                ImageDropdown:Update()
                --
                Library:Connection(DropdownImageOutline:GetPropertyChangedSignal("AbsolutePosition"), ImageDropdown.Update)
                Library:Connection(DropdownImageOutline:GetPropertyChangedSignal("AbsoluteSize"), ImageDropdown.Update)
                --
                local StartingY = DropdownImageOutline.AbsolutePosition.Y
                local MainUIStartingY = Outline.AbsolutePosition.Y
                --
                Library:Connection(DropdownImageOutline:GetPropertyChangedSignal("AbsolutePosition"), function()
                    if not ImageDropdown.Open then return end
                    --
                    local CurrentY = DropdownImageOutline.AbsolutePosition.Y
                    local MainUICurrentY = Outline.AbsolutePosition.Y
                    --
                    if MainUICurrentY ~= MainUIStartingY then
                        MainUIStartingY = MainUICurrentY
                        StartingY = CurrentY
                        --
                        return
                    end
                    --
                    if Library.UI.Resizing then
                        return
                    end
                    --
                    if CurrentY ~= StartingY then
                        ImageDropdown:Toggle(true)
                    end
                    --
                    StartingY = CurrentY
                end)
            end
            --
            do -- Connections
                Library:Connection(Button_92.MouseButton1Click, function()
                    ImageDropdown:Toggle()
                end)
            end
        end
        --
        function Sections:Dropdown(Options)
            Options = Library:Validate({
                Default = "None",
                Name = "Preview Dropdown",
                Content = {},
                Hiding = false,
                Risky = false,
                Hidden = false,
                Flag = Library.NewFlag(),
                Callback = function() end
            }, Options or {})
            --
            local Dropdown = Library:Dropdown({
                Default = Options.Default,
                Name = Options.Name,
                Content = Options.Content,
                MainUI = Outline,
                TabUI = SideBarMain,
                Tab = Tab,
                SourceSection = self,
                Hiding = Options.Hiding,
                Risky = Options.Risky,
                Hidden = Options.Hidden,
                Flag = Options.Flag,
                Callback = Options.Callback,
                Parent = self.Elements.ContentHolder
            })
            --
            return Dropdown
        end
        --
        function Sections:MultiBox(Options)
            Options = Library:Validate({
                Default = {},
                Name = "Preview MultiBox",
                Content = {},
                Hiding = false,
                Risky = false,
                Hidden = false,
                Flag = Library.NewFlag(),
                Callback = function() end
            }, Options or {})
            --
            local Dropdown = Library:MultiBox({
                Default = Options.Default,
                Name = Options.Name,
                Content = Options.Content,
                MainUI = Outline,
                TabUI = SideBarMain,
                Hiding = Options.Hiding,
                Risky = Options.Risky,
                Hidden = Options.Hidden,
                Flag = Options.Flag,
                Callback = Options.Callback,
                Parent = self.Elements.ContentHolder
            })
            --
            return Dropdown
        end
        --
        function Sections:Toggle(Options)
            Options = Library:Validate({
                Default = false,
                Name = "Preview Toggle",
                Risky = false,
                Hidden = false,
                Flag = Library:NewFlag(),
                Callback = function() end
            }, Options or {})
            --
            local Toggle = Library:Toggle({
                Default = Options.Default,
                Name = Options.Name,
                SectionName = self.Elements.Name,
                Parent = self.Elements.ContentHolder,
                Risky = Options.Risky,
                MainUI = Outline,
                TabUI = SideBarMain,
                Tab = Tab,
                SourceSection = self,
                Hidden = Options.Hidden,
                Flag = Options.Flag,
                Callback = Options.Callback
            })
            --
            return Toggle
        end
        --
        function Sections:Slider(Options)
            Options = Library:Validate({
                Name = "Preview Slider",
                Min = 0,
                Max = 100,
                Default = 1,
                Decimal = 1,
                Ending = "",
                Hidden = false,
                Disable = {},
                Risky = false,
                Flag = Library.NewFlag(),
                Callback = function() end
            }, Options or {})
            --
            local Slider = Library:Slider({
                Name = Options.Name,
                Min = Options.Min,
                Max = Options.Max,
                Default = Options.Default,
                Decimal = Options.Decimal,
                Ending = Options.Ending,
                Hidden = Options.Hidden,
                Parent = self.Elements.ContentHolder,
                Risky = Options.Risky,
                Disable = Options.Disable,
                Flag = Options.Flag,
                Callback = Options.Callback
            })
            --
            return Slider
        end
        --
        function Sections:Label(Options)
            Options = Library:Validate({
                Message = "Preview Label",
                Risky = false,
                Side = "Left",
                Hidden = false,
            }, Options or {})
            --
            local Label = Library:Label({
                Message = Options.Message,
                Side = Options.Side,
                Risky = Options.Risky,
                MainUI = Outline,
                Hidden = Options.Hidden,
                TabUI = SideBarMain,
                Tab = Tab,
                SourceSection = self,
                SectionName = self.Elements.Name,
                Callback = Options.Callback,
                Parent = self.Elements.ContentHolder
            })
            --
            return Label
        end
        --
        function Sections:TextBox(Options)
            Options = Library:Validate({
                Default = "",
                Name = "Preview TextBox",
                Max = 32,
                NumbersOnly = false,
                ClearOnFocus = false,
                CheckIfPressedEnter = false,
                Risky = false,
                Hidden = false,
                Flag = Library.NewFlag(),
                Callback = function() end
            }, Options or {})
            --
            local TextBox = Library:TextBox({
                Default = Options.Default,
                Name = Options.Name,
                Max = Options.Max,
                NumbersOnly = Options.NumbersOnly,
                ClearOnFocus = Options.ClearOnFocus,
                CheckIfPressedEnter = Options.CheckIfPressedEnter,
                Risky = Options.Risky,
                Hidden = Options.Hidden,
                Parent = self.Elements.ContentHolder,
                Flag = Options.Flag,
                Callback = Options.Callback
            })
            --
            return TextBox
        end
        --
        function Sections:List(Options)
            Options = Library:Validate({
                Size = 100,
                Hidden = false,
                Multi = false,
                Flag = Library.NewFlag(),
                Callback = function() end
            }, Options or {})
            --
            local TextBox = Library:List({
                Size = Options.Size,
                Hidden = Options.Hidden,
                Multi = Options.Multi,
                Parent = self.Elements.ContentHolder,
                Flag = Options.Flag,
                Callback = Options.Callback
            })
            --
            return TextBox
        end
        --
        function Sections:Button(Options)
            Options = Library:Validate({
                Name = "Preview Button",
                Confirmation = false,
                Risky = false,
                Hidden = false,
                Callback = function() end
            }, Options or {})
            --
            local Button = Library:Button({
                Name = Options.Name,
                Confirmation = Options.Confirmation,
                Risky = Options.Risky,
                Hidden = Options.Hidden,
                Parent = self.Elements.ContentHolder,
                Callback = Options.Callback
            })
            --
            return Button
        end
        --
        return Tab
    end
    -- Start of bullshit
    function Library:CreateWatermark()
        local Watermark = {
            CanUse = true,
            Tick = Tick(),
            RefreshTick = Tick(),
            Dragging = false,
            DragOffset = NewVector2(0, 0),
        }

        local SavedX = 20
        local SavedY = 5

        local MainWatermark = Library:CreateObject("Frame", {
            Name = "Watermark",
            Position = UDim2.fromOffset(SavedX, SavedY),
            BorderColor3 = NewRGB(0, 0, 0),
            Size = NewUDim2(0, 200, 0, 20),
            BorderSizePixel = 0,
            ZIndex = 10000,
            BackgroundColor3 = NewRGB(0, 0, 0),
            Active = true,
            Parent = Library.UI.ScreenGUI
        }, true)

        local UIGradient = Library:CreateObject("UIGradient", {
            Transparency = NumberSequence.new{
                NewNumberKeypoint(0, 1),
                NewNumberKeypoint(0.25, 0.6119999885559082),
                NewNumberKeypoint(0.5, 0.625),
                NewNumberKeypoint(0.75, 0.625),
                NewNumberKeypoint(1, 1)
            },
            Parent = MainWatermark
        }, true)

        local UIStroke = Library:CreateObject("UIStroke", {
            Parent = MainWatermark
        }, true)

        local UIGradient_1 = Library:CreateObject("UIGradient", {
            Transparency = NumberSequence.new{
                NewNumberKeypoint(0, 1),
                NewNumberKeypoint(0.232, 0.4000000059604645),
                NewNumberKeypoint(0.5, 0.4000000059604645),
                NewNumberKeypoint(0.75, 0.4000000059604645),
                NewNumberKeypoint(1, 1)
            },
            Parent = UIStroke
        }, true)

        local TextContainer = Library:CreateObject("Frame", {
            Name = "TextContainer",
            Size = NewUDim2(1, 0, 1, 0),
            BackgroundTransparency = 1,
            Parent = MainWatermark
        }, true)

        local ContainerLayout = Library:CreateObject("UIListLayout", {
            FillDirection = Enum.FillDirection.Horizontal,
            SortOrder = Enum.SortOrder.LayoutOrder,
            VerticalAlignment = Enum.VerticalAlignment.Center,
            Parent = TextContainer
        }, true)

        local ContainerPadding = Library:CreateObject("UIPadding", {
            PaddingRight = NewUDim(0, 22),
            PaddingLeft = NewUDim(0, 22),
            Parent = TextContainer
        }, true)

        local StaticText = Library:CreateObject("TextLabel", {
            FontFace = Library.UI.NewFont,
            TextColor3 = NewRGB(255, 255, 255),
            Text = "",
            Name = "StaticText",
            Size = NewUDim2(0, 0, 1, 0),
            AutomaticSize = Enum.AutomaticSize.X,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            BorderSizePixel = 0,
            ZIndex = 10000,
            RichText = true,
            TextSize = 14,
            Parent = TextContainer,
            LayoutOrder = 1
        }, true)

        Library:CreateObject("UIStroke", {
            Parent = StaticText,
            LineJoinMode = Enum.LineJoinMode.Miter,
            Color = NewRGB(50, 50, 50)
        }, true)

        local WatermarkText = Library:CreateObject("TextLabel", {
            FontFace = Library.UI.NewFont,
            TextColor3 = NewRGB(255, 255, 255),
            Text = cheatname,
            Name = "Text",
            Size = NewUDim2(0, 0, 1, 0),
            AutomaticSize = Enum.AutomaticSize.X,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            BorderSizePixel = 0,
            ZIndex = 10000,
            RichText = true,
            TextSize = 14,
            Parent = TextContainer,
            LayoutOrder = 2
        }, true)

        Library:CreateObject("UIStroke", {
            Parent = WatermarkText,
            LineJoinMode = Enum.LineJoinMode.Miter,
            Color = NewRGB(50, 50, 50)
        }, true)

        local ColorGradient = NewInstance("UIGradient")
        ColorGradient.Color = NewColorSequence(NewRGB(255, 255, 255))
        ColorGradient.Parent = WatermarkText
        -- WHAT THE FUCK?
        local WaveFlags = {
            Enabled       = false,
            Mode          = "Gradient",
            Direction     = "Left to Right",
            Speed         = 1.5,
            Amplitude     = 0.8,
            Spread        = 1,
            Distance      = 1,
            Phase         = 0,
            Rotation      = 0,
            RainbowSat    = 1,
            RainbowSteps  = 16,
            SecondaryColor = NewRGB(255, 80, 80),
            Format        = "{color:accent}{text:flo}hack    {username}    {gamename}    {fps}    {ping}    {time}",
        }

        local LastOffset   = 0
        local LastWaveOn   = nil
        local LastAccent   = nil

        local LastTextAccent = nil
        local LastTextFormat = nil
        local CachedGameName = nil

        function ResolveColor(Name)
            local Low = Name:lower()
            if Low == "accent" then
                return Library.Theme.Default.Accent
            end
            local R, G, B = Low:match("^(%d+)%s*,%s*(%d+)%s*,%s*(%d+)$")
            if R then
                return NewRGB(tonumber(R), tonumber(G), tonumber(B))
            end
            local Ok, C = pcall(Color3.fromHex, Name)
            return Ok and C or NewRGB(255, 255, 255)
        end

        function ToHex(C)
            return Format("#%02x%02x%02x", Floor(C.R * 255), Floor(C.G * 255), Floor(C.B * 255))
        end
        -- Yeah fuck you roblox, 
        local UnitFontOpen = "<font family=\"rbxassetid://12187371840\" size=\"9\">"
        local UnitFontClose = "</font>"

        function TimingValue(Name, Fallback)
            local Ok, Value = pcall(function()
                return Stats.PerformanceStats[Name]:GetValue()
            end)
            if Ok and typeof(Value) == "number" and Value > 0 then
                return Value
            end
            return Fallback
        end

        function UnitSuffix(Text)
            return UnitFontOpen .. Text .. UnitFontClose
        end

        local FrameRateManager = Stats:FindFirstChild("FrameRateManager")
        local RenderAverage = FrameRateManager:FindFirstChild("RenderAverage")
        local RenderFrames, RenderTime, RenderFps, RenderWindow = 0, 0, 60, Tick()
        Library:Connection(RunService.RenderStepped, LPH_NO_VIRTUALIZE(function(RDt)
            if typeof(RDt) == "number" and RDt > 0 then
                RenderFrames += 1
                RenderTime += RDt
            end
            local Now = Tick()
            if Now - RenderWindow >= 0.25 and RenderFrames > 0 then
                RenderFps = Min(Floor(RenderFrames / Max(RenderTime, 1e-6) + 0.5), 9999)
                RenderFrames, RenderTime, RenderWindow = 0, 0, Now
            end
        end))

        function ResolveFormatParts(Fmt, Dt)
            local D = Date("*t")
            local FrameMs = Max(Dt, 0.0001) * 1000
            local AvgMs = RenderAverage:GetValue()
            local DisplayFPS
            if typeof(AvgMs) == "number" and AvgMs > 0 then
                DisplayFPS = Min(Floor(1000 / Max(AvgMs, 0.001) + 0.5), 9999)
            else
                DisplayFPS = RenderFps
            end
            local OkPing, PingVal = pcall(function()
                return Floor(Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
            end)
            local PingStr = tostring(Min(OkPing and PingVal or 0, 999)) .. UnitSuffix(" ms")
            if CachedGameName == nil then
                local OkName, ProductName = pcall(function()
                    return cloneref(game:GetService("MarketplaceService")):GetProductInfo(Game.PlaceId).Name
                end)

                CachedGameName = OkName and typeof(ProductName) == "string" and ProductName or "unknown game"
            end
            local Result = Fmt
            Result = Result:gsub("{fps}", tostring(DisplayFPS) .. UnitSuffix(" fps"))
            Result = Result:gsub("{ping}", PingStr)
            Result = Result:gsub("{cpu}", Format("%.1f", TimingValue("CPU", FrameMs)) .. UnitSuffix(" cpu"))
            Result = Result:gsub("{gpu}", Format("%.1f", TimingValue("GPU", FrameMs)) .. UnitSuffix(" gpu"))
            local DisplayName = Client.Name
            if typeof(LRM_UserNote) == "string" and LRM_UserNote ~= "" and (LRM_UserNote ~= "user" or LRM_LinkedDiscordID ~= "Developer") then
                DisplayName = LRM_UserNote
            end
            Result = Result:gsub("{username}", DisplayName)
            Result = Result:gsub("{user}", DisplayName)
            Result = Result:gsub("{date}", Format("%04d/%02d/%02d", D.year, D.month, D.day))
            Result = Result:gsub("{time}", Format("%02d:%02d:%02d", D.hour, D.min, D.sec))
            Result = Result:gsub("{gamename}", CachedGameName)
            Result = Result:gsub("{placeid}", tostring(Game.PlaceId))

            Result = Result:gsub("{color:([^}]+)}{text:([^}]+)}", function(ColorName, Text)
                local FinalColor = ResolveColor(ColorName)
                return "<font color=\"" .. ToHex(FinalColor) .. "\">" .. Text .. "</font>"
            end)
            Result = Result:gsub("{text:([^}]+)}{color:([^}]+)}", function(Text, ColorName)
                local FinalColor = ResolveColor(ColorName)
                return "<font color=\"" .. ToHex(FinalColor) .. "\">" .. Text .. "</font>"
            end)
            Result = Result:gsub("{color:([^}]+)}", function(ColorName)
                local FinalColor = ResolveColor(ColorName)
                return "<font color=\"" .. ToHex(FinalColor) .. "\">"
            end)
            Result = Result:gsub("{/color}", "</font>")

            return "", Result
        end
        -- Idk why this is named like this but its funny, thank you.
        function BuildDirKps(Steps, TVal, C, Dir, Speed, Amplitude, Phase)
            local Kps = {}
            for I = 0, Steps do
                local Frac = I / Steps
                local SamplePos
                if Dir == "Right to Left" then
                    SamplePos = 1 - Frac
                elseif Dir == "Center Out" then
                    SamplePos = Frac < 0.5 and Frac * 2 or (1 - Frac) * 2
                elseif Dir == "Edges In" then
                    SamplePos = Frac < 0.5 and (1 - Frac * 2) or (1 - (1 - Frac) * 2)
                else
                    SamplePos = Frac
                end
                local Noise = Sin((TVal * Speed * 7.3) + SamplePos * 13.1 + Phase * 6.28) * 0.5 + 0.5
                local Sparkle = Max(0, Noise - 0.3) / 0.7 * Amplitude
                local Col = NewColor3(
                    Min(1, C.R + (1 - C.R) * Sparkle),
                    Min(1, C.G + (1 - C.G) * Sparkle),
                    Min(1, C.B + (1 - C.B) * Sparkle)
                )
                Kps[I + 1] = ColorSequenceKeypoint.new(Clamp(Frac, 0, 1), Col)
            end
            return Kps
        end

        do
            function Library:ToggleWatermark(State)
                Watermark.CanUse = State
                MainWatermark.Visible = State
            end

            function UpdateBounds()
                local W1 = StaticText.TextBounds.X
                local W2 = WatermarkText.TextBounds.X
                local TargetSize = NewUDim2(0, W1 + W2 + 44, 0, MainWatermark.Size.Y.Offset)
                Library:TweenObject(MainWatermark, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = TargetSize})
            end

            StaticText:GetPropertyChangedSignal("TextBounds"):Connect(UpdateBounds)
            WatermarkText:GetPropertyChangedSignal("TextBounds"):Connect(UpdateBounds)

            function Library:UpdateWatermark(StaticStr, AnimStr)
                if Watermark.CanUse and not MainWatermark.Visible then MainWatermark.Visible = true end
                StaticText.Text = tostring(StaticStr or "")
                WatermarkText.Text = tostring(AnimStr or "")
            end

            function Library:SetWatermarkTitle(Text)
                WaveFlags.Format = Text
            end

            function Library:SetWatermarkX(X)
                SavedX = X
                MainWatermark.Position = UDim2.fromOffset(X, MainWatermark.Position.Y.Offset)
            end

            function Library:SetWatermarkY(Y)
                SavedY = Y
                MainWatermark.Position = UDim2.fromOffset(MainWatermark.Position.X.Offset, Y)
            end
        end
        -- Anyways this kinda sucks, i wanna make it less lines, so bother with that, i wanna make it look funny.
        do
            MainWatermark.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    Watermark.Dragging = true
                    local MousePos = UserInputService:GetMouseLocation()
                    local FramePos = MainWatermark.AbsolutePosition
                    Watermark.DragOffset = NewVector2(MousePos.X - FramePos.X, MousePos.Y - FramePos.Y)
                end
            end)

            MainWatermark.InputEnded:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    Watermark.Dragging = false
                    SavedX = MainWatermark.Position.X.Offset
                    SavedY = MainWatermark.Position.Y.Offset
                    if Library.Flags["WatermarkX"] then Library.Flags["WatermarkX"]:Set(SavedX) end
                    if Library.Flags["WatermarkY"] then Library.Flags["WatermarkY"]:Set(SavedY) end
                end
            end)

            Library:Connection(RunService.PostSimulation, LPH_JIT_MAX(function(Dt)
                if not Library.UI.Initialized then return end

                if Watermark.Dragging then
                    local MousePos = UserInputService:GetMouseLocation()
                    local NewX = Clamp(MousePos.X - Watermark.DragOffset.X, 0, Viewport.X - MainWatermark.AbsoluteSize.X)
                    local NewY = Clamp(MousePos.Y - Watermark.DragOffset.Y, 0, Viewport.Y - MainWatermark.AbsoluteSize.Y)
                    MainWatermark.Position = UDim2.fromOffset(NewX, NewY)
                end

                if not MainWatermark.Visible then return end

                local T = Tick()

                local CurrentAccent = Library.Theme.Default.Accent
                local CurrentFormat = WaveFlags.Format
                local Stale = true

                if Stale or LastTextAccent ~= CurrentAccent or LastTextFormat ~= CurrentFormat then
                    if Stale then
                        Watermark.RefreshTick = T
                    end

                    LastTextAccent = CurrentAccent
                    LastTextFormat = CurrentFormat

                    local StaticPart, AnimPart = ResolveFormatParts(CurrentFormat, Dt)
                    Library:UpdateWatermark(StaticPart, AnimPart)
                end

                local Mode          = WaveFlags.Mode
                local Dir           = WaveFlags.Direction
                local Speed         = WaveFlags.Speed
                local Amplitude     = WaveFlags.Amplitude
                local Spread        = WaveFlags.Spread
                local Distance      = WaveFlags.Distance
                local Phase         = WaveFlags.Phase / 360
                local Rotation      = WaveFlags.Rotation

                if WatermarkText.TextColor3 ~= NewRGB(255, 255, 255) then
                    WatermarkText.TextColor3 = NewRGB(255, 255, 255)
                end

                if ColorGradient.Rotation ~= Rotation then
                    ColorGradient.Rotation = Rotation
                end

                if not WaveFlags.Enabled then
                    if LastOffset ~= 0 then
                        LastOffset = 0
                        ColorGradient.Offset = NewVector2(0, 0)
                    end
                    ColorGradient.Color = NewColorSequence(NewRGB(255, 255, 255))
                    LastWaveOn = false
                    return
                end

                if Mode == "Gradient" then
                    local RawPhase = (T * Speed * Spread + Phase) % 1
                    local Raw = Sin(RawPhase * Pi * 2) * Amplitude * Distance
                    local Offset
                    if Dir == "Left to Right" then Offset = Raw
                    elseif Dir == "Right to Left" then Offset = -Raw
                    elseif Dir == "Center Out" then Offset = Abs(Raw)
                    elseif Dir == "Edges In" then Offset = -Abs(Raw)
                    end
                    if Abs(Offset - LastOffset) > 0.001 then
                        LastOffset = Offset
                        ColorGradient.Offset = NewVector2(Offset, 0)
                    end
                    if LastWaveOn ~= true or LastAccent ~= CurrentAccent then
                        LastWaveOn = true
                        LastAccent = CurrentAccent
                        ColorGradient.Color = NewColorSequence({
                            ColorSequenceKeypoint.new(0, NewRGB(255, 255, 255)),
                            ColorSequenceKeypoint.new(0.25, CurrentAccent),
                            ColorSequenceKeypoint.new(0.5, NewRGB(255, 255, 255)),
                            ColorSequenceKeypoint.new(0.75, CurrentAccent),
                            ColorSequenceKeypoint.new(1, NewRGB(255, 255, 255))
                        })
                    end

                elseif Mode == "Fade" then
                    local FadePhase = (T * Speed + Phase) * Pi * 2 * Spread
                    local Alpha = (Sin(FadePhase) + 1) / 2
                    local C = CurrentAccent
                    local FadedColor = NewColor3(C.R + (1 - C.R) * (1 - Alpha), C.G + (1 - C.G) * (1 - Alpha), C.B + (1 - C.B) * (1 - Alpha))
                    local MidAlpha = (Sin(FadePhase + Pi) + 1) / 2
                    local FadedMid = NewColor3(C.R + (1 - C.R) * (1 - MidAlpha), C.G + (1 - C.G) * (1 - MidAlpha), C.B + (1 - C.B) * (1 - MidAlpha))
                    ColorGradient.Offset = NewVector2(0, 0)
                    ColorGradient.Color = NewColorSequence({
                        ColorSequenceKeypoint.new(0, Dir == "Right to Left" and FadedMid or NewRGB(255, 255, 255)),
                        ColorSequenceKeypoint.new(0.3, FadedColor),
                        ColorSequenceKeypoint.new(0.5, FadedMid),
                        ColorSequenceKeypoint.new(0.7, FadedColor),
                        ColorSequenceKeypoint.new(1, Dir == "Right to Left" and NewRGB(255, 255, 255) or FadedMid)
                    })

                elseif Mode == "Rainbow" then
                    local RainbowPhase = (T * Speed * Spread + Phase) % 1
                    local Steps = Floor(WaveFlags.RainbowSteps)
                    ColorGradient.Offset = NewVector2(0, 0)
                    local Kps = {}
                    for I = 0, Steps do
                        local Frac = I / Steps
                        local SampleFrac = Dir == "Right to Left" and (1 - Frac) or Frac
                        local Hue = (RainbowPhase + SampleFrac) % 1
                        Kps[I + 1] = ColorSequenceKeypoint.new(Clamp(Frac, 0, 1), FromHSV(Hue, WaveFlags.RainbowSat, 1))
                    end
                    ColorGradient.Color = NewColorSequence(Kps)

                elseif Mode == "Pulse" then
                    local PulsePhase = (T * Speed + Phase) * Pi * 2
                    local Alpha = (Sin(PulsePhase) + 1) / 2
                    local C = CurrentAccent
                    local PulseColor = NewColor3(C.R * Alpha, C.G * Alpha, C.B * Alpha)
                    local PulseEdge = NewColor3(C.R + (1 - C.R) * (1 - Alpha * 0.5), C.G + (1 - C.G) * (1 - Alpha * 0.5), C.B + (1 - C.B) * (1 - Alpha * 0.5))
                    ColorGradient.Offset = NewVector2(0, 0)
                    local A, B = Dir == "Right to Left" and PulseColor or PulseEdge, Dir == "Right to Left" and PulseEdge or PulseColor
                    ColorGradient.Color = NewColorSequence({
                        ColorSequenceKeypoint.new(0, A),
                        ColorSequenceKeypoint.new(0.5, B),
                        ColorSequenceKeypoint.new(1, A)
                    })

                elseif Mode == "Dual Fade" then
                    local DualPhase = (T * Speed + Phase) * Pi * 2 * Spread
                    local Alpha1 = (Sin(DualPhase) + 1) / 2
                    local Alpha2 = (Sin(DualPhase + Pi) + 1) / 2
                    local C = CurrentAccent
                    local Secondary = WaveFlags.SecondaryColor
                    local Col1 = NewColor3(C.R + (1 - C.R) * (1 - Alpha1), C.G + (1 - C.G) * (1 - Alpha1), C.B + (1 - C.B) * (1 - Alpha1))
                    local Col2 = NewColor3(Secondary.R + (1 - Secondary.R) * (1 - Alpha2), Secondary.G + (1 - Secondary.G) * (1 - Alpha2), Secondary.B + (1 - Secondary.B) * (1 - Alpha2))
                    local A, B = Dir == "Right to Left" and Col2 or Col1, Dir == "Right to Left" and Col1 or Col2
                    ColorGradient.Offset = NewVector2(0, 0)
                    ColorGradient.Color = NewColorSequence({
                        ColorSequenceKeypoint.new(0, A),
                        ColorSequenceKeypoint.new(0.25, NewRGB(255, 255, 255)),
                        ColorSequenceKeypoint.new(0.5, B),
                        ColorSequenceKeypoint.new(0.75, NewRGB(255, 255, 255)),
                        ColorSequenceKeypoint.new(1, A)
                    })

                elseif Mode == "Strobe" then
                    local StrobePhase = Floor(T * Speed * 2) % 2 == 0
                    ColorGradient.Offset = NewVector2(0, 0)
                    local A, B = Dir == "Right to Left" and NewRGB(255, 255, 255) or CurrentAccent, Dir == "Right to Left" and CurrentAccent or NewRGB(255, 255, 255)
                    if StrobePhase then
                        ColorGradient.Color = NewColorSequence({ColorSequenceKeypoint.new(0, A), ColorSequenceKeypoint.new(0.5, B), ColorSequenceKeypoint.new(1, A)})
                    else
                        ColorGradient.Color = NewColorSequence({ColorSequenceKeypoint.new(0, B), ColorSequenceKeypoint.new(0.5, A), ColorSequenceKeypoint.new(1, B)})
                    end

                elseif Mode == "Sweep" then
                    local RawP = (T * Speed + Phase) % 1
                    local SweepPhase
                    if Dir == "Right to Left" then SweepPhase = 1 - RawP
                    elseif Dir == "Center Out" then SweepPhase = RawP < 0.5 and RawP * 2 or (1 - RawP) * 2
                    elseif Dir == "Edges In" then SweepPhase = RawP < 0.5 and (1 - RawP * 2) or (RawP * 2 - 1)
                    else SweepPhase = RawP end
                    local Sharpness = Clamp(0.15 * Spread * Distance, 0.01, 1)
                    local SweepKps = {}
                    for I = 0, 8 do
                        local Frac = I / 8
                        local Dist = Min(Abs(Frac - SweepPhase), 1 - Abs(Frac - SweepPhase))
                        local Alpha = Max(0, 1 - Dist / Sharpness)
                        local C = CurrentAccent
                        SweepKps[I + 1] = ColorSequenceKeypoint.new(Clamp(Frac, 0, 1), NewColor3(C.R + (1 - C.R) * (1 - Alpha), C.G + (1 - C.G) * (1 - Alpha), C.B + (1 - C.B) * (1 - Alpha)))
                    end
                    ColorGradient.Offset = NewVector2(0, 0)
                    ColorGradient.Color = NewColorSequence(SweepKps)

                elseif Mode == "Shimmer" then
                    ColorGradient.Offset = NewVector2(0, 0)
                    ColorGradient.Color = NewColorSequence(BuildDirKps(8, T, CurrentAccent, Dir, Speed, Amplitude, Phase))

                elseif Mode == "Breathe" then
                    local BreathePhase = (T * Speed * 0.4 + Phase) * Pi * 2
                    local Breathe = ((Sin(BreathePhase) + 1) / 2) ^ 2 * Amplitude
                    local C = CurrentAccent
                    local Col = NewColor3(C.R + (1 - C.R) * (1 - Breathe), C.G + (1 - C.G) * (1 - Breathe), C.B + (1 - C.B) * (1 - Breathe))
                    ColorGradient.Offset = NewVector2(0, 0)
                    ColorGradient.Color = NewColorSequence({ColorSequenceKeypoint.new(0, Col), ColorSequenceKeypoint.new(0.5, Col), ColorSequenceKeypoint.new(1, Col)})

                elseif Mode == "Chase" then
                    local RawC = (T * Speed + Phase) % 1
                    local ChasePhase
                    if Dir == "Right to Left" then ChasePhase = 1 - RawC
                    elseif Dir == "Center Out" then ChasePhase = RawC < 0.5 and RawC * 2 or (1 - RawC) * 2
                    elseif Dir == "Edges In" then ChasePhase = RawC < 0.5 and (1 - RawC * 2) or (RawC * 2 - 1)
                    else ChasePhase = RawC end
                    local Width = Clamp(0.08 / Spread, 0.02, 0.4)
                    local ChaseKps = {}
                    local C = CurrentAccent
                    for I = 0, 10 do
                        local Frac = I / 10
                        local Dist = Min(Abs(Frac - ChasePhase), 1 - Abs(Frac - ChasePhase))
                        local Alpha = Max(0, 1 - Dist / Width) * Amplitude
                        ChaseKps[I + 1] = ColorSequenceKeypoint.new(Clamp(Frac, 0, 1), NewColor3(
                            Min(1, C.R + (1 - C.R) * (1 - Alpha) + Alpha * 0.3),
                            Min(1, C.G + (1 - C.G) * (1 - Alpha) + Alpha * 0.3),
                            Min(1, C.B + (1 - C.B) * (1 - Alpha) + Alpha * 0.3)
                        ))
                    end
                    ColorGradient.Offset = NewVector2(0, 0)
                    ColorGradient.Color = NewColorSequence(ChaseKps)
                end

                LastWaveOn = true
            end))
        end

        Library:UpdateWatermark(cheatname)
        Library.WaveFlags = WaveFlags
        Library.WatermarkFrame = MainWatermark
        Library.WatermarkColorGradient = ColorGradient
    end
    -- End of bullshit
    -- Pretty much pasted notifications, lol!
    function Library:CreateKeybindList()
        local KeybindList = {
            CanUse = true,
            Items = {}
        }

        local SavedX = 20
        local SavedY = 200

        local MainKeybindList = Library:CreateObject("Frame", {
            Name = "KeybindList",
            Position = UDim2.fromOffset(SavedX, SavedY),
            BorderColor3 = NewRGB(0, 0, 0),
            Size = NewUDim2(0, 200, 0, 20),
            BorderSizePixel = 0,
            ZIndex = 10000,
            BackgroundColor3 = NewRGB(0, 0, 0),
            Active = true,
            Visible = false,
            Parent = Library.UI.ScreenGUI
        }, true)

        local UIGradient = Library:CreateObject("UIGradient", {
            Transparency = NumberSequence.new{
                NewNumberKeypoint(0, 1),
                NewNumberKeypoint(0.25, 0.6119999885559082),
                NewNumberKeypoint(0.5, 0.625),
                NewNumberKeypoint(0.75, 0.625),
                NewNumberKeypoint(1, 1)
            },
            Parent = MainKeybindList
        }, true)

        local UIStroke = Library:CreateObject("UIStroke", {
            Parent = MainKeybindList
        }, true)

        local UIGradient_1 = Library:CreateObject("UIGradient", {
            Transparency = NumberSequence.new{
                NewNumberKeypoint(0, 1),
                NewNumberKeypoint(0.232, 0.4000000059604645),
                NewNumberKeypoint(0.5, 0.4000000059604645),
                NewNumberKeypoint(0.75, 0.4000000059604645),
                NewNumberKeypoint(1, 1)
            },
            Parent = UIStroke
        }, true)

        local TextContainer = Library:CreateObject("Frame", {
            Name = "TextContainer",
            Size = NewUDim2(1, 0, 1, 0),
            BackgroundTransparency = 1,
            Parent = MainKeybindList
        }, true)

        local ContainerLayout = Library:CreateObject("UIListLayout", {
            FillDirection = Enum.FillDirection.Vertical,
            SortOrder = Enum.SortOrder.LayoutOrder,
            VerticalAlignment = Enum.VerticalAlignment.Top,
            Parent = TextContainer
        }, true)

        local ContainerPadding = Library:CreateObject("UIPadding", {
            PaddingRight = NewUDim(0, 35),
            PaddingLeft = NewUDim(0, 35),
            PaddingTop = NewUDim(0, 5),
            PaddingBottom = NewUDim(0, 5),
            Parent = TextContainer
        }, true)

        local KeybindText = Library:CreateObject("TextLabel", {
            FontFace = Library.UI.NewFont,
            TextColor3 = NewRGB(208, 208, 208),
            BorderColor3 = NewRGB(0, 0, 0),
            Text = "",
            Name = "KeybindText",
            Size = NewUDim2(1, 0, 0, 0),
            AutomaticSize = Enum.AutomaticSize.Y,
            ZIndex = 10000,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            BorderSizePixel = 0,
            RichText = true,
            TextSize = 14,
            BackgroundColor3 = NewRGB(255, 255, 255),
            Parent = TextContainer
        }, true)

        local TextStroke = Library:CreateObject("UIStroke", {
            Parent = KeybindText,
            LineJoinMode = Enum.LineJoinMode.Miter,
            Color = NewRGB(50, 50, 50),
        }, true)

        function UpdateBounds()
            local W = KeybindText.TextBounds.X
            local H = KeybindText.TextBounds.Y
            local TargetSize = NewUDim2(0, Max(186, W + 70), 0, Max(1, H + 10))
            Library:TweenObject(MainKeybindList, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Size = TargetSize})
        end

        KeybindText:GetPropertyChangedSignal("TextBounds"):Connect(UpdateBounds)

        local Dragging = false
        local DragInput, DragStart, StartPos

        MainKeybindList.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = Input.Position
                StartPos = MainKeybindList.Position
                Input.Changed:Connect(function()
                    if Input.UserInputState == Enum.UserInputState.End then
                        Dragging = false
                    end
                end)
            end
        end)

        MainKeybindList.InputEnded:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
                Dragging = false
                if Library.Flags["KeybindListX"] and Library.Flags["KeybindListX"].Set then
                    Library.Flags["KeybindListX"]:Set(MainKeybindList.Position.X.Offset)
                end
                if Library.Flags["KeybindListY"] and Library.Flags["KeybindListY"].Set then
                    Library.Flags["KeybindListY"]:Set(MainKeybindList.Position.Y.Offset)
                end
            end
        end)

        Insert(Library.Connections, UserInputService.InputChanged:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
                DragInput = Input
            end
        end))

        Insert(Library.Connections, UserInputService.InputChanged:Connect(function(Input)
            if Input == DragInput and Dragging then
                local Delta = Input.Position - DragStart
                local NewX = Clamp(StartPos.X.Offset + Delta.X, 0, Viewport.X - MainKeybindList.AbsoluteSize.X)
                local NewY = Clamp(StartPos.Y.Offset + Delta.Y, 0, Viewport.Y - MainKeybindList.AbsoluteSize.Y)
                MainKeybindList.Position = NewUDim2(StartPos.X.Scale, NewX, StartPos.Y.Scale, NewY)
            end
        end))

        local ModeCapitalize = {
            ["toggle"] = "Toggle",
            ["always on"] = "Always on",
            ["on hotkey"] = "On hotkey",
            ["hold"] = "Hold"
        }

        function Library:ToggleKeybindList(State)
            KeybindList.CanUse = State
            if not State then
                Library:TweenObject(MainKeybindList, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundTransparency = 1})
                Library:TweenObject(KeybindText, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextTransparency = 1})
                Library:TweenObject(TextStroke, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Transparency = 1})
                Library:TweenObject(UIStroke, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Transparency = 1})
                Delay(Library.UI.TweenSpeed, function()
                    if not KeybindList.CanUse then
                        MainKeybindList.Visible = false
                    end
                end)
            else
                local HasItems = false
                for _ in KeybindList.Items do
                    HasItems = true
                    break
                end
                if HasItems then
                    MainKeybindList.Visible = true
                    Library:TweenObject(MainKeybindList, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundTransparency = 0})
                    Library:TweenObject(KeybindText, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextTransparency = 0})
                    Library:TweenObject(TextStroke, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Transparency = 0})
                    Library:TweenObject(UIStroke, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Transparency = 0})
                end
            end
        end

        local PendingUpdate = false
        function Library:UpdateKeybindList()
            if PendingUpdate then return end
            PendingUpdate = true
            task.defer(function()
                PendingUpdate = false
                local Lines = {}
                local A = Library.Theme.Default.Accent
                local AccentHex = Format("#%02x%02x%02x", Floor(A.R * 255), Floor(A.G * 255), Floor(A.B * 255))
                local ActiveCount = 0
                for Index, Item in KeybindList.Items do
                    ActiveCount = ActiveCount + 1
                    local RawMode = tostring(Item.Mode or "Toggle"):lower()
                    local ModeStr = ModeCapitalize[RawMode] or (RawMode:sub(1,1):upper() .. RawMode:sub(2))
                    local ColorTag = Item.State and ("<font color=\"" .. AccentHex .. "\">") or "<font color=\"#757575\">"
                    Insert(Lines, ColorTag .. "[" .. tostring(Item.Key):upper() .. " : " .. ModeStr .. "]</font> " .. tostring(Item.Name))
                end
                KeybindText.Text = Concat(Lines, "\n")
                
                if KeybindList.CanUse then
                    if ActiveCount > 0 then
                        MainKeybindList.Visible = true
                        Library:TweenObject(MainKeybindList, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundTransparency = 0})
                        Library:TweenObject(KeybindText, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextTransparency = 0})
                        Library:TweenObject(TextStroke, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Transparency = 0})
                        Library:TweenObject(UIStroke, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Transparency = 0})
                    else
                        Library:TweenObject(MainKeybindList, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {BackgroundTransparency = 1})
                        Library:TweenObject(KeybindText, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {TextTransparency = 1})
                        Library:TweenObject(TextStroke, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Transparency = 1})
                        Library:TweenObject(UIStroke, NewTweenInfo(Library.UI.TweenSpeed, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Transparency = 1})
                        Delay(Library.UI.TweenSpeed, function()
                            local ReCheck = false
                            for _ in KeybindList.Items do ReCheck = true break end
                            if not ReCheck then
                                MainKeybindList.Visible = false
                            end
                        end)
                    end
                end
            end)
        end

        function Library:AddKeybindFrame(Mode, Name, Key, Section, State)
            KeybindList.Items[Name] = {Mode = Mode, Name = Name, Key = Key, Section = Section, State = State or false}
            Library:UpdateKeybindList()
        end

        function Library:RemoveKeybindFrame(Name)
            KeybindList.Items[Name] = nil
            Library:UpdateKeybindList()
        end

        function Library:UpdateKeybindFrame(Mode, Name, Key, Section, State)
            if KeybindList.Items[Name] then
                if Mode then KeybindList.Items[Name].Mode = Mode end
                if Key then KeybindList.Items[Name].Key = Key end
                if State ~= nil then KeybindList.Items[Name].State = State end
                Library:UpdateKeybindList()
            end
        end

        Library.KeybindListFrame = MainKeybindList
        Library.KeybindListObject = KeybindList
        Library:UpdateKeybindList()
    end
    --
    function Library:Notify(Options)
        Options = Library:Validate({
            Message = "Notification",
            Delay = 3,
            Position = "Top Left",
        }, Options or {})
        --
        local Notification = {}
        local Path = Options.Position == "Top Left" and Library.UI.Notifications.TopLeft or Library.UI.Notifications.Middle
        --
        local NotificationFrameObject = Library:CreateObject("Frame", {
            Name = "Watermark",
            Position = NewUDim2(0, 0, 0, 0),
            BorderColor3 = NewRGB(0, 0, 0),
            Size = NewUDim2(0, 400, 0, 20),
            BorderSizePixel = 0,
            ZIndex = 10000,
            BackgroundColor3 = NewRGB(0, 0, 0),
            Parent = Library.UI.ScreenGUI
        }, true)
        --
        NotificationFrameObject.BackgroundTransparency = 1
        --
        local UIGradient = Library:CreateObject("UIGradient", {
            Transparency = NumberSequence.new{
                NewNumberKeypoint(0, 1),
                NewNumberKeypoint(0.25, 0.6119999885559082),
                NewNumberKeypoint(0.5, 0.625),
                NewNumberKeypoint(0.75, 0.625),
                NewNumberKeypoint(1, 1)
            },
            Parent = NotificationFrameObject
        }, true)
        --
        local UIStroke = Library:CreateObject("UIStroke", {
            Parent = NotificationFrameObject
        }, true)
        --
        UIStroke.Transparency = 1
        --
        local UIGradient_1 = Library:CreateObject("UIGradient", {
            Transparency = NumberSequence.new{
                NewNumberKeypoint(0, 1),
                NewNumberKeypoint(0.232, 0.4000000059604645),
                NewNumberKeypoint(0.5, 0.4000000059604645),
                NewNumberKeypoint(0.75, 0.4000000059604645),
                NewNumberKeypoint(1, 1)
            },
            Parent = UIStroke
        }, true)
        --
        local NotificationText = Library:CreateObject("TextLabel", {
            FontFace = Library.UI.NewFont,
            TextColor3 = NewRGB(208, 208, 208),
            BorderColor3 = NewRGB(0, 0, 0),
            Text = Options.Message,
            Name = "Text",
            Size = NewUDim2(1, 0, 1, 0),
            ZIndex = 10000,
            BackgroundTransparency = 1,
            TextXAlignment = Enum.TextXAlignment.Left,
            BorderSizePixel = 0,
            RichText = true,
            TextSize = 14,
            BackgroundColor3 = NewRGB(255, 255, 255),
            Parent = NotificationFrameObject
        }, true)
        --
        local Stroke = Library:CreateObject("UIStroke", {
            Parent = NotificationText,
            LineJoinMode = Enum.LineJoinMode.Miter,
            Color = NewRGB(50, 50, 50),
        }, true)
        --
        Stroke.Transparency = 1
        --
        NotificationText.TextTransparency = 1
        --
        local UIPadding = Library:CreateObject("UIPadding", {
            PaddingRight = NewUDim(0, 22),
            PaddingLeft = NewUDim(0, 22),
            Parent = NotificationText
        }, true)
        --
        local NotificationFrame = {
            Class = "Notification",
            Object = NotificationFrameObject,
            Text = NotificationText,
        }
        --
        NotificationFrameObject.Position = Options.Position == "Top Left" and NewUDim2(0, -70, 0, 80 + (#Path * 24)) or NewUDim2(0, Viewport.X / 2 - (NotificationText.TextBounds.X + 4) / 2, 1, -150)
        --
        do -- Functions
            function Notification:UpdatePositions()
                local TotalHeight = 80
                local Padding = 6
                --
                for Index = #Path, 1, -1 do
                    local Value = Path[Index]
                    local NewPosition
                    --
                    if Options.Position == "Top Left" then
                        NewPosition = NewUDim2(0, 5, 0, TotalHeight)
                        TotalHeight = TotalHeight + Value.Object.AbsoluteSize.Y + Padding
                    else
                        NewPosition = NewUDim2(0, Viewport.X / 2 - (Value.Text.TextBounds.X + 4) / 2, 1, -150 - (Index * 24))
                    end
                    --
                    Library:TweenObject(Value.Object, NewTweenInfo(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = NewPosition})
                end
            end
            --
            function Notification:RemoveFrame()
                Library:TweenObject(NotificationFrameObject, NewTweenInfo(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundTransparency = 1})
                Library:TweenObject(NotificationText, NewTweenInfo(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {TextTransparency = 1})
                Library:TweenObject(UIStroke, NewTweenInfo(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Transparency = 1})
                Library:TweenObject(Stroke, NewTweenInfo(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Transparency = 1})
                --
                Delay(0.25, function()
                    NotificationFrameObject:Destroy()

                    Remove(Path, Find(Path, NotificationFrame))

                    Notification:UpdatePositions()
                end)
            end
            --
            function Notification:UpdateText(Text)
                NotificationText.Text = Text
                NotificationFrameObject.Size = NewUDim2(NotificationFrameObject.Size.X.Scale, NotificationText.TextBounds.X + 44, 0, NotificationText.TextBounds.Y + 4)
            end
            --
            function Notification:Update()
                local TotalHeight = 50
                local Padding = 6
                --
                Library:TweenObject(NotificationFrameObject, NewTweenInfo(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {BackgroundTransparency = 0})
                Library:TweenObject(NotificationText, NewTweenInfo(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {TextTransparency = 0})
                Library:TweenObject(UIStroke, NewTweenInfo(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Transparency = 0})
                Library:TweenObject(Stroke, NewTweenInfo(0.4, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Transparency = 0})
                NotificationFrameObject.Size = NewUDim2(NotificationFrameObject.Size.X.Scale, NotificationText.TextBounds.X + 44, 0, NotificationText.TextBounds.Y + 4)
                --
                for Index, Value in Path do
                    TotalHeight = TotalHeight + Value.Object.AbsoluteSize.Y + Padding
                end
                --
                local NewPosition = Options.Position == "Top Left" and NewUDim2(0, 5, 0, TotalHeight) or NewUDim2(0, Viewport.X / 2 - (NotificationText.TextBounds.X + 4) / 2, 1, -150)
                --
                Library:TweenObject(NotificationFrameObject, NewTweenInfo(0.25, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {Position = NewPosition}, function()
                    if Options.Delay ~= Infinite then
                        Delay(Options.Delay, Notification.RemoveFrame)
                    end
                end)
            end
        end
        --
        Notification:Update()
        --
        Insert(Path, 1, NotificationFrame)
        --
        Notification:UpdatePositions()
        --
        return Notification
    end
    --
    function Library:Init()
        Library.UI.Initialized = true
        --
        Library:CreateWatermark()
        Library:CreateKeybindList()
        --
        Library:Connection(Camera:GetPropertyChangedSignal("ViewportSize"), function()
            Viewport = Camera.ViewportSize
            --
            Outline.Position = UDim2.fromOffset((Viewport.X / 2) - (Outline.Size.X.Offset / 2), (Viewport.Y / 2) - (Outline.Size.Y.Offset / 2))
        end)
    end
    --
    function Library:Unload()
        if Library.Destroyed then return end
        Library.Unloaded = true

        --[[if Library.UnloadESP then
            pcall(Library.UnloadESP)
        end]]
        local Buffer = {}
        local Count = 0

        local function CloseConnection(Value)
            Value:Disconnect()
        end

        local function CancelTween(Value)
            Value:Cancel()
        end

        local function DestroyEntry(Value)
            Value[1]:Destroy()
        end

        local function RemoveDrawing(Value)
            if typeof(Value) == "Instance" then
                Value:Destroy()
            elseif Value.Remove then
                Value:Remove()
            end
        end

        for Index, Value in Library.Connections do
            Count += 1
            Buffer[Count] = Value
        end

        Clear(Library.Connections)

        for Index = 1, Count do
            local Value = Buffer[Index]
            Buffer[Index] = nil

            pcall(CloseConnection, Value)
        end

        Count = 0

        for Tween in Library.Tweens do
            Count += 1
            Buffer[Count] = Tween
        end

        Clear(Library.Tweens)

        for Index = 1, Count do
            local Value = Buffer[Index]
            Buffer[Index] = nil

            pcall(CancelTween, Value)
        end

        Count = 0

        for MainUI, Driver in Library.FadeDrivers do
            Count += 1
            Buffer[Count] = Driver
        end

        Clear(Library.FadeDrivers)

        for Index = 1, Count do
            local Value = Buffer[Index]
            Buffer[Index] = nil

            pcall(CloseConnection, Value)
        end

        pcall(RunService.UnbindFromRenderStep, RunService, "\0UpdateFov")

        for Index = #Restores, 1, -1 do
            local Restore = Restores[Index]
            Restores[Index] = nil

            Spawn(Restore)
        end

        Clear(Restores)

        pcall(function()
            Camera.CameraType = Enum.CameraType.Custom

            local Character = Client.Character
            local Subject = Character and (FindFirstChild(Character, "CameraPart") or FindFirstChild(Character, "HumanoidRootPart"))

            if Subject then
                Camera.CameraSubject = Subject
            end
        end)

        if GetGlobalEnv.DualESP and GetGlobalEnv.DualESP.Unload then
            Spawn(GetGlobalEnv.DualESP.Unload)
        end

        Count = 0

        for Index, Objects in Library.Objects do
            Count += 1
            Buffer[Count] = Objects
        end

        Clear(Library.Objects)

        for Index = 1, Count do
            local Value = Buffer[Index]
            Buffer[Index] = nil

            pcall(DestroyEntry, Value)
        end

        Count = 0

        for Index, Object in Library.DrawObjects do
            Count += 1
            Buffer[Count] = Object
        end

        Clear(Library.DrawObjects)

        for Index = 1, Count do
            local Value = Buffer[Index]
            Buffer[Index] = nil

            pcall(RemoveDrawing, Value)
        end

        for Name, Value in Hidden do
            GetGlobalEnv[Name] = Value
        end

        Clear(Library.Flags)

        Library.Destroyed = true
    end
    --
    function Library:Disable()
        for Index, Value in Library.Flags do
            if Value.Set then
                Value:Set(false)
            end
        end
    end
    --
    return SetMetaTable(Window, Library)
end
