local P, C, L, G = unpack(Tukui)

local status = TukuiThreatBar

status:SetParent(UIParent)
status:Size(250, 21)
status:ClearAllPoints()
status:Point("BOTTOM", UIParent, "TOP", 0, 25)

local background = CreateFrame("Frame", nil, status)
background:SetFrameLevel(status:GetFrameLevel() - 1)
background:Point("TOPLEFT", -2, 2)
background:Point("BOTTOMRIGHT", 2, -2)
background:SetTemplate("Transparent")


status.text:SetFont(C["media"].pixelfont, C.media.pfontsize)
status.Title:SetFont(C["media"].pixelfont, C.media.pfontsize)
