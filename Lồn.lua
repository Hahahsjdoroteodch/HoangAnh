loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

     local Window = MakeWinDow({
      Hub = {
      Title = "H.anh tổng hợp"
      Animation = "Ngon ko cu"
      },
     Key = {
     KeySystem = true,
     Title = "bản premium nên có key nhé"
     Description = "",
     KeyLink = "ib mình nhé nick tiktok nè @hoanganhlo_126
     Keys = {"đz nhưng ngu :)"},
     Notifi = {
     Notificantions = true,
     CorrectKey = "Đang Khởi Chạy Script...",
    IncorrectKey = "The Key is incorrect",
    CopyKeyLink = "Đã copy Key link"
   }
  }
 }}
 
       MinimizeButton({
       Image = "http://www.robloxcom/asset/?id=86749587185394",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      }}
      
------ Tab
     local Tab0o = MakeTab({Name = "Blox Fruits"})
     local Tab1o = MakeTav({Name = "mm2"})
------- BUTTON

    AddButton(Tab0o, {
    Name = "Ngọc Bổng Gamming",
   Callback = function()
      getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/ngocbonggaming/script/refs/heads/main/NgocBongVn.lua"))()
  end
  }}

    AddButton(Tab0o, {
    Name = "By TrongNguyen Skidder",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/trongdeptraihucscript/Script-BloxFruit/refs/heads/main/TrongNguyenSkidder.lua"))()
  end
  }}
  
  AddButton(Tab0o, {
    Name = "Redz hub Fake",
   Callback = function()
      local Settings = {
    JoinTeam = "Pirates"; -- Pirates / Marines
    Translator = true;   -- true / false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Hahahsjdoroteodch/HoangAnh/refs/heads/main/REDZ%20hups.txt"))()
  end
  }}
  
  AddButton(Tab0o, {
    Name = "Bypass Chest",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/hnc-roblox/HNC_Hub.Super.Chest/refs/heads/main/ChestBypass.lua"))()
  end
  }}
  
  AddButton(Tab1o, {
    Name = "Ko biết Tên",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Nerostash/MurderMystery2/refs/heads/main/NeroHuB"))()
  end
  }}
  
  AddButton(Tab0o, {
    Name = "Gravity Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))()
  end
  }}
  
  AddButton(Tab0o, {
    Name = "Teddy Hub",
   Callback = function()
      repeat task.wait() until game:IsLoaded() and game:GetService("Players") and game.Players.LocalPlayer and game.Players.LocalPlayer:FindFirstChild("PlayerGui")

loadstring(game:HttpGet("https://raw.githubusercontent.com/Teddyseetink/Haidepzai/refs/heads/main/TEDDYHUB-FREEMIUM"))()
  end
  }}
  
  AddButton(Tab0o, {
    Name = "QuantumOnyx",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/flazhy/QuantumOnyx/refs/heads/main/QuantumOnyx.lua"))()
  end
  }}
  
  AddButton(Tab0o, {
    Name = "Auto lấy Ghoul",
   Callback = function()
      getgenv().Team = "Marines"
getgenv().Get_Race = "Ghoul"
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/7a6c326e81861b3e1e7207c5d11ed755.lua"))()
  end
  }}