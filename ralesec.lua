_G.Ai=false;_G.Delay=2;_G.AutoDetectSpam=false;spawn(function()game:GetService("ReplicatedStorage").Security.RemoteEvent:Destroy()game:GetService("ReplicatedStorage").Security[""]:Destroy()game:GetService("ReplicatedStorage").Security:Destroy()game:GetService("Players").LocalPlayer.PlayerScripts.Client.DeviceChecker:Destroy()end)local a=workspace:WaitForChild("Alive",9e9)local b=game:GetService("Players")local b=b.LocalPlayer;local c=game:GetService("ReplicatedStorage")local c=c:WaitForChild("Remotes",9e9)local c=c:WaitForChild("ParryAttempt",9e9)local d=workspace:WaitForChild("Balls",9e9)local function e()local c=math.huge;local d=b.Character and b.Character:FindFirstChild("HumanoidRootPart")local e=nil;for a,a in pairs(a:GetChildren())do if a:FindFirstChild("Humanoid")and a.Humanoid.Health>50 then if a.Name~=b.Name and d and a:FindFirstChild("HumanoidRootPart")then local b=(a.HumanoidRootPart.Position-d.Position).Magnitude;if b<=c then c=b;e=a end end end end;return e end;local function f()task.spawn(function()if IsAlive()and#a:GetChildren()>1 then local a=0.5;local b=CFrame.new()local d={["enzo"]=Vector3.new()}local e={500,500}if a and b and d and e then c:FireServer(a,b,d,e)end end end)end;task.spawn(function()while task.wait()do if getgenv().SpamClickA and _G.AutoDetectSpam then f()end end end)local a=0;local c=0;local function f(d)local f=""d:GetPropertyChangedSignal("Position"):Connect(function()local b=b and b.Character and b.Character.PrimaryPart;local e=e()if d and b and e and e.PrimaryPart then local e=(b.Position-e.PrimaryPart.Position).Magnitude;local b=(b.Position-d.Position).Magnitude;c=25+math.clamp(a/3,0,25)if a>2 and e<c and b<55 then getgenv().SpamClickA=true else getgenv().SpamClickA=false end end end)d:GetAttributeChangedSignal("target"):Connect(function()f=d:GetAttribute("target")local c=e()if c then if f==c.Name or f==b.Name then a=a+1 else a=0 end end end)end;for a,a in pairs(d:GetChildren())do if a and not a:GetAttribute("realBall")then return end;f(a)end;d.ChildAdded:Connect(function(b)if not getgenv().AutoDetectSpam then return elseif b and not b:GetAttribute("realBall")then return end;getgenv().SpamClickA=false;a=0;f(b)end)local a=game:GetService("Players")local a=a.LocalPlayer;local b={Vector3.new(-166,10,-170),Vector3.new(-179,8,45),Vector3.new(-391,6,40),Vector3.new(-380,8,-190)}local function c()local a=math.random(1,#b)return b[a]end;local function b(b)return(b-a.Character.HumanoidRootPart.Position).Unit end;local function d()local c=c()local b=b(c)a.Character.Humanoid:MoveTo(a.Character.HumanoidRootPart.Position+b*50)wait(_G.Delay)end;while _G.Ai==true do d()end;local a=game:GetService("Workspace")local b=game:GetService("Players")local c=game:GetService("ReplicatedStorage")local d=game:GetService("RunService")local b=b.LocalPlayer;local e=game:GetService("UserInputService")local e=a:WaitForChild("Alive",9e9)local a=a:WaitForChild("Balls")local c=c.Remotes.ParryButtonPress;local e=nil;local f=nil;local function g()local a=a:GetChildren()f=nil;for a,a in ipairs(a)do if a:GetAttribute("realBall")==true then f=a;break end end end;local function a(a,c,d)local b=(b.Character.HumanoidRootPart.Position-f.Position).Unit;local a=a:Dot(b)-d:Dot(b)if a<=0 then return math.huge end;local b=c-40;return b/a end;local h=0.15;local i=0.002;local j=0.0010;local function k(a)local a=h-(a*i-j)return math.max(0.12,a)end;local function h()local b=b.Character;if not b or not b:FindFirstChild("Highlight")then return end;local d=b.PrimaryPart.Position;local b=b.PrimaryPart.Velocity;if f and not f.Parent then g()end;if not f then return end;local e=f;local d=(e.Position-d).Magnitude;if d<5 then c:Fire()return end;local a=a(e.Velocity,d,b)local b=k(e.Velocity.Magnitude)if a<b then c:Fire()end end;local function a()g()e=d.Heartbeat:Connect(function()h()end)end;local function b()if e then e:Disconnect()e=nil end end;local c=loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()local d=loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()local e=loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()local f=c:CreateWindow({Title="Rimus Hub V1",SubTitle="by dawid",TabWidth=160,Size=UDim2.fromOffset(500,400),Acrylic=true,Theme="Dark",MinimizeKey=Enum.KeyCode.LeftControl})local g={Main=f:AddTab({Title="Main",Icon="swords"})}local h=c.Options;do local c=g.Main:AddToggle("AutoParry",{Title="Auto Parry",Default=false})c:OnChanged(function(c)getgenv().parry=c;if getgenv().parry==true then a()else b()end end)local a=g.Main:AddToggle("A.I Auto Play",{Title="A.I Auto Play",Default=false})a:OnChanged(function(a)getgenv().ai=a end)local a=g.Main:AddSlider("Slider",{Title="Delay Ai Walk",Description="Sec",Default=2,Min=0,Max=5,Rounding=1,Callback=function(a)_G.Delay=a end})end;local a=g.Main:AddToggle("Detect Spam Parry",{Title="Detect Spam Parry",Default=false})a:OnChanged(function(a)_G.AutoDetectSpam=Value2 end)d:SetLibrary(c)e:SetLibrary(c)d:IgnoreThemeSettings()d:SetIgnoreIndexes({})e:SetFolder("setting")d:SetFolder("setting/specific-game")e:BuildInterfaceSection(g.Settings)d:BuildConfigSection(g.Settings)f:SelectTab(1)d:LoadAutoloadConfig()
