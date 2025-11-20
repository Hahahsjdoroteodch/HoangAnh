
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local Lighting = game:GetService("Lighting")
local player = Players.LocalPlayer

local blur = Instance.new("BlurEffect", Lighting)
blur.Size = 0
TweenService:Create(blur, TweenInfo.new(0.5), {Size = 24}):Play()

local screenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
screenGui.Name = "StellarLoader"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true

local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundTransparency = 1

local bg = Instance.new("Frame", frame)
bg.Size = UDim2.new(1, 0, 1, 0)
bg.BackgroundColor3 = Color3.fromRGB(10, 10, 20)
bg.BackgroundTransparency = 1
bg.ZIndex = 0
TweenService:Create(bg, TweenInfo.new(0.5), {BackgroundTransparency = 0.3}):Play()

local word = "TBAOHUB"
local letters = {}

local function tweenOutAndDestroy()
	for _, label in ipairs(letters) do
		TweenService:Create(label, TweenInfo.new(0.3), {TextTransparency = 1, TextSize = 20}):Play()
	end
	TweenService:Create(bg, TweenInfo.new(0.5), {BackgroundTransparency = 1}):Play()
	TweenService:Create(blur, TweenInfo.new(0.5), {Size = 0}):Play()
	wait(0.6)
	screenGui:Destroy()
	blur:Destroy()
end

for i = 1, #word do
	local char = word:sub(i, i)

	local label = Instance.new("TextLabel")
	label.Text = char
	label.Font = Enum.Font.GothamBlack
	label.TextColor3 = Color3.new(1, 1, 1)
	label.TextStrokeTransparency = 1 
	label.TextTransparency = 1
	label.TextScaled = false
	label.TextSize = 30 
	label.Size = UDim2.new(0, 60, 0, 60)
	label.AnchorPoint = Vector2.new(0.5, 0.5)
	label.Position = UDim2.new(0.5, (i - (#word / 2 + 0.5)) * 65, 0.5, 0)
	label.BackgroundTransparency = 1
	label.Parent = frame

	local gradient = Instance.new("UIGradient")
	gradient.Color = ColorSequence.new({
		ColorSequenceKeypoint.new(0, Color3.fromRGB(222, 38, 207)), 
		ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))   
	})
	gradient.Rotation = 90
	gradient.Parent = label

	local tweenIn = TweenService:Create(label, TweenInfo.new(0.3), {TextTransparency = 0, TextSize = 60})
	tweenIn:Play()

	table.insert(letters, label)
	wait(0.25)
end

wait(2)

tweenOutAndDestroy()

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local CoreGui = game:GetService("StarterGui")
    CoreGui:SetCore("SendNotification", {
        Title = "Xương béo vcl",
        Text = "Loading script",
        Icon = "rbxthumb://type=Asset&id=95472747120306&w=150&h=150",
        Duration = 7,
        Callback = AllowRunServiceBind,
    })

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
	Title = "Cu xương béo | Grow a garden",
	SubTitle = "by hoanganhlo",
	TabWidth = 160,
	Size = UDim2.fromOffset(528, 350),
	Acrylic = false,
	Theme = "Dark",
	MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
	Info = Window:AddTab({
		Title = "Info",
		Icon = "crown"
	}),
	Main = Window:AddTab({
		Title = "Farm",
		Icon = "apple"
		}),
		Shop = Window:AddTab({
		Title = "Shop",
		Icon = "cherry"
		}),
		Ui = Window:AddTab({
		Title = "Ui",
		Icon = "bookmark"
		}),
		Event = Window:AddTab({
		Title = "Event",
		Icon = "banana"
		}),
		Visual = Window:AddTab({
		Title = "Visual",
		Icon = "gavel"
		}),
	Esp = Window:AddTab({
		Title = "Esp",
		Icon = "box"
		}),
	Misc = Window:AddTab({
		Title = "Misc",
		Icon = "book" 
	}),
	Settings = Window:AddTab({
		Title = "Setting",
		Icon = "settings"
		}),
}

local Options = Fluent.Options

local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Draggable = true
ImageButton.Image = "http://www.roblox.com/asset/?id=10260193230"

UICorner.CornerRadius = UDim.new(0, 10) 
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:Connect(function()
	game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.LeftControl, false, game)
end)

Tabs.Info:AddButton({
	Title = "Copy link discord",
	Description = "discord.gg/bYb3EweNk7",
	Callback = function()
	setclipboard("discord.gg/bYb3EweNk7")
	end
})



local versionLabel
pcall(function()
    versionLabel = game:GetService("CoreGui")
        .RobloxGui
        .SettingsClippingShield
        .SettingsShield
        .VersionContainer
        .PlaceVersionLabel
end)

local placeVersion = versionLabel and versionLabel.Text or "Unknown"

Tabs.Info:AddParagraph({
    Title = "Server version",
    Content = placeVersion
})








Tabs.Main:AddSection("Collect")


local seeds = {
"Strawberry", 
"Carrot", 
"Blueberry", 
"Orange Tulip", 
"Tomato",
 "Corn", 
 "Daffodil", 
 "Watermelon", 
 "Pumpkin", 
 "Apple",
 "Bamboo",
 "Coconut", 
 "Cactus",
 "Dragon Fruit",
 "Mango",
 "Grape", 
 "Mushroom", 
 "Pepper", 
 "Cacao", 
 "Beanstalk",
 "Ember Lily",
 "Manuka Flower",
 "Rose",
 "Lavender",
 "Dandelion",
 "Nectarine",
 "Foxglove",
 "Lilac",
 "Lumira",
 "Honeysuckle",
 "Pink Lily",
 "Purple Dahlia",
 "Sunflower",
 "Hive Fruit",
 "Sugar Apple",
 "Cauliflower",
 "Green Apple",
 "Avocado",
 "Banana",
 "Pineapple",
 "Kiwi",
 "Bell Pepper",
 "Prickly Pear",
 "Loquat",
 "Feijoa",
 "Pitcher Plant"
}

local selectedFruit = nil

local Dropdown = Tabs.Main:AddDropdown("Dropdown", {
    Title = "Select collect fruit",
    Values = seeds,
    Multi = false,
    Default = 1,
})



    
 Dropdown:OnChanged(function(Value)
    selectedFruit = Value
end)

local player = game.Players.LocalPlayer
local TeleportCollect = false
local collectThread

local function AutoCollectFruitsMutation()
    local pickup_radius = 50

    if collectThread then
        task.cancel(collectThread)
        collectThread = nil
    end

    if TeleportCollect then
        collectThread = task.spawn(function()
            while TeleportCollect do
                local farm_model
                for _, farm in ipairs(game.Workspace.Farm:GetChildren()) do
                    local data = farm:FindFirstChild("Important") and farm.Important:FindFirstChild("Data")
                    if data and data:FindFirstChild("Owner") and data.Owner.Value == player.Name then
                        farm_model = farm
                        break
                    end
                end

                if not farm_model then
                    task.wait(0.1)
                    continue
                end

                local plants_folder = farm_model.Important:FindFirstChild("Plants_Physical")
                local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

                if not (plants_folder and hrp) then
                    task.wait(0.1)
                    continue
                end

                for _, plant in ipairs(plants_folder:GetChildren()) do
                    if plant:IsA("Model") then
                        local fruits = plant:FindFirstChild("Fruits")
                        if fruits then
                            for _, fruit in ipairs(fruits:GetChildren()) do
                                if fruit.Name == selectedFruit then
                                   for _, part in ipairs(fruit:GetDescendants()) do
                                      if part:IsA("BasePart") then
                                         local prompt = part:FindFirstChildOfClass("ProximityPrompt")
                                         if prompt and prompt.Enabled then
                                            
                                             hrp.CFrame = CFrame.new(part.Position + Vector3.new(0, 2, 0))
                                             for _ = 1, 3 do
                                                 fireproximityprompt(prompt)
                                                 task.wait(0.01)
                                             end
                                         end
                                      end
                                   end
                                end
                            end
                        end
                    end
                    if not TeleportCollect then break end
                end
                task.wait(0.01)  
            end
        end)
    end
end

local Toggle = Tabs.Main:AddToggle("AutocollectFruits", {
    Title = "Auto collect fruit",
    Default = false,
})

Toggle:OnChanged(function(state)
    TeleportCollect = state
    AutoCollectFruitsMutation()
end)







local mutation = { 
    "Pollinated", "Celestial", "Moonlit", "Windstruck", "Burnt",
    "Wet", "Disco", "Twisted", "Choc", "Bloodlit",
    "Dawnbound", "Molten", "Chilled", "Heavenly",
    "Shocked", "Voidtouched", "Plasma", "Zombified",
    "HoneyGlazed", "Frozen" 
}

local selectedFruitGay = nil

local Dropdown = Tabs.Main:AddDropdown("Dropdown", {  
    Title = "Select collect mutation",  
    Values = mutation,  
    Multi = false,  
    Default = 1,  
})  

Dropdown:OnChanged(function(Value)  
    selectedFruitGay = Value  
end)  

local player = game.Players.LocalPlayer
local TeleportPollinatedGay = false
local autoCollectThreadGay

local function AutoCollectFruitsGay()
    if autoCollectThreadGay then
        task.cancel(autoCollectThreadGay) 
        autoCollectThreadGay = nil
    end
    
    if TeleportPollinatedGay then
        autoCollectThreadGay = task.spawn(function()
            while TeleportPollinatedGay do
                local farm
                for _, f in ipairs(game.Workspace.Farm:GetChildren()) do
                    local data = f:FindFirstChild("Important") and f.Important:FindFirstChild("Data")
                    if data and data:FindFirstChild("Owner") and data.Owner.Value == player.Name then
                        farm = f
                        break
                    end
                end

                if farm then
                    local plants_folder = farm.Important:FindFirstChild("Plants_Physical")
                    local hrp = player.Character and player.Character:FindFirstChild("HumanoidRootPart")

                    if plants_folder and hrp then
                        for _, plant in ipairs(plants_folder:GetChildren()) do
                            if not TeleportPollinatedGay then break end
                            if plant:IsA("Model") then
                                local fruits = plant:FindFirstChild("Fruits")
                                if fruits then
                                   for _, fruit in ipairs(fruits:GetChildren()) do
                                      if not TeleportPollinatedGay then break end
                                      if selectedFruitGay and fruit:GetAttribute(selectedFruitGay) == true then
                                         for _, part in ipairs(fruit:GetDescendants()) do
                                             if not TeleportPollinatedGay then break end
                                             if part:IsA("BasePart") then
                                                 local prompt = part:FindFirstChildOfClass("ProximityPrompt")
                                                 if prompt and prompt.Enabled then
                                                     local fruitPosition = part.Position
                                                     local distance = (fruitPosition - hrp.Position).Magnitude

                                                     if distance > 50 then
                                                        hrp.CFrame = CFrame.new(fruitPosition + Vector3.new(0, 2, 0))
                                                     end

                                                     for _ = 1, 3 do
                                                        fireproximityprompt(prompt)
                                                        task.wait(0.01)    
                                                     end
                                                 end
                                             end
                                         end
                                      end
                                   end
                                end
                            end
                        end
                    end
                end

                task.wait(0.01)  
            end
        end)    
    end
end  

local Toggle = Tabs.Main:AddToggle("AutocollectFruits", {  
    Title = "Auto collect mutation",  
    Default = false,  
})  

Toggle:OnChanged(function(state)  
    TeleportPollinatedGay = state  
    AutoCollectFruitsGay()
end)

Tabs.Main:AddSection("Sell")





Tabs.Main:AddButton({
	Title = "Sell all",
	Description = "",
	Callback = function()
	local player = game.Players.LocalPlayer
		local backpack = player:WaitForChild("Backpack")
		local replicatedStorage = game:GetService("ReplicatedStorage")
		local sellEvent = replicatedStorage:WaitForChild("GameEvents"):WaitForChild("Sell_Inventory")
		
		local function teleportAndSell()
			local character = player.Character or player.CharacterAdded:Wait()
			local hrp = character:WaitForChild("HumanoidRootPart")
		
		
			local originalCFrame = hrp.CFrame
		
		
			local targetPart = workspace:WaitForChild("Tutorial_Points"):WaitForChild("Tutorial_Point_2")
			hrp.CFrame = targetPart.CFrame + Vector3.new(0, 3, 0)
		
		
			task.wait(0.2)
			sellEvent:FireServer()
		
	
			hrp.CFrame = originalCFrame
		end
		
	
		teleportAndSell()
	end
})


Tabs.Main:AddButton({
	Title = "Sell this",
	Description = "",
	Callback = function()
			local player = game.Players.LocalPlayer
		local backpack = player:WaitForChild("Backpack")
		local replicatedStorage = game:GetService("ReplicatedStorage")
		
		local function teleportAndSell()
			local character = player.Character or player.CharacterAdded:Wait()
			local hrp = character:WaitForChild("HumanoidRootPart")
		
			
			local originalCFrame = hrp.CFrame
		
			
			local targetPart = workspace:WaitForChild("Tutorial_Points"):WaitForChild("Tutorial_Point_2")
			hrp.CFrame = targetPart.CFrame + Vector3.new(0, 3, 0)
		
		
			task.wait(0.2)
			game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("Sell_Item"):FireServer()
		
	
			hrp.CFrame = originalCFrame
		end
		teleportAndSell()
	end
})







local ToggleState = false


local Toggle = Tabs.Main:AddToggle("MyToggle", {
	Title = "Auto sell all",
	Description = "",
	Default = false
})
Toggle:OnChanged(function(Value)
	ToggleState = Value

		local player = game.Players.LocalPlayer
		local replicatedStorage = game:GetService("ReplicatedStorage")
		local sellEvent = replicatedStorage:WaitForChild("GameEvents"):WaitForChild("Sell_Inventory")

		local function teleportAndSell()
			local character = player.Character or player.CharacterAdded:Wait()
			local hrp = character:WaitForChild("HumanoidRootPart")

		
			local originalCFrame = hrp.CFrame

	
			local targetPart = workspace:WaitForChild("Tutorial_Points"):WaitForChild("Tutorial_Point_2")
			hrp.CFrame = targetPart.CFrame + Vector3.new(0, 3, 0)

		
			task.wait(0.2)
			sellEvent:FireServer()

		
			hrp.CFrame = originalCFrame
		end


		if ToggleState then
			task.spawn(function()
				while ToggleState do
					teleportAndSell()
					task.wait(10) 
				end
			end)
		end
end)









local selectedSeed = "Strawberry"
local seedToggle = false
local seedThread = nil

local seedList = {
"Carrot",
"Strawberry",
"Blueberry",
"Tomato",
"Cauliflower",
"Watermelon",
"Rafflesia",
"Green Apple",
"Avocado",
"Banana",
"Pineapple",
"Kiwi",
"Bell Pepper",
"Prickly Pear",
"Loquat",
"Feijoa",
"Pitcher Plant",
"Sugar Apple"
}

    local Dropdown = Tabs.Shop:AddDropdown("SeedSelectDropdown", {
    Title = "Select seed",
    Values = seedList,
    Multi = false,
    Default = 1,
})

Dropdown:OnChanged(function(val)
    selectedSeed = val
end)

local Toggle = Tabs.Shop:AddToggle("AutoBuySeedSelectedToggle", {
    Title = "Auto buy select seed",
    Default = false
})

Toggle:OnChanged(function(state)
    seedToggle = state
    if seedThread then task.cancel(seedThread) end
    if state then
        seedThread = task.spawn(function()
            while seedToggle do
                game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("BuySeedStock"):FireServer(selectedSeed)
                task.wait(0.1)
            end
        end)
    end
end)


local allSeedToggle = false
local allSeedThread = nil

local Toggle = Tabs.Shop:AddToggle("AutoBuySeedAllToggle", {
    Title = "Auto buy all seed",
    Default = false
})

Toggle:OnChanged(function(state)
    allSeedToggle = state
    if allSeedThread then task.cancel(allSeedThread) end
    if state then
        allSeedThread = task.spawn(function()
            while allSeedToggle do
                for _, item in ipairs(seedList) do
                    if not allSeedToggle then break end
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("BuySeedStock"):FireServer(item)
                    task.wait(0.1)
                end
            end
        end)
    end
end)


Tabs.Shop:AddSection("Gear")


local selectedGear = "Watering Can"
local gearToggle = false
local gearThread = nil

local gearList = {
	"Watering Can",
	"Trowel",
	"Basic Sprinkler",
	"Advanced Sprinkler",
	"Godly Sprinkler",
	 "Master Sprinkler",
	"Favorite Tool",
	"Recall Wrench",
	"Harvest Tool",
	"Friendship Pot",
	"Cleaning Spray",
	"Tanning Mirror",
	"Magnifying Glass"
}

    local Dropdown = Tabs.Shop:AddDropdown("GearSelectDropdown", {
    Title = "Select gear",
    Values = gearList,
    Multi = false,
    Default = 1,
})

Dropdown:OnChanged(function(val)
    selectedGear = val
end)

local Toggle = Tabs.Shop:AddToggle("AutoBuyGearSelectedToggle", {
    Title = "Auto buy select gear",
    Default = false
})

Toggle:OnChanged(function(state)
    gearToggle = state
    if gearThread then task.cancel(gearThread) end
    if state then
        gearThread = task.spawn(function()
            while gearToggle do
                game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("BuyGearStock"):FireServer(selectedGear)
                task.wait(0.1)
            end
        end)
    end
end)


local allGearToggle = false
local allGearThread = nil

local Toggle = Tabs.Shop:AddToggle("AutoBuyGearAllToggle", {
    Title = "Auto buy all gear",
    Default = false
})

Toggle:OnChanged(function(state)
    allGearToggle = state
    if allGearThread then task.cancel(allGearThread) end
    if state then
        allGearThread = task.spawn(function()
            while allGearToggle do
                for _, item in ipairs(gearList) do
                    if not allGearToggle then break end
                    game:GetService("ReplicatedStorage"):WaitForChild("GameEvents"):WaitForChild("BuyGearStock"):FireServer(item)
                    task.wait(0.1)
                end
            end
        end)
    end
end)




























Tabs.Ui:AddButton({
	Title = "Cosmetic shop",
	Description = "Click to open/close",
	Callback = function()
       local player = game:GetService("Players").LocalPlayer
        local dd = player:FindFirstChild("PlayerGui") and player.PlayerGui:FindFirstChild("CosmeticShop_UI")       
        if dd then        
            dd.Enabled = not dd.Enabled
        end
	end
})






Tabs.Ui:AddButton({
	Title = "Seed shop",
	Description = "Click to open/close",
	Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local seedShop = player:FindFirstChild("PlayerGui") and player.PlayerGui:FindFirstChild("Seed_Shop")       
        if seedShop then        
            seedShop.Enabled = not seedShop.Enabled
        end
	end
})



Tabs.Ui:AddButton({
	Title = "Gear shop",
	Description = "Click to open/close",  
	Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local gearShop = player:FindFirstChild("PlayerGui") and player.PlayerGui:FindFirstChild("Gear_Shop")
        if gearShop then
            gearShop.Enabled = not gearShop.Enabled
        end
	end
})





Tabs.Ui:AddButton({
	Title = "Daily quests",
	Description = "Click to open/close",  
	Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local dailyQuestsUI = player:FindFirstChild("PlayerGui") and player.PlayerGui:FindFirstChild("DailyQuests_UI")
        if dailyQuestsUI then
            dailyQuestsUI.Enabled = not dailyQuestsUI.Enabled
        end   
	end
})












Tabs.Event:AddSection("Summer")







local summer = {
    "Summer Seed Pack",
    "Delphinium",
    "Lily of the Valley",
    "Traveler's Fruit",
    "Mutation Spray Burnt",
    "Oasis Crate",
    "Oasis Egg",
    "Hamster"
}


local selectedSummerItem = summer[1]
local autoBuySelected = false
local autoBuyAll = false
local selectedThread, allThread


local function buyItem(itemName)
    local args = { itemName }
    local success, err = pcall(function()
        game:GetService("ReplicatedStorage")
            :WaitForChild("GameEvents")
            :WaitForChild("BuyEventShopStock")
            :FireServer(unpack(args))
    end)
    if not success then
    end
end


local Dropdown = Tabs.Event:AddDropdown("SummerDropdown", {
    Title = "Select summer shop",
    Values = summer,
    Multi = false,
    Default = 1,
})

Dropdown:OnChanged(function(Value)
    selectedSummerItem = Value
end)


local ToggleSelected = Tabs.Event:AddToggle("AutoBuySelectedToggle", {
    Title = "Auto buy select summer shop",
    Default = false,
})

ToggleSelected:OnChanged(function(state)
    autoBuySelected = state
    if selectedThread then
        task.cancel(selectedThread)
        selectedThread = nil
    end
    if autoBuySelected then
        selectedThread = task.spawn(function()
            while autoBuySelected do
                if selectedSummerItem then
                    buyItem(selectedSummerItem)
                end
                task.wait(1) 
            end
        end)
    end
end)


local ToggleAll = Tabs.Event:AddToggle("AutoBuyAllToggle", {
    Title = "Auto buy all summer shop",
    Default = false,
})

ToggleAll:OnChanged(function(state)
    autoBuyAll = state
    if allThread then
        task.cancel(allThread)
        allThread = nil
    end
    if autoBuyAll then
        allThread = task.spawn(function()
            while autoBuyAll do
                for _, item in ipairs(summer) do
                    if not autoBuyAll then break end
                    buyItem(item)
                    task.wait(0.1)
                end
                task.wait(1) 
            end
        end)
    end
end)











Tabs.Visual:AddSection("Gift")


local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local selectedPlayerName = nil

local playerNames = {}
for _, player in ipairs(Players:GetPlayers()) do
    table.insert(playerNames, player.Name)
end

local Dropdown = Tabs.Visual:AddDropdown("PlayerDropdown", {
    Title = "Select player gift pet",
    Values = playerNames,
    Multi = false,
    Default = 1,
})

Dropdown:OnChanged(function(Value)
    selectedPlayerName = Value
end)


Tabs.Visual:AddButton({
    Title = "Gift pet player",
    Description = "",
    Callback = function()
        if selectedPlayerName then
            local targetPlayer = Players:FindFirstChild(selectedPlayerName)
            if targetPlayer then
                local args = {
                    "GivePet",
                    targetPlayer
                }
                ReplicatedStorage:WaitForChild("GameEvents")
                    :WaitForChild("PetGiftingService")
                    :FireServer(unpack(args))
            else
            end
        else
        end
    end
})


Tabs.Visual:AddSection("Local")





local Input = Tabs.Visual:AddInput("Input", {
        Title = "Speed",
        Default = "",
        Placeholder = "Value",
        Numeric = false, 
        Finished = false, 
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    })

local Input = Tabs.Visual:AddInput("Input", {
        Title = "Jump",
        Default = "",
        Placeholder = "Value",
        Numeric = false, 
        Finished = false, 
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
        end
    })
    
    
    

    
    local onoffgui1 = false 

local Toggle = Tabs.Visual:AddToggle("MyToggle", {
	Title = "Show seed time",
	Default = false 
})

Toggle:OnChanged(function(state)
	onoffgui1 = state
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local seedShopGui = playerGui:WaitForChild("Seed_Shop")
local timerLabel = seedShopGui:WaitForChild("Frame"):WaitForChild("Frame"):WaitForChild("Timer")

local displayGui = Instance.new("ScreenGui")
displayGui.Name = "SeedTimerDisplay"
displayGui.ResetOnSpawn = false
displayGui.Parent = playerGui


local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0, 80, 0, 60)
textLabel.Position = UDim2.new(0.5, -110, 0.1, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Text = "Loading..."
textLabel.Active = true
textLabel.Draggable = true
textLabel.Visible = onoffgui1
textLabel.Parent = displayGui

game:GetService("RunService").RenderStepped:Connect(function()
	if onoffgui1 and timerLabel and timerLabel:IsA("TextLabel") then
		textLabel.Visible = true
		textLabel.Text = "" .. timerLabel.Text
	else
		textLabel.Visible = false
	end
end)



    
   local IJ = false
local Toggle = Tabs.Visual:AddToggle("MyToggle", {
	Title = "Inf jump",
	Default = false 
})
Toggle:OnChanged(function(state)
	    IJ = state
      game:GetService("UserInputService").JumpRequest:Connect(function()
          if IJ then
              game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
          end
      end)
end)


local Toggle = Tabs.Visual:AddToggle("MyToggle", {
	Title = "No clip",
	Default = false 
})
Toggle:OnChanged(function(Value)
	    getgenv().NoclipEnabled = Value 
        local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local function noclip()
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") and part.CanCollide == true then
            part.CanCollide = false
        end
    end
end
local function noclipLoop()
    RunService.Stepped:Connect(function()
        if getgenv().NoclipEnabled then
            noclip()
        end
    end)
end
noclipLoop()
end)

local Toggle = Tabs.Visual:AddToggle("MyToggle", {
	Title = "Click teleport",
	Default = false 
})
Toggle:OnChanged(function(Value)
	    getgenv().clickTeleportEnabled = Value
local function onTeleportClick()
    local player = game.Players.LocalPlayer
    local mouse = player:GetMouse()
    mouse.Button1Down:Connect(function()
        if getgenv().clickTeleportEnabled then
            local targetPosition = mouse.Hit.p  
            player.Character:MoveTo(targetPosition) 
        end
    end)
end
onTeleportClick()
end)


    
    










local RunService = game:GetService("RunService")
local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera


local connections = getconnections(ReplicatedStorage.GameEvents.PetEggService.OnClientEvent)
local hatchFunc = getupvalue(getupvalue(connections[1].Function, 1), 2)
local eggModels = getupvalue(hatchFunc, 1)
local eggPets = getupvalue(hatchFunc, 2)


local ESP_ENABLED = false


local espCache = {}


local function createESP(eggModel)
    local uuid = eggModel:GetAttribute("OBJECT_UUID")
    if not uuid then return end
    local petName = eggPets[uuid] or "?"

    
    local label = Drawing.new("Text")
    label.Text = petName
    label.Size = 18
    label.Color = Color3.fromRGB(0, 255, 0)
    label.Center = true
    label.Outline = true
    label.OutlineColor = Color3.new(0, 0, 0)
    label.Visible = ESP_ENABLED

   
    local highlight = Instance.new("Highlight")
    highlight.Name = "PetEggESP_Highlight"
    highlight.FillColor = Color3.fromRGB(0, 255, 255)
    highlight.OutlineColor = Color3.fromRGB(0, 0, 0)
    highlight.FillTransparency = 0.5
    highlight.OutlineTransparency = 0
    highlight.Enabled = ESP_ENABLED
    highlight.Adornee = eggModel
    highlight.Parent = eggModel

   
    espCache[uuid] = {
        model = eggModel,
        label = label,
        highlight = highlight
    }
end


local function removeESP(eggModel)
    local uuid = eggModel:GetAttribute("OBJECT_UUID")
    if espCache[uuid] then
        if espCache[uuid].label then espCache[uuid].label:Remove() end
        if espCache[uuid].highlight then espCache[uuid].highlight:Destroy() end
        espCache[uuid] = nil
    end
end


RunService.RenderStepped:Connect(function()
    if not ESP_ENABLED then
        for _, v in pairs(espCache) do
            if v.label then v.label.Visible = false end
            if v.highlight then v.highlight.Enabled = false end
        end
        return
    end

    for uuid, v in pairs(espCache) do
        local egg = v.model
        if egg and egg:IsDescendantOf(workspace) then
            local pos, onScreen = Camera:WorldToViewportPoint(egg:GetPivot().Position)
            if v.label then
                v.label.Position = Vector2.new(pos.X, pos.Y - 20)
                v.label.Visible = onScreen
            end
            if v.highlight then
                v.highlight.Enabled = true
            end
        else
            if v.label then v.label.Visible = false end
            if v.highlight then v.highlight.Enabled = false end
        end
    end
end)


for _, egg in ipairs(CollectionService:GetTagged("PetEggServer")) do
    if egg:GetAttribute("OWNER") == LocalPlayer.Name then
        createESP(egg)
    end
end


CollectionService:GetInstanceAddedSignal("PetEggServer"):Connect(function(egg)
    if egg:GetAttribute("OWNER") == LocalPlayer.Name then
        createESP(egg)
    end
end)

CollectionService:GetInstanceRemovedSignal("PetEggServer"):Connect(removeESP)



local Toggle = Tabs.Esp:AddToggle("MyToggle", {
	Title = "Esp egg",
	Default = false 
})
Toggle:OnChanged(function(state)
	ESP_ENABLED = state
        for _, v in pairs(espCache) do
            if v.label then v.label.Visible = state end
            if v.highlight then v.highlight.Enabled = state end
        end
end)



local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera


local playerESPEnabled = false
local playerESPCache = {}


local function createPlayerESP(player)
	if player == LocalPlayer then return end
	if playerESPCache[player] then return end

	local character = player.Character or player.CharacterAdded:Wait()
	local head = character:WaitForChild("Head", 5)
	if not head then return end


	local nameLabel = Drawing.new("Text")
	nameLabel.Text = player.Name
	nameLabel.Size = 16
	nameLabel.Color = Color3.fromRGB(0, 255, 255)
	nameLabel.Center = true
	nameLabel.Outline = true
	nameLabel.OutlineColor = Color3.new(0, 0, 0)
	nameLabel.Visible = false

	
	local highlight = Instance.new("Highlight")
	highlight.Name = "PlayerESP_Highlight"
	highlight.FillColor = Color3.fromRGB(0, 255, 255)
	highlight.OutlineColor = Color3.fromRGB(0, 0, 0)
	highlight.FillTransparency = 0.4
	highlight.OutlineTransparency = 0
	highlight.Enabled = false
	highlight.Parent = character
	highlight.Adornee = character

	playerESPCache[player] = {
		nameLabel = nameLabel,
		highlight = highlight,
		character = character
	}
end


local function removePlayerESP(player)
	local data = playerESPCache[player]
	if data then
		if data.nameLabel then data.nameLabel:Remove() end
		if data.highlight then data.highlight:Destroy() end
		playerESPCache[player] = nil
	end
end


RunService.RenderStepped:Connect(function()
	for player, data in pairs(playerESPCache) do
		local char = data.character
		if char and char:FindFirstChild("Head") then
			local head = char.Head
			local pos, onScreen = Camera:WorldToViewportPoint(head.Position + Vector3.new(0, 1.5, 0))

			data.nameLabel.Visible = playerESPEnabled and onScreen
			data.highlight.Enabled = playerESPEnabled

			if data.nameLabel.Visible then
				data.nameLabel.Position = Vector2.new(pos.X, pos.Y)
			end
		end
	end
end)


for _, player in ipairs(Players:GetPlayers()) do
	createPlayerESP(player)
end

Players.PlayerAdded:Connect(function(player)
	player.CharacterAdded:Connect(function()
		task.wait(1)
		createPlayerESP(player)
	end)
end)


Players.PlayerRemoving:Connect(removePlayerESP)



local Toggle = Tabs.Esp:AddToggle("MyToggle", {
	Title = "Esp player",
	Default = false 
})
Toggle:OnChanged(function(state)
	playerESPEnabled = state
end)





local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Camera = workspace.CurrentCamera


local pollinatedESPEnabled = false
local pollinatedCache = {}


local function createPollinatedESP(fruitModel)
	if not fruitModel:IsDescendantOf(workspace) then return end
	local objectId = fruitModel:GetDebugId()

	
	local label = Drawing.new("Text")
	label.Text = "Pollinated"
	label.Size = 16
	label.Color = Color3.fromRGB(255, 255, 0)
	label.Outline = true
	label.OutlineColor = Color3.new(0, 0, 0)
	label.Center = true
	label.Visible = false

	
	local highlight = Instance.new("Highlight")
	highlight.Name = "PollinatedESP_Highlight"
	highlight.FillColor = Color3.fromRGB(255, 255, 0)
	highlight.OutlineColor = Color3.fromRGB(0, 0, 0)
	highlight.FillTransparency = 0.5
	highlight.OutlineTransparency = 0
	highlight.Adornee = fruitModel
	highlight.Enabled = false
	highlight.Parent = fruitModel

	pollinatedCache[objectId] = {
		model = fruitModel,
		label = label,
		highlight = highlight
	}
end


RunService.RenderStepped:Connect(function()
	for id, data in pairs(pollinatedCache) do
		local model = data.model
		if model and model:IsDescendantOf(workspace) then
			local rootPart = model:FindFirstChildWhichIsA("BasePart")
			if rootPart then
				local screenPos, onScreen = Camera:WorldToViewportPoint(rootPart.Position)
				data.label.Visible = pollinatedESPEnabled and onScreen
				data.highlight.Enabled = pollinatedESPEnabled

				if data.label.Visible then
					data.label.Position = Vector2.new(screenPos.X, screenPos.Y - 15)
				end
			end
		else

			if data.label then data.label:Remove() end
			if data.highlight then data.highlight:Destroy() end
			pollinatedCache[id] = nil
		end
	end
end)


local function scanPollinatedFruits()
	local farm
	for _, f in ipairs(workspace.Farm:GetChildren()) do
		local data = f:FindFirstChild("Important") and f.Important:FindFirstChild("Data")
		if data and data:FindFirstChild("Owner") and data.Owner.Value == LocalPlayer.Name then
			farm = f
			break
		end
	end

	if not farm then return end

	local plantsFolder = farm.Important:FindFirstChild("Plants_Physical")
	if not plantsFolder then return end

	for _, plant in ipairs(plantsFolder:GetChildren()) do
		if plant:IsA("Model") then
			local fruits = plant:FindFirstChild("Fruits")
			if fruits then
				for _, fruit in ipairs(fruits:GetChildren()) do
					if fruit:GetAttribute("Pollinated") == true then
						local id = fruit:GetDebugId()
						if not pollinatedCache[id] then
							createPollinatedESP(fruit)
						end
					end
				end
			end
		end
	end
end

local Toggle = Tabs.Esp:AddToggle("MyToggle", {
	Title = "Esp pollinated",
	Default = false 
})
Toggle:OnChanged(function(state)
	pollinatedESPEnabled = state
		if state then
			scanPollinatedFruits()
		end
end)



Tabs.Misc:AddButton({
	Title = "Rejoin",
	Description = "",
	Callback = function()
	local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(game.PlaceId, p)
	end
})


Tabs.Misc:AddButton({
	Title = "Serverhop",
	Description = "",
	Callback = function()
	local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"
local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
end
local Server, Next; repeat
   local Servers = ListServers(Next)
   Server = Servers.data[1]
   Next = Servers.nextPageCursor
until Server
TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
end})


local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LocalPlayer = Players.LocalPlayer


local hideOtherFarms = false
local hiddenFarms = {}


local function hideOtherPlayerFarms()
   
    if not hideOtherFarms then
        for farm, originalParent in pairs(hiddenFarms) do
            if farm and not farm:IsDescendantOf(Workspace) then
                farm.Parent = originalParent or Workspace.Farm
            end
        end
        hiddenFarms = {}
        return
    end

    
    for _, farm in ipairs(Workspace.Farm:GetChildren()) do
        local data = farm:FindFirstChild("Important") and farm.Important:FindFirstChild("Data")
        local ownerValue = data and data:FindFirstChild("Owner")

        if ownerValue and ownerValue:IsA("StringValue") and ownerValue.Value ~= LocalPlayer.Name then
            hiddenFarms[farm] = farm.Parent
            farm.Parent = nil
        end
    end
end

local Toggle = Tabs.Misc:AddToggle("MyToggle", {
	Title = "Remove plant",
	Default = false 
})
Toggle:OnChanged(function(state)
hideOtherFarms = state
        hideOtherPlayerFarms()
end)

Workspace.Farm.ChildAdded:Connect(function()
    if hideOtherFarms then
        task.wait(0.2)
        hideOtherPlayerFarms()
    end
end)

Workspace.Farm.ChildRemoved:Connect(function()
    if hideOtherFarms then
        task.wait(0.2)
        hideOtherPlayerFarms()
    end
end)

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)


SaveManager:IgnoreThemeSettings()


SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")


InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Tbao Hub",
    Content = "The script has been loaded",
    Duration = 8
})


SaveManager:LoadAutoloadConfig()

    