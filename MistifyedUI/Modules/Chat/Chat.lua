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
TukuiLineToABLeft:SetWidth(641)
TukuiLineToABLeft:SetPoint("LEFT", UIParent, "BOTTOMLEFT", 135, 120)

TukuiInfoLeftLineVertical:ClearAllPoints()
TukuiInfoLeftLineVertical:SetHeight(10)
TukuiInfoLeftLineVertical:SetPoint("BOTTOM", TukuiLineToABLeft, "LEFT", 0,0)

-------Right Chat Area Setup-------
-----------------------------------------
TukuiInfoRight:SetPoint("RIGHT", UIParent, "BOTTOMRIGHT", -150, 120)

TukuiLineToABRight:ClearAllPoints()
TukuiLineToABRight:SetWidth(641)
TukuiLineToABRight:SetPoint("RIGHT", UIParent, "BOTTOMRIGHT", -135, 120)

TukuiInfoRightLineVertical:ClearAllPoints()
TukuiInfoRightLineVertical:SetHeight(10)
TukuiInfoRightLineVertical:SetPoint("BOTTOM", TukuiLineToABRight, "RIGHT", 0,0)


