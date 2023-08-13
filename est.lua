local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "JohnCena Hub by NotGayeasy",
    LoadingTitle = "JohnCena Hub",
    LoadingSubtitle = "by NotGayeasy",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "ezezez"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = true, -- Set this to true to use our key system
    KeySettings = {
       Title = "JohnCena Hub by NotGayeasy Key System",
       Subtitle = "Key System",
       Note = "https://sub2unlock.org/64d0bbe1d2c6c",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"v72144982s01vnsidot43v4891"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })
 local Tab = Window:CreateTab("Normal Farm (Still having Bug)", 4483362458) -- Title, Image
 local Section = Tab:CreateSection("Rilfe Method Still Buggy(dont use)")
local Button = Tab:CreateButton({
	Name = "Fishman Insta TP",
	Callback = function()
	     local teleport_table = {
    location25 = Vector3.new(5639, -94, -16611) -- your desired position
}

local tween_s = game:GetService('TweenService')
local tweeninfo = TweenInfo.new(0,Enum.EasingStyle.Linear)

local lp = game.Players.LocalPlayer

function bypass_teleport(v)
    if lp.Character and 
    lp.Character:FindFirstChild('HumanoidRootPart') then
        local cf = CFrame.new(v)
        local a = tween_s:Create(lp.Character.HumanoidRootPart,tweeninfo,{CFrame=cf})
        a:Play()
    end
end

bypass_teleport(teleport_table.location25)
      		print("button pressed")
  	end    
})
