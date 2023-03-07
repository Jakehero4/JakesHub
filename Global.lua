getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "Jakes Hub",
   LoadingTitle = "Loading Jakes Hub",
   LoadingSubtitle = "By Jake",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "Jakes Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "Jakes Hub",
      Subtitle = "Key System",
      Note = "Join the discord",
      FileName = "JakesHubKey",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = "1234"
   }
})

local CharacterTab = Window:CreateTab("Character")
local MovementSection = CharacterTab:CreateSection("Walk Speed")

local WalkSpeedSlider = CharacterTab:CreateSlider({
   Name = "Walk Speed",
   Range = {0, 200},
   Increment = 10,
   Suffix = "",
   CurrentValue = 16,
   Flag = "Walk Speed",
   Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

local WalkSpeedInput = CharacterTab:CreateInput({
   Name = "Walk Speed",
   PlaceholderText = "Walk Speed",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
		WalkSpeedSlider:Set(Text)
   end,
})

local WalkSpeedButton = CharacterTab:CreateButton({
   Name = "Default Walk Speed",
   Callback = function()
		WalkSpeedSlider:Set(16)
   end,
})

local CharacterSection = CharacterTab:CreateSection("Jump Height")

local JumpHeightSlider = CharacterTab:CreateSlider({
   Name = "Jump Height",
   Range = {0, 200},
   Increment = 10,
   Suffix = "",
   CurrentValue = 7,
   Flag = "Jump Height",
   Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpHeight = Value
   end,
})

local JumpHeightInput = CharacterTab:CreateInput({
   Name = "Jump Height",
   PlaceholderText = "Jump Height",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
		JumpHeightSlider:Set(Text)
   end,
})

local JumpHeightButton = CharacterTab:CreateButton({
   Name = "Default Jump Height",
   Callback = function()
		JumpHeightSlider:Set(7)
   end,
})

local GravitySection = CharacterTab:CreateSection("Gravity")

local GravitySlider = CharacterTab:CreateSlider({
   Name = "Gravity",
   Range = {0, 400},
   Increment = 10,
   Suffix = "",
   CurrentValue = 196,
   Flag = "Gravity",
   Callback = function(Value)
		game.Workspace.Gravity = Value
   end,
})

local GravityInput = CharacterTab:CreateInput({
   Name = "Gravity",
   PlaceholderText = "Gravity",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
		GravitySlider:Set(Text)
   end,
})

local GravityButton = CharacterTab:CreateButton({
   Name = "Default Gravity",
   Callback = function()
		GravitySlider:Set(196)
   end,
})

local OtherSection = CharacterTab:CreateSection("Other")

local SitButton = CharacterTab:CreateButton({
   Name = "Sit",
   Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Sit = true
   end,
})

local ResetButton = CharacterTab:CreateButton({
   Name = "Reset",
   Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
   end,
})

local TeleportTab = Window:CreateTab("Teleport")
local TeleportSection = TeleportTab:CreateSection("Teleport To Player")

local TeleportInput = TeleportTab:CreateInput({
   Name = "Teleport To Player",
   PlaceholderText = "Player Name",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Text].Character.HumanoidRootPart.CFrame
   end,
})

local SettingsTab = Window:CreateTab("Settings")
local SettingsSection = SettingsTab:CreateSection("Settings")

local DestroyButton = SettingsTab:CreateButton({
   Name = "Destroy Menu",
   Callback = function()
		Rayfield:Destroy()
   end,
})