loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "Tổng Hợp vip",
         Animation = "by hoanganhdz"
         },
        Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"skibidi"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=108610659764941",
       Size = {60, 60},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "Blox Fruits"})
     
------- BUTTON
    
    AddButton(Tab1o, {
     Name = "Redz Hub fake",
    Callback = function()
	  local Settings = {
    JoinTeam = "Pirates"; -- Pirates / Marines
    Translator = true;   -- true / false
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/Hahahsjdoroteodch/HoangAnh/refs/heads/main/REDZ%20hups.txt"))()
  end
  })
    AddButton(Tab1o, {
     Name = "ThienDucScript Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/thienducscript-rgb/Hdhdhd/refs/heads/main/bananahub.txt"))()
  end
  })
  AddButton(Tab1o, {
     Name = "MinGaming",
    Callback = function()
	  getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinUp27Vn"))()
  end
  })
 AddButton(Tab1o, {
     Name = "ThienDucScript Roblox Hub",
    Callback = function()
   loadstring(game:HttpGet("https://raw.githubusercontent.com/thienducscript-rgb/Hdhdhd/refs/heads/main/sourcescript.txt"))()
  end
  })
 AddButton(Tab1o, {
     Name = "Ngọc Bổng Gamming
    Callback = function()
   getgenv().Team = "Marines"
loadstring(game:HttpGet("https://raw.githubusercontent.com/ngocbonggaming/script/refs/heads/main/NgocBongVn.lua"))()