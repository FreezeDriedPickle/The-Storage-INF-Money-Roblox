local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Window = Library:NewWindow("Script")
 
local Tab = Window:NewSection("Credits: TGMANKASKE")

Tab:CreateButton("Get Money", function()


local function roll()
    local args = {
        [1] = "PremRollSkin10"
    }
    game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))
end

-- Don't mind this
local function sell()
    local skins = {
        "Hot Pink", "Agent", "Checkered", "Grey Camo", "Rusted Red",
        "Green Camo", "Orange Crush", "Painted Yellow", "Painted Orange",
        "Damaged", "Earth", "Painted Blue", "Painted Green", "Painted Red", 
        "Painted Pink", "Painted Purple", "Green Sentry", "Pink Sentry", 
        "Red Sentry", "Royal", "Fallen Agent"
    }
    local guns = {"SMG", "LMG", "Double Barrel Shotgun", "Revolver", "AK47", "Turret", "Shotgun"}

    for _, g in ipairs(guns) do
        for _, s in ipairs(skins) do
            local evArgs = {
                [1] = "SellSkin",
                [2] = g,
                [3] = s
            }
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(evArgs))
            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvent"):FireServer(unpack(evArgs))
        end
    end
end

sell()
roll()

local rollConnection = game:GetService("RunService").Heartbeat:Connect(function()
    roll()
end)

end)

Tab:CreateButton("Rejoin for more", function()

local player = game.Players.LocalPlayer
local gamePlaceId = game.PlaceId
local teleportService = game:GetService("TeleportService")
teleportService:Teleport(gamePlaceId, player)

end)


local Tab = Window:NewSection("Links")
 
Tab:CreateButton("Discord Group", function()
print("HI")
 
setclipboard("https://discord.gg/8A6k73JqCM")
toclipboard("https://discord.gg/8A6k73JqCM")
 
end)
 
