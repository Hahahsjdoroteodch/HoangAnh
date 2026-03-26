-- [[ TẢI THƯ VIỆN REDZLIB ]]
local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/R3TH-PRIV/R3TH-PRIV/main/redzlib"))()

-- [[ TẠO CỬA SỔ CHÍNH ]]
local Window = RedzLib:MakeWindow({
  Title = "MY SCRIPT HUB",           -- Tên lớn của Script
  SubTitle = "Phiên bản Redz V1",     -- Tên phụ/Tác giả
  SaveFolder = "MyScriptConfig.json"  -- Lưu cài đặt tự động
})

-- [[ TẠO CÁC TAB (SIDEBAR) ]]
local MainTab = Window:MakeTab({
  Name = "Tự động (Farm)",
  Icon = "rbxassetid://4483345998" -- Icon hình thanh kiếm/hành động
})

local PlayerTab = Window:MakeTab({
  Name = "Người chơi",
  Icon = "rbxassetid://4483362458" -- Icon hình nhân vật
})

local MiscTab = Window:MakeTab({
  Name = "Tiện ích",
  Icon = "rbxassetid://4483362458"
})

--- ---------------------------------------
--- PHẦN 1: TAB TỰ ĐỘNG (FARM)
--- ---------------------------------------
MainTab:AddSection({ Name = "Cày cấp tự động" })

MainTab:AddToggle({
  Name = "Bật Auto Farm Quái",
  Default = false,
  Callback = function(Value)
      _G.AutoFarm = Value
      print("Trạng thái Auto Farm:", Value)
      
      -- Vòng lặp Farm (Ví dụ)
      spawn(function()
          while _G.AutoFarm do
              task.wait(0.1)
              -- Thêm code tấn công hoặc di chuyển tới quái ở đây
          end
      end)
  end
})

MainTab:AddButton({
  Name = "Nhận nhiệm vụ gần nhất",
  Callback = function()
      print("Đã nhấn nút nhận nhiệm vụ!")
      -- Code nhận Quest của bạn
  end
})

--- ---------------------------------------
--- PHẦN 2: TAB NGƯỜI CHƠI
--- ---------------------------------------
PlayerTab:AddSection({ Name = "Chỉ số nhân vật" })

PlayerTab:AddSlider({
  Name = "Tốc độ chạy (WalkSpeed)",
  Min = 16,
  Max = 200,
  Default = 16,
  Color = Color3.fromRGB(255, 0, 0),
  Increment = 1,
  Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end
})

PlayerTab:AddSlider({
  Name = "Độ cao nhảy (JumpPower)",
  Min = 50,
  Max = 500,
  Default = 50,
  Color = Color3.fromRGB(0, 255, 0),
  Increment = 1,
  Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
  end
})

--- ---------------------------------------
--- PHẦN 3: TAB TIỆN ÍCH (MISC)
--- ---------------------------------------
MiscTab:AddSection({ Name = "Hệ thống" })

MiscTab:AddButton({
  Name = "Xóa giao diện (Destroy UI)",
  Callback = function()
      RedzLib:Destroy()
  end
})

-- Thông báo khi script đã tải xong
RedzLib:SetNotify({
  Title = "Thông báo",
  Content = "Script đã tải thành công! Chúc bạn chơi game vui vẻ.",
  Duration = 5
})
