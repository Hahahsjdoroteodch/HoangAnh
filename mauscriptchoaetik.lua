✅ MẪU CHUẨN CHO NGƯỜI MỚI | TÉO HUB 🍎
-- Giữ nguyên giao diện thật, chỉ thêm hướng dẫn 👈 ngay bên cạnh dòng cần sửa

repeat task.wait() until game:IsLoaded()

-- 🟢 Nút mở menu chính
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.10615778, 0, 0.16217947, 0)
ImageButton.Size = UDim2.new(0, 40, 0, 40)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=15059956542"  -- 👈 đổi ID ảnh nút mở menu tại đây (ảnh roblox)

UICorner.CornerRadius = UDim.new(1, 10)
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)

-- 🟣 Giao diện Fluent
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
repeat wait() until game:IsLoaded()

-- 🪟 Cửa sổ chính
local Window = Fluent:CreateWindow({
	Title = "Tổng Hợp💎💎",         -- 👈 đổi thành tên script của bạn
	SubTitle = "Skider h.anh lỏ",              -- 👈 đổi mô tả phụ
	TabWidth = 157,
	Size = UDim2.fromOffset(450, 300),
	Acrylic = true,
	Theme = "Dark",                   -- 👈 đổi màu chủ đạo: Amethyst, Dark, Aqua, Light,...
	MinimizeKey = Enum.KeyCode.End
})

-- 📑 Các tab (mục chính)
local Tabs = {
	Main0 = Window:AddTab({ Title = "ai hỏi" }),  -- 👈 đổi tên tab 1
	Main1 = Window:AddTab({ Title = "Tổng hợp khác" }),  -- 👈 đổi tên tab 2
	Main2 = Window:AddTab({ Title = "săn bounty" }),     -- 👈 đổi tên tab 3
	Main3 = Window:AddTab({ Title = "99 night" }),        -- 👈 đổi tên tab 4
	Main4 = Window:AddTab({ Title = "blox fruit🍎" }),    -- 👈 đổi tên tab 5
	Main5 = Window:AddTab({ Title = "Kaitun blox fruits" }) -- 👈 đổi tên tab 6
}
------------------------------------------------
-- TAB 1: Các kênh tiktok
------------------------------------------------
Tabs.Main0:AddButton({
	Title = "tiktok bạn:)",              -- 👈 tên nút
	Description = "oách xà lách vô cùng",-- 👈 mô tả nút
	Callback = function()
		setclipboard("https://www.tiktok.com/@jannie3342?_t=ZS-90QsJQ5j0NO&_r=1")  -- 👈 link sao chép
	end
})

Tabs.Main0:AddButton({
	Title = "tik",
	Description = "làm chơi thui",
	Callback = function()
		setclipboard("https://www.tiktok.com/@b.yt03?_t=ZS-90QsHokNlwN&_r=1")     -- 👈 link khác
	end
})

Tabs.Main0:AddButton({
	Title = "tiktok",
	Description = "fl tiktok để biết thêm nhiều script",
	Callback = function()
		setclipboard("https://www.tiktok.com/@b.yt03?_t=ZS-90QsHmSjaiu&_r=1")
	end
})

------------------------------------------------
-- TAB 2: Ví dụ thêm script
------------------------------------------------
Tabs.Main1:AddButton({
	Title = "Không hoạt động",                             -- 👈 tên nút hiển thị
	Description = "OFF🔴",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua", true))() -- 👈 link script tải
	end
})
Tabs.Main4:AddButton({
	Title = "Gravity hub",                             -- 👈 tên nút hiển thị
	Description = "script này lag hơn con chó",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-GravityHub/BloxFruit/refs/heads/main/Main.lua"))() -- 👈 link script tải
	end
})
Tabs.Main2:AddButton({
	Title = "Auto bounty",                             -- 👈 tên nút hiển thị
	Description = "script này dell bt ngon ko test đi ci",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
        repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Setting = {
    ["Team"] = "Pirates",
    ["Skip Race V4"] = true,
    ["Melee"] = {
        ["Enable"] = true,
        ["Z"] = { ["Enable"] = true, ["HoldTime"] = 0.1 },
        ["X"] = { ["Enable"] = true, ["HoldTime"] = 0.1 },
        ["C"] = { ["Enable"] = true, ["HoldTime"] = 0.1 },
        ["Delay"] = 1
    },
    ["Sword"] = {
        ["Enable"] = true,
        ["Z"] = { ["Enable"] = true, ["HoldTime"] = 0.1 },
        ["X"] = { ["Enable"] = true, ["HoldTime"] = 0.1 },
        ["Delay"] = 1
    },
    ["Gun"] = {
        ["Enable"] = true,
        ["Z"] = { ["Enable"] = true, ["HoldTime"] = 0.1 },
        ["X"] = { ["Enable"] = true, ["HoldTime"] = 0.1 },
        ["Delay"] = 1,
        ["GunMode"] = false
    },
    ["Fruit"] = {
        ["Enable"] = true,
        ["Z"] = { ["Enable"] = true, ["HoldTime"] = 0.1 },
        ["X"] = { ["Enable"] = true, ["HoldTime"] = 0.1 },
        ["C"] = { ["Enable"] = true, ["HoldTime"] = 0.1 },
        ["V"] = { ["Enable"] = false, ["HoldTime"] = 0.1 },
        ["F"] = { ["Enable"] = true, ["HoldTime"] = 0.1 },
        ["Delay"] = 1
    },
    ["Hunt"] = {
        ["Min"] = 0,
        ["Max"] = 30000000
    },
    ["Skip"] = {
        ["Fruit"] = false,
        ["FruitList"] = { "Buddha", "Tiger", "T-Rex" },
        ["SafeZone"] = true
    },
    ["SafeHealth"] = {
        ["Health"] = 4500
    },
    ["Another"] = {
        ["V3"] = true,
        ["V4"] = true,
        ["CustomHealth"] = true,
        ["Health"] = 4500,
        ["FPSBoots"] = false
    }
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/KiddoHiru/BloxFruits/main/AutoBounty.lua"))() -- 👈 link script tải
	end
})
Tabs.Main1:AddButton({
	Title = "Tổng hợp script premium",                             -- 👈 tên nút hiển thị
	Description = "ko chạt bằng clent thường",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
        loadstring(game:HttpGet("https://raw.githubusercontent.com/luraobermeyer-jpg/Betapremium/refs/heads/main/PREMIUM%20SCRIPT%20BETA.lua.txt"))() -- 👈 link script tải
	end
})
Tabs.Main5:AddButton({
	Title = "Kaitun banana",                             -- 👈 tên nút hiển thị
	Description = "ko bt j",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		 repeat wait() until game:IsLoaded() and game.Players.LocalPlayer
getgenv().Key = " key nhập ở đây"
getgenv().SettingFarm ={
["Hide UI"] = false,
["Reset Teleport"] = {
["Enabled"] = false,
["Delay Reset"] = 3,
["Item Dont Reset"] = {
["Fruit"] = {
["Enabled"] = true,
["All Fruit"] = true,
["Select Fruit"] = {
["Enabled"] = false,
["Fruit"] = {},
},
},
},
},
["Get Items"] = {
["Godhuman"] = true,
["Skull Guitar"] = true,
["Mirror Fractal"] = true,
["Cursed Dual Katana"] = true,
},
["Select Hop"] = { -- 70% will have it
["Hop Find Rip Indra Get Valkyrie Helm or Get Tushita"] = true,
["Hop Find Dough King Get Mirror Fractal"] = false,
["Hop Find Raids Castle [CDK]"] = true,
["Hop Find Cake Queen [CDK]"] = true,
["Hop Find Soul Reaper [CDK]"] = true,
["Hop Find Darkbeard [SG]"] = true,
},
["Buy Haki"] = {
["Enhancement"] = false,
["Skyjump"] = true,
["Flash Step"] = true,
["Observation"] = true,
},
["Lock Fruit"] = {},
["Webhook"] = {
["Enabled"] = false,
["WebhookUrl"] = "",
}
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/obiiyeuem/vthangsitink/main/BananaCat-kaitunBF.lua"))() -- 👈 link script tải
	end
})
Tabs.Main4:AddButton({
	Title = "redz camuchia",                             -- 👈 tên nút hiển thị
	Description = "script này fake redz bên camuchia làm",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		 loadstring(game:HttpGet("https://raw.githubusercontent.com/luraobermeyer-jpg/redzhub/refs/heads/main/redzhub.lua.txt"))() -- 👈 link script tải
	end
})
Tabs.Main5:AddButton({
	Title = "Arya hub",                             -- 👈 tên nút hiển thị
	Description = "script này kaitun antiban",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		 Config = {

Team = "Pirates",

Configuration = {

HopWhenIdle = true,

AutoHop = true,

AutoHopDelay = 60 * 60,

FpsBoost = false,

BlackScreen = true

},

Items = {

-- Melees

AutoFullyMelees = true,

-- Swords

Saber = true,

CursedDualKatana = false,

-- Guns

SoulGuitar = false,

-- Upgrades

RaceV2 = true

},

Settings = {

StayInSea2UntilHaveDarkFragments = false

}

}

loadstring(game:HttpGet("https://raw.githubusercontent.com/hhl29042008-ops/script/refs/heads/main/cac"))() -- 👈 link script tải
	end
})
Tabs.Main3:AddButton({
	Title = "fram day 99 night",                             -- 👈 tên nút hiển thị
	Description = "ai hỏi",-- 👈 mô tả
	Callback = function()
		local Settings = {
			JoinTeam = "Pirates";   -- 👈 team mặc định: Pirates hoặc Marines
			Translator = true;      -- 👈 bật dịch sang tiếng Việt nếu có
		}
		loadstring(game:HttpGet("https://raw.githubusercontent.com/fakekuri/Okhubhere/refs/heads/main/Farmdays.lua"))()` -- 👈 link script tải
	end
})