
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local mouse = LocalPlayer:GetMouse()
local Camera = worksarrentCamera
local Debris = game:GetService("Debris")
local UserInputService = game:GetService("UserInputService")
warn("Loading script...")
    local A_2 = "All"
    local A_1 = ""
local Event = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest




local X = Material.Load({
    Title = "CreySoundScriptHub",
    Style = 3,
    SizeX = 500,
    SizeY = 350,
    Theme = "Dark",
    ColorOverrides = {
    }
})
local V = X.New({
    Title = "Main"
})
local Y = X.New({
    Title = "Ragdoll Engine/pushing simulator"
})

local A = X.New({
    Title = "Infectious Smile"
})

local B = X.New({
    Title = "Freeze Tag"
})
local C = X.New({
    Title = "Legends Of Speed ⚡"
})

--[[

]]

local Test = Y.Button({
    Text = "Jail All",
    Callback = function()
        game.ReplicatedStorage.Events.Release:FireServer()
        for i,v in pairs(game.Players:GetPlayers()) do 
            if v.Name~=game.Players.LocalPlayer.Name then 
                game.ReplicatedStorage.Events.Jail:FireServer(v)
            end
        end
        Event:FireServer(A_1, A_2)
    end
})

local Test = Y.Button({
    Text = "Un-Jail All",
    Callback = function()
        game.ReplicatedStorage.Events.Release:FireServer()
    end
})

local Test = Y.Button({
    Text = "Respawn All",
    Callback = function()
        for i,v in pairs(game.Players:GetPlayers()) do 
            if v.Name~=game.Players.LocalPlayer.Name then 
                game.ReplicatedStorage.Events.Jail:FireServer(v)
            end
        end
        game.ReplicatedStorage.Events.Release:FireServer()
    end
})

local Test = Y.Button({
    Text = "Spawn Jail Model",
    Callback = function()
        game.ReplicatedStorage.Events.Jail:FireServer()
    end
})



local Test = Y.Button({
    Text = "OP Push",
    Callback = function()
        local Animation = Instance.new("Animation")
Animation.AnimationId = "rbxassetid://1984283994"

game:GetService("Players").LocalPlayer.Backpack.Push:Destroy()

Instance = Instance.new("Tool", game:GetService("Players").LocalPlayer.Backpack)
Instance.Name = "Push"
Instance.ToolTip = "Cooldown: 0 seconds"
Instance.TextureId = "rbxassetid://2356300816"
Instance.RequiresHandle = false

Instance.Activated:connect(
    function()
        if game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").RigType == Enum.HumanoidRigType.R15 then
            game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):LoadAnimation(Animation):Play()
            for i, v in pairs(game:GetService("Players"):GetDescendants()) do
                if v:IsA("RemoteEvent") and v.Name == "PushEvent" then
                    v:FireServer()
                end
            end
        else
            for i, v in pairs(game:GetService("Players"):GetDescendants()) do
                if v:IsA("RemoteEvent") and v.Name == "PushEvent" then
                    v:FireServer()
                end
            end
        end
    end
)
    end
})

local h = Y.Toggle({
    Text = "Anti-Ragdoll",
    Callback = function(Value)
    if game.PlaceId == 3339793570 or game.PlaceId == 2041312716 then
        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Local Ragdoll").Disabled = true
        end
    end
})

local Test = V.Button({
    Text = "Exoliner (Client)",
    Callback = function()
        --[[

▓█████ ▒██   ██▒ ▒█████   ██▓     ██▓ ███▄    █ ▓█████  ██▀███  
▓█   ▀ ▒▒ █ █ ▒░▒██▒  ██▒▓██▒    ▓██▒ ██ ▀█   █ ▓█   ▀ ▓██ ▒ ██▒
▒███   ░░  █   ░▒██░  ██▒▒██░    ▒██▒▓██  ▀█ ██▒▒███   ▓██ ░▄█ ▒
▒▓█  ▄  ░ █ █ ▒ ▒██   ██░▒██░    ░██░▓██▒  ▐▌██▒▒▓█  ▄ ▒██▀▀█▄  
░▒████▒▒██▒ ▒██▒░ ████▓▒░░██████▒░██░▒██░   ▓██░░▒████▒░██▓ ▒██▒
░░ ▒░ ░▒▒ ░ ░▓ ░░ ▒░▒░▒░ ░ ▒░▓  ░░▓  ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒▓ ░▒▓░
 ░ ░  ░░░   ░▒ ░  ░ ▒ ▒░ ░ ░ ▒  ░ ▒ ░░ ░░   ░ ▒░ ░ ░  ░  ░▒ ░ ▒░
   ░    ░    ░  ░ ░ ░ ▒    ░ ░    ▒ ░   ░   ░ ░    ░     ░░   ░ 
   ░  ░ ░    ░      ░ ░      ░  ░ ░           ░    ░  ░   ░     
                                                                

its on client mode sadly
]]

loadstring(game:HttpGet("https://raw.githubusercontent.com/CreySound/Exoliner/main/Source.lua", true))()
    end
})

local Test = Y.Button({
    Text = "Jail-And-Unjail",
    Callback = function()
        for i,v in pairs(game.Players:GetPlayers()) do 
            if v.Name~=game.Players.LocalPlayer.Name then 
                game.ReplicatedStorage.Events.Jail:FireServer(v)
            end
        end
        game.ReplicatedStorage.Events.Release:FireServer()
        Event:FireServer(A_1, A_2)
    end
})

local h = A.Toggle({
    Text = "No Cooldown Bat",
    Callback = function(Value)
        
    end
})

local h = A.Button({
    Text = "No-Infect",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Stats.Infected:Destroy()
    end
})

local h = A.Button({
    Text = "Delete Infect Part",
    Callback = function(Value)
        workspace.Map.Infectors.Infector:Destroy()
    end
})
local h = A.Button({
    Text = "Delete Map",
    Callback = function(Value)
        workspace.Map:Destroy()
    end
})

local h = A.Button({
    Text = "All Weapons",
    Callback = function(Value)
        
    end
})
local h = A.Label({
    Text = "",
    Callback = function(Value)
        
    end
})

local h = A.Button({
    Text = "Generate!",
    Callback = function(Value)
        
    end
})

local Test = B.Button({
    Text = "freeze tag gui",
    Callback = function()
        --Generated with Syntax's Converter, comet hub in the works! pastebin search coming soooon REEEEEEE.
--Counted 17 (objects this time!!!)
local function CreateInstance(cls,props)
local inst = Instance.new(cls)
for i,v in pairs(props) do
	inst[i] = v
end
return inst
end
	
local FreezeTagGUI = CreateInstance('ScreenGui',{DisplayOrder=0,Enabled=true,ResetOnSpawn=true,Name='FreezeTagGUI', Parent=game.CoreGui})
local Topframe = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.141176, 0.141176, 0.141176),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0873239413, 0, 0.223463684, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 243, 0, 29),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'Topframe',Parent = FreezeTagGUI})
local Mainframe = CreateInstance('Frame',{Style=Enum.FrameStyle.Custom,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.172549, 0.172549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0, 0, 1, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 243, 0, 175),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name = 'Mainframe',Parent = Topframe})
local Namebox = CreateInstance('TextBox',{ClearTextOnFocus=true,Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,MultiLine=false,Text='Player Name',TextColor3=Color3.new(0, 0, 0), PlaceholderText='', PlaceholderColor3=Color3.new(0.7, 0.7, 0.7),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.247059, 0.247059, 0.247059),BackgroundTransparency=0,BorderColor3=Color3.new(0.141176, 0.141176, 0.141176),BorderSizePixel=1,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0329218097, 0, 0.0514283963, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 226, 0, 24),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Namebox',Parent = Mainframe})
local GotoPlr = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Goto Player',TextColor3=Color3.new(0.494118, 0.494118, 0.494118),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.141176, 0.141176, 0.141176),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0329216868, 0, 0.24000001, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 109, 0, 23),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='GotoPlr',Parent = Mainframe})
local KillPlr = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Kill Player',TextColor3=Color3.new(0.494118, 0.494118, 0.494118),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.141176, 0.141176, 0.141176),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.514403164, 0, 0.24000001, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 109, 0, 23),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='KillPlr',Parent = Mainframe})
local GotoNextRunner = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Goto Next Runner',TextColor3=Color3.new(0.494118, 0.494118, 0.494118),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.141176, 0.141176, 0.141176),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.514403164, 0, 0.411797255, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 109, 0, 23),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='GotoNextRunner',Parent = Mainframe})
local GotoNextTagger = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Goto Next Tagger',TextColor3=Color3.new(0.494118, 0.494118, 0.494118),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.141176, 0.141176, 0.141176),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0329216868, 0, 0.411797255, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 109, 0, 23),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='GotoNextTagger',Parent = Mainframe})
local GotoAllRunners = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Goto All Runners',TextColor3=Color3.new(0.494118, 0.494118, 0.494118),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.141176, 0.141176, 0.141176),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.514403164, 0, 0.583225787, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 109, 0, 23),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='GotoAllRunners',Parent = Mainframe})
local GotoAllTaggers = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Goto All Taggers',TextColor3=Color3.new(0.494118, 0.494118, 0.494118),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.141176, 0.141176, 0.141176),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0329216868, 0, 0.583225787, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 109, 0, 23),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='GotoAllTaggers',Parent = Mainframe})
local Thaw = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Thaw',TextColor3=Color3.new(0.494118, 0.494118, 0.494118),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.141176, 0.141176, 0.141176),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0329216719, 0, 0.754654348, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 109, 0, 23),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Thaw',Parent = Mainframe})
local Safe = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='TP to lobby',TextColor3=Color3.new(0.494118, 0.494118, 0.494118),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.129412, 0.129412, 0.129412),BackgroundTransparency=0,BorderColor3=Color3.new(0.141176, 0.141176, 0.141176),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.514403224, 0, 0.754654348, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 109, 0, 23),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Safe',Parent = Mainframe})
local TextLabel = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='Psykek#3180',TextColor3=Color3.new(0.454902, 0.454902, 0.454902),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.172549, 0.172549, 0.172549),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.0864197537, 0, 0.886082947, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 200, 0, 19),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='TextLabel',Parent = Mainframe})
local Dlabel = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size24,Text='??',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=23,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.141176, 0.141176, 0.141176),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.131687239, 0, 0.103448279, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 25, 0, 23),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Dlabel',Parent = Topframe})
local Title = CreateInstance('TextLabel',{Font=Enum.Font.SourceSansBold,FontSize=Enum.FontSize.Size24,Text='Freeze Tag GUI',TextColor3=Color3.new(0.615686, 0.615686, 0.615686),TextScaled=false,TextSize=23,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.141176, 0.141176, 0.141176),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.23456791, 0, 0, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 129, 0, 26),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Title',Parent = Topframe})
local Dlabel2 = CreateInstance('TextLabel',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size24,Text='??',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=23,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,Active=false,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.141176, 0.141176, 0.141176),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.765432119, 0, 0.103448279, 0),Rotation=0,Selectable=false,Size=UDim2.new(0, 25, 0, 23),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Dlabel2',Parent = Topframe})
local Close = CreateInstance('TextButton',{Font=Enum.Font.SourceSans,FontSize=Enum.FontSize.Size14,Text='',TextColor3=Color3.new(0, 0, 0),TextScaled=false,TextSize=14,TextStrokeColor3=Color3.new(0, 0, 0),TextStrokeTransparency=1,TextTransparency=0,TextWrapped=false,TextXAlignment=Enum.TextXAlignment.Center,TextYAlignment=Enum.TextYAlignment.Center,AutoButtonColor=true,Modal=false,Selected=false,Style=Enum.ButtonStyle.Custom,Active=true,AnchorPoint=Vector2.new(0, 0),BackgroundColor3=Color3.new(0.141176, 0.141176, 0.141176),BackgroundTransparency=0,BorderColor3=Color3.new(0.105882, 0.164706, 0.207843),BorderSizePixel=0,ClipsDescendants=false,Draggable=false,Position=UDim2.new(0.962962866, 0, 0, 0),Rotation=0,Selectable=true,Size=UDim2.new(0, 9, 0, 9),SizeConstraint=Enum.SizeConstraint.RelativeXY,Visible=true,ZIndex=1,Name='Close',Parent = Topframe})

Topframe.Active = true
Topframe.Draggable = true

GotoNextRunner.MouseButton1Click:Connect(function()
	for i,v in pairs(game.Teams.Runner:GetPlayers()) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame		
end
end)

GotoNextTagger.MouseButton1Click:Connect(function()
	for i,v in pairs(game.Teams.Tagger:GetPlayers()) do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame		
end
end)

GotoPlr.MouseButton1Click:Connect(function()
			getplr = function(plxr)
	for i, v in pairs(game.Players:GetPlayers()) do
		if string.find(v.Name, plxr) then
			return v
		elseif v.Name:sub(1, plxr:len()):lower()== plxr:lower() then
			return v
		end
	end
end
local plr = getplr(Namebox.Text)
	game.Players.LocalPlayer.Character:MoveTo(plr.Character.UpperTorso.Position)
end)

Safe.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1943.64954, 165.571182, -156.552948)
end)

Thaw.MouseButton1Click:Connect(function()
	for i,v in pairs(game.Teams.Runner:GetPlayers()) do
	for i=1,40 do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
end
end
end)

GotoAllRunners.MouseButton1Click:Connect(function()
	for i,v in pairs(game.Teams.Runner:GetPlayers()) do
	for i=1,10 do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait()
end
end)

GotoAllTaggers.MouseButton1Click:Connect(function()
	for i,v in pairs(game.Teams.Tagger:GetPlayers()) do
	for i=1,50 do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(1)
end
end)

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local function RemoveSpaces(String)
	return String:gsub("%s+", "") or String
end

local function FindPlayer(String)
	String = RemoveSpaces(String)
	for _, _Player in pairs(Players:GetPlayers()) do
		if _Player.Name:lower():match('^'.. String:lower()) then
			return _Player
		end
	end
	return nil
end

KillPlr.MouseButton1Click:Connect(function()
	local Target = FindPlayer(Namebox.Text)
	if Target and Target.Character then
		local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
		local Torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("UpperTorso")
		
		local savepos = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
	    Torso.Anchored = true
	    local tool = Instance.new("Tool", LocalPlayer.Backpack)
	    local hat = LocalPlayer.Character:FindFirstChildOfClass("Accessory")
	    local hathandle = hat.Handle
	    hathandle.Parent = tool
	    hathandle.Massless = true
	    tool.GripPos = Vector3.new(0, 9e99, 0)
	    tool.Parent = LocalPlayer.Character
	    repeat wait() until LocalPlayer.Character:FindFirstChildOfClass("Tool") ~= nil
	    tool.Grip = CFrame.new(Vector3.new(0, 0, 0))
		Torso.Anchored = false
	    repeat LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = Target.Character:FindFirstChild("HumanoidRootPart").CFrame wait()
	    until Target.Character == nil or Target.Character:FindFirstChild("Humanoid").Health <= 0 or LocalPlayer.Character == nil or LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0 or (Target.Character:FindFirstChild("HumanoidRootPart").Velocity.magnitude - Target.Character:FindFirstChild("Humanoid").WalkSpeed) > (Target.Character:FindFirstChild("Humanoid").WalkSpeed + 20)
	    LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
	    hathandle.Parent = hat
	    hathandle.Massless = false
	    tool:Destroy()
	    LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = savepos
	else
		warn'no player found named like that or he has no char'
	end
end)

Close.MouseButton1Click:Connect(function()
	FreezeTagGUI:Destroy()
end)
    end
})

local h = B.Button({
    Text = "nerf taggers [WIP]",
    Callback = function(Value)
    game:GetService("ReplicatedStorage").GM.Remotes.WannaPlay:FireServer()
        	for i,v in pairs(game.Teams.Tagger:GetPlayers()) do
	        for i=1,50 do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
            wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait(1)
end
        
    end
})

local h = B.Button({
    Text = "nerf runners [WIP]",
    Callback = function(Value)
        		for i,v in pairs(game.Teams.Runner:GetPlayers()) do
	for i=1,10 do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame		
end
wait()
end
        
    end
})

local Test = C.Button({
    Text = "Inf Steps (Dosent stop)",
    Callback = function()

local args = {
    [1] = "collectOrb",
    [2] = "Red Orb",
    [3] = "City"
}
-- Script generated by SimpleSpy - credits to exx#9394

local arg_s = {
    [1] = "collectOrb",
    [2] = "Red Orb",
    [3] = "Snow City"
}

-- Script generated by SimpleSpy - credits to exx#9394

local arg__s = {
    [1] = "collectOrb",
    [2] = "Gem",
    [3] = "City"
}
-- Script generated by SimpleSpy - credits to exx#9394

local arg___s = {
    [1] = "collectOrb",
    [2] = "Orange Orb",
    [3] = "City"
}
-- Script generated by SimpleSpy - credits to exx#9394

local arg____s = {
    [1] = "collectOrb",
    [2] = "Yellow Orb",
    [3] = "City"
}
-- Script generated by SimpleSpy - credits to exx#9394

local arg_____s = {
    [1] = "collectOrb",
    [2] = "Orange Orb",
    [3] = "Space"
}
-- Script generated by SimpleSpy - credits to exx#9394
-- Script generated by SimpleSpy - credits to exx#9394

local arg25267s = {
    [1] = "collectOrb",
    [2] = "Red Orb",
    [3] = "Space"
}


local ar34gs = {
    [1] = "collectOrb",
    [2] = "Yellow Orb",
    [3] = "Space"
}


while wait() do
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(arg25267s))
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(ar34gs))
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(arg_____s))
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(arg____s))
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(arg___s))
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(arg__s))
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(arg_s))
    game:GetService("ReplicatedStorage").rEvents.orbEvent:FireServer(unpack(args))
end

    end
})
