local T, C, L, G = unpack(Tukui or AsphyxiaUI or DuffedUI)
local TukuiPanels = CreateFrame("Frame")
	TukuiPanels:RegisterEvent("PLAYER_ENTERING_WORLD")
	TukuiPanels:SetScript("OnEvent", function(self)

	TukuiBar5:StripTextures()
	TukuiBar4:StripTextures()
	TukuiBar2:StripTextures()
	TukuiBar3:StripTextures()
	TukuiBar1:StripTextures()





	StanceBarFrame:ClearAllPoints() 
	StanceBarFrame:SetPoint("TOPLEFT", TukuiInfoLeft, "BOTTOM", 0, -0)	


	
for i= 1, 12 do
		local b = _G["ActionButton"..i]
		local b2 = _G["ActionButton"..i-1]
		b:SetSize(T.buttonsize, T.buttonsize)
		b:ClearAllPoints()
		b:SetFrameStrata("BACKGROUND")
		b:SetFrameLevel(15)
	
		if i == 1 then
			b:SetPoint("TOPRIGHT", TukuiBar1, -T.buttonspacing, -T.buttonspacing)
		else
			b:SetPoint("LEFT", b2, "RIGHT", T.buttonspacing, 0)
		end
	
		G.ActionBars.Bar1["Button"..i] = b
	end

for i=7, 12 do
        local button = _G["ActionButton"..i]
    
    	button:SetSize(0, 0)
        button:SetAlpha(0)
end

	ActionButton1:ClearAllPoints()
	ActionButton1:SetPoint("BOTTOM", UIParent, "BOTTOM", -77, 195)


TukuiBar2:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOM", 3, 87)
TukuiBar3:SetPoint("BOTTOMLEFT", UIParent, "BOTTOM", -2, 87)


TukuiBar4:SetPoint("TOPLEFT", TukuiInfoRight, "BOTTOMLEFT", -2, -2)

TukuiBar5:SetPoint("TOPRIGHT", UIParent, "RIGHT", 500, 0)
TukuiPetBar:SetPoint("RIGHT", UIParent, "RIGHT", -10, 0)



end)

