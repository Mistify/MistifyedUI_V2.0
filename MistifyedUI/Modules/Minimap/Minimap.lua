---------------------------------------------------------------------------------------------
-- AddOn Name: MistifyedUI 1.x
-- Author: Missy
-- Description: MistifyedUI
---------------------------------------------------------------------------------------------

local T, C, L, G = unpack( Tukui )

local font = C.media.pixelfont




if TukuiMinimapStatsLeft then TukuiMinimapStatsLeft:Hide()end

TukuiMinimapStatsRight:ClearAllPoints()
TukuiMinimapStatsRight:SetPoint("BOTTOM", TukuiMinimap, "BOTTOM", -0, -10)
TukuiMinimapStatsRight:SetFrameLevel( 4 )


Minimap:SetParent(TukuiMinimap)
Minimap:ClearAllPoints()
Minimap:Point("TOPLEFT", 2, -2)
Minimap:Point("BOTTOMRIGHT", -2, 2)
Minimap:Size(175)

TukuiMinimap:ClearAllPoints()
TukuiMinimap:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -13, -13)
TukuiMinimap:Size(175)


TukuiAurasPlayerBuffs:ClearAllPoints()
TukuiAurasPlayerBuffs:SetPoint("TOPRIGHT", TukuiMinimap, "TOPLEFT", -18, 0)

TukuiWatchFrame:ClearAllPoints()
TukuiWatchFrame:SetPoint ("TOPLEFT", UIParemt, "TOPLEFT", -0, -50)




TukuiRaidUtilityShowButton:ClearAllPoints()
TukuiRaidUtilityShowButton:SetPoint("TOP", UIParent, "TOP", -0, -10)

TukuiRaidUtility:ClearAllPoints()
TukuiRaidUtility:SetPoint("BOTTOM", TukuiRaidUtilityShowButton, "BOTTOM", -0, -100)



