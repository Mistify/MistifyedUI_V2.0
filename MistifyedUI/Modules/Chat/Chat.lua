local T, C, L, G = unpack(Tukui or AsphyxiaUI or DuffedUI)
local TukuiPanels = CreateFrame("Frame")
	TukuiPanels:RegisterEvent("PLAYER_ENTERING_WORLD")
	TukuiPanels:SetScript("OnEvent", function(self)



TukuiInfoLeft:ClearAllPoints() TukuiInfoLeft:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 20, 20)
TukuiInfoRight:ClearAllPoints() TukuiInfoRight:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -20, 20)

if TukuiLineToABLeft then TukuiLineToABLeft:Hide() end
		if TukuiLineToABLeftAlt then TukuiLineToABLeftAlt:Hide() end
		if TukuiLineToABRight then TukuiLineToABRight:Hide() end
		if TukuiLineToABRightAlt then TukuiLineToABRightAlt:Hide() end

if TukuiCubeLeft then TukuiCubeLeft:Hide() end
if TukuiCubeRight then TukuiCubeRight:Hide() end

if TukuiInfoLeftLineVertical then TukuiInfoLeftLineVertical:Hide() end
if TukuiInfoRightLineVertical then TukuiInfoRightLineVertical:Hide() end


if TukuiTabsLeftBackground then TukuiTabsLeftBackground:Hide() end
if TukuiTabsRightBackground then TukuiTabsRightBackground:Hide() end

TukuiChatBackgroundLeft:ClearAllPoints() TukuiChatBackgroundLeft:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 10, 28)
TukuiChatBackgroundLeft:Size(390, 150)

TukuiChatBackgroundRight:ClearAllPoints() TukuiChatBackgroundRight:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -10, 28)
TukuiChatBackgroundRight:Size(390, 150)

ChatFrame1:Size(340, 100)
ChatFrame4:Size(340, 100)


end)
