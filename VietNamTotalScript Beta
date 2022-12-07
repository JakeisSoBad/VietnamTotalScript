local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "VNtotalGui KeySystem", HidePremium = false, SaveConfig = true, IntroEnabled = true , IntroText = "VNtotalGui KeySystem"})

OrionLib:MakeNotification({
	Name = "Logged In",
	Content = "You are logged in as "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "vnsexy"
_G.KeyInput = "string"

function MakeScriptHub()
local Window = OrionLib:MakeWindow({Name = "VNtotalGui", HidePremium = false, SaveConfig = true, IntroEnabled = true , IntroText = "VNtotalGui"})

local Tab = Window:MakeTab({
	Name = "VNTotal",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Version1",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/JakeisSoBad/VietnamTotalScript/main/VietNamTotalScriptV1"))()
		OrionLib:Destroy()
  	end    
})


Tab:AddButton({
	Name = "Version2 recommend",
	Callback = function()
      	loadstring(game:HttpGet('https://raw.githubusercontent.com/JakeisSoBad/VietnamTotalScript/main/VietNamTotalScriptV2'))()
		OrionLib:Destroy()
  	end    
})
end


local Tab = Window:MakeTab({
	Name = "Enter Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddTextbox({
	Name = "EnterKey",
	Default = "Key",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Tab:AddButton({
	Name = "CheckKey",
	Callback = function()
      	if _G.KeyInput == _G.Key then
		MakeScriptHub()
		end
  	end    
})


Tab:AddButton({
	Name = "CopyLinkGetKey",
	Callback = function()
      		setclipboard("https://link-target.net/553457/keysystem")
  	end    
})
