local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local LocalPlayer = Players.LocalPlayer

-- Services/Modules
local Modules = ReplicatedStorage:WaitForChild("Modules")
local Net = Modules:WaitForChild("Net")
local FishReplicated = ReplicatedStorage:WaitForChild("FishReplicated")
local FishingRequest = FishReplicated:FindFirstChild("FishingRequest")
local FishingClient = FishReplicated:WaitForChild("FishingClient")
local Config = require(FishingClient:WaitForChild("Config"))
local Util = ReplicatedStorage:WaitForChild("Util")
local GetWaterHeightAtLocation = require(Util:WaitForChild("GetWaterHeightAtLocation"))
local COMMF_ = Net:FindFirstChild("RF/JobsRemoteFunction")
local CraftRF = Net:FindFirstChild("RF/Craft")

-- 🔧 Auto ensure rod & bait
local function EnsureRodAndBait()
    if not COMMF_ then return end
    pcall(function()
        COMMF_:InvokeServer("FishingNPC", "FirstTimeFreeRod")
        if _G.SelectedRod then
            COMMF_:InvokeServer("LoadItem", _G.SelectedRod, {"Gear"})
        end
    end)

    task.wait(0.5)
    local FishingData = LocalPlayer:FindFirstChild("Data") and LocalPlayer.Data:FindFirstChild("FishingData")
    if FishingData and (FishingData:GetAttribute("SelectedBait") == "None" or FishingData:GetAttribute("SelectedBait") == nil) then
        local success, inventory = pcall(function()
            return COMMF_:InvokeServer("getInventory")
        end)
        if success and inventory then
            for _, v in pairs(inventory) do
                if v.Type == "Bait" and v.Name == _G.SelectedBait then
                    COMMF_:InvokeServer("LoadItem", v.Name, {"Usables"})
                    return
                end
            end
        end
        if CraftRF and _G.SelectedBait then
            CraftRF:InvokeServer("Craft", _G.SelectedBait)
            task.wait(2)
        end
    end
end

-- 🔧 Equip Rod
local function EquipRod()
    local Character = LocalPlayer.Character
    if not Character then return end
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    if not Character:FindFirstChild(_G.SelectedRod) then
        local BackpackRod = LocalPlayer.Backpack:FindFirstChild(_G.SelectedRod)
        if BackpackRod and Humanoid then
            Humanoid:EquipTool(BackpackRod)
            task.wait(0.3)
        end
    end
end

-- 🔧 Get cast position
local function GetCastPosition()
    local Character = LocalPlayer.Character
    if not Character then return end
    local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

    local waterY = GetWaterHeightAtLocation(HumanoidRootPart.Position)
    local direction = HumanoidRootPart.CFrame.LookVector * (Config.Rod.MaxLaunchDistance or 50)

    local _, hitPos = Workspace:FindPartOnRayWithIgnoreList(
        Ray.new(Character.Head.Position, direction),
        {Character, Workspace.Characters, Workspace.Enemies})

    if not hitPos then
        return HumanoidRootPart.Position + Vector3.new(0, -10, 0)
    end

    return hitPos
end

-- 🔧 Cast & Catch
local function CastLine()
    if not FishingRequest then return end
    pcall(function()
        FishingRequest:InvokeServer("StartCasting")
        task.wait(0.7)
        FishingRequest:InvokeServer("CastLineAtLocation", GetCastPosition(), 100, true)
    end)
end

local function CatchFish()
    if not FishingRequest then return end
    pcall(function()
        FishingRequest:InvokeServer("Catching", 1)
        task.wait(0.25)
        FishingRequest:InvokeServer("Catch", 1)
    end)
end

-- UI Dropdowns (⚠️ Fix default value → string thay vì table)
Section:AddDropdown({
    ["Title"] = "Select Fishing Rod",
    ["Content"] = "Chọn Cần Câu",
    ["Multi"] = false,
    ["Options"] = {"Fishing Rod","Gold Rod","Shark Rod","Shell Rod","Treasure Rod"},
    ["Default"] = "Fishing Rod", -- ✅ string, không phải table
    ["Callback"] = function(Value)
        _G.SelectedRod = tostring(Value)
    end
})

Section:AddDropdown({
    ["Title"] = "Select Bait",
    ["Content"] = "Chọn Mồi Câu",
    ["Multi"] = false,
    ["Options"] = {"Basic Bait","Kelp Bait","Good Bait","Abyssal Bait","Frozen Bait","Epic Bait","Carnivore Bait"},
    ["Default"] = "Basic Bait", -- ✅ string
    ["Callback"] = function(Value)
        _G.SelectedBait = tostring(Value)
    end
})

-- Auto Farm Fishing Toggle
Section:AddToggle({
    ["Title"] = "Auto Farm Fishing",
    ["Content"] = "Tự động Câu Cá",
    ["Default"] = false,
    ["Callback"] = function(Value)
        _G.AutoFishing = Value
        if Value then
            task.spawn(function()
                while _G.AutoFishing do
                    task.wait(0.5)
                    pcall(function()
                        local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
                        if not Character then return end

                        EnsureRodAndBait()
                        EquipRod()

                        local Rod = Character:FindFirstChild(_G.SelectedRod)
                        if Rod then
                            local state = Rod:GetAttribute("ServerState") or Rod:GetAttribute("State")
                            -- Debug log
                            -- print("Rod State:", state)
                            if state == "Biting" then
                                CatchFish()
                            elseif state == "ReeledIn" or state == "Idle" or not state then
                                CastLine()
                            end
                        else
                            warn("[AutoFishing] Rod not found in Character")
                        end
                    end)
                end
            end)
        end
    end
})