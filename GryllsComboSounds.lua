local function GryllsComboSounds_points()
    local media = "Interface\\Addons\\GryllsComboSounds\\media\\"
    local points = GetComboPoints("player", "target")
    PlaySoundFile(media..points..".mp3")
end

local GryllsComboSounds = CreateFrame("Frame", nil, UIParent)
GryllsComboSounds:RegisterEvent("ADDON_LOADED")
GryllsComboSounds:RegisterEvent("PLAYER_COMBO_POINTS")
GryllsComboSounds:SetScript("OnEvent", function()
    if event == "ADDON_LOADED" then        
        DEFAULT_CHAT_FRAME:AddMessage("|cFFFF9900Grylls|rComboSounds loaded!")
    elseif event == "PLAYER_COMBO_POINTS" then
        GryllsComboSounds_points()
    end
end)