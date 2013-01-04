local T, C, L, G = unpack( Tukui )


local font = C.media.pixelfont

-----Adding Outlines to Chat Fonts------
----------------------------------------
ChatFrame1:SetFont(C.media.pixelfont, 13, "THINOUTLINE")
ChatFrame2:SetFont(C.media.pixelfont, 13, "THINOUTLINE")
ChatFrame4:SetFont(C.media.pixelfont, 13, "THINOUTLINE")


-------Left Chat Area Setup-------
-----------------------------------------
TukuiInfoLeft:SetPoint("LEFT", UIParent, "BOTTOMLEFT", 150, 120)


TukuiLineToABLeft:ClearAllPoints()
TukuiLineToABLeft:SetWidth(636)
TukuiLineToABLeft:SetPoint("LEFT", UIParent, "BOTTOMLEFT", 135, 120)

TukuiInfoLeftLineVertical:ClearAllPoints()
TukuiInfoLeftLineVertical:SetHeight(10)
TukuiInfoLeftLineVertical:SetPoint("BOTTOM", TukuiLineToABLeft, "LEFT", 0,0)

local ileftlv = CreateFrame("Frame", "VertLineLeft", UIParent)
ileftlv:SetTemplate()
ileftlv:Size(2, 58)
ileftlv:Point("LEFT", TukuiLineToABLeft, "RIGHT", 0, 0)
ileftlv:SetFrameLevel(1)
ileftlv:SetFrameStrata("BACKGROUND")
G.Panels.BottomLeftVerticalLine = ileftlv


-------Right Chat Area Setup-------
-----------------------------------------
TukuiInfoRight:SetPoint("RIGHT", UIParent, "BOTTOMRIGHT", -150, 120)

TukuiLineToABRight:ClearAllPoints()
TukuiLineToABRight:SetWidth(635)
TukuiLineToABRight:SetPoint("RIGHT", UIParent, "BOTTOMRIGHT", -135, 120)

TukuiInfoRightLineVertical:ClearAllPoints()
TukuiInfoRightLineVertical:SetHeight(10)
TukuiInfoRightLineVertical:SetPoint("BOTTOM", TukuiLineToABRight, "RIGHT", 0,0)


local irightlv = CreateFrame("Frame", "VertLineRight", UIParent)
irightlv:SetTemplate()
irightlv:Size(2, 58)
irightlv:Point("RIGHT", TukuiLineToABRight, "LEFT", 0, 0)
irightlv:SetFrameLevel(1)
irightlv:SetFrameStrata("BACKGROUND")
G.Panels.BottomRightVerticalLine = irightlv

