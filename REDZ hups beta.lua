local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/SLK-gaming/New-Gui/refs/heads/main/New-Redz.lua"))()

local Window = redzlib:MakeWindow({
  Title = "redz hub [BETA ACCESS]",
  SubTitle = "redz fake",
  SaveFolder = "Redz real.lua"
})

Window:AddMinimizeButton({
    Button = { Image = "rbxassetid://87245917237197", BackgroundTransparency = 0 },
    Corner = { CornerRadius = UDim.new(0, 5) },
})

local TabDiscord = Window:MakeTab({"Discord", "info"})


TabDiscord:AddDiscordInvite({
    Name = "Redz hub | Community",
    Description = "Tham gia nhóm discord để nhận thông báo update mới",
    Logo = "rbxassetid://87245917237197",
    Invite = " https://discord.gg/7AkeHktEDe",