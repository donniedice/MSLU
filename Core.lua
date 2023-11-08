-- v1.0.8

-- This script contains three event functions:
-- 1. A function that plays a custom sound when the player levels up.
-- 2. A function that mutes the default level up sound.
-- 3. A function that displays a chat message when the player logs in, informing them that the MSLU addon will no longer receive updates and that its functionality has been merged into the BLU addon. 

-- The MSLU addon is designed to provide a custom sound effect when the player levels up in the game Maplestory. This script is version 1.0.7 of the addon.

-- Event function level up
local frame_a = CreateFrame("Frame")
frame_a:RegisterEvent("PLAYER_LEVEL_UP")
frame_a:SetScript("OnEvent", function(self, event, ...)
	PlaySoundFile("Interface\\Addons\\MSLU\\MSLU.ogg", "Master")
end)

-- Mute default level up sound
local frame_b = CreateFrame("Frame")
frame_b:RegisterEvent("ADDON_LOADED")
frame_b:SetScript("OnEvent", function(self, event, ...)
	MuteSoundFile(569593)
end)

-- Chat Message
local frame_c = CreateFrame("Frame")
frame_c:RegisterEvent("PLAYER_LOGIN")
frame_c:SetScript("OnEvent", function(self, event, ...)
	if event == "PLAYER_LOGIN" then
		print("|cfff4d038MSLU - Maplestory Level Up!|r Will no longer be receiving updates. Functionality has been merged into |c2d4b92ffBLU - Better Level Up!|r. If you're a fan of my sound addons, |c2d4b92ffBLU - Better Level Up!|r is available from all addon provider websites. Thank you!")
	end
end)
