local function points()
    local media = "Interface\\Addons\\GryllsComboSounds\\media\\"
    local points = GetComboPoints("player", "target")
    PlaySoundFile(media..points..".mp3")
end

local events = CreateFrame("Frame", nil, UIParent)
events:RegisterEvent("PLAYER_COMBO_POINTS")

events:SetScript("OnEvent", function()
    points()
end)
