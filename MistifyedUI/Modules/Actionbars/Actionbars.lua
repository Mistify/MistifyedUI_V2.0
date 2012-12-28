local T, C, L, G = unpack(Tukui or AsphyxiaUI or DuffedUI)
local TukuiPanels = CreateFrame("Frame")
	TukuiPanels:RegisterEvent("PLAYER_ENTERING_WORLD")
	TukuiPanels:SetScript("OnEvent", function(self)

	TukuiBar5:StripTextures()
	TukuiBar4:StripTextures()
	TukuiBar2:StripTextures()
	TukuiBar3:StripTextures()
	TukuiBar1:StripTextures()


TukuiBar1:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, 48)
	TukuiBar4:SetPoint("BOTTOM", UIParent, "BOTTOM", 0, 48)
	
	for i= 1, 12 do
		local b = _G["MultiBarRightButton"..i]
		local b2 = _G["MultiBarRightButton"..i-1]
		b:SetSize(T.buttonsize, T.buttonsize)
		b:ClearAllPoints()
		b:SetFrameStrata("BACKGROUND")
		b:SetFrameLevel(15)
	
		if i == 1 then
			b:SetPoint("TOPRIGHT", TukuiBar5, -T.buttonspacing, -T.buttonspacing)
		else
			b:SetPoint("LEFT", b2, "RIGHT", T.buttonspacing, 0)
		end
	
		G.ActionBars.Bar5["Button"..i] = b
	end

for i=7, 12 do
        local button = _G["MultiBarRightButton"..i]
    
    	button:SetSize(0, 0)
        button:SetAlpha(0)
end

	MultiBarRightButton1:ClearAllPoints()
	MultiBarRightButton1:SetPoint("BOTTOM", UIParent, "BOTTOM", -84, 166)

StanceBarFrame:ClearAllPoints() 
StanceBarFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 0, -10)	






end)
