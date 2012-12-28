---------------------------------------------------------------------------------------------
-- AddOn Name: MissyUI 1.x
-- Author: Missy
-- Description: MissyUI
---------------------------------------------------------------------------------------------

local T, C, L, G = unpack( Tukui )


--	local variables
------------------------------------------------------------------------
local unit = TukuiTarget
local castbar = TukuiTarget.Castbar
local health = TukuiTarget.Health
local power = TukuiTarget.Power
local healthBG = TukuiTarget.Health.bg
local portrait = TukuiTarget.Portrait
local name = TukuiTarget.Name
local font = C.media.pixelfont
---------------------------------------------------------------------------------------------
-- not needed
---------------------------------------------------------------------------------------------
do
	unit.shadow:Kill()
	unit.panel:Kill()
end

---------------------------------------------------------------------------------------------
-- health
---------------------------------------------------------------------------------------------
do
	health:SetHeight( 28 )
	


unit.Health.bg:SetVertexColor(.25, .1, .1)
unit.Health.bg:SetTexture(C["media"].blank)
unit.Health:SetStatusBarTexture(C.media.normTex)
unit.Health:SetStatusBarColor(.1, .1, .1)







		health:SetPoint( "TOPLEFT", 0, 0 )
		health:SetPoint( "TOPRIGHT" )






	health.value = T.SetFontString( health, C.media.pixelfont, 13 )
	health.value:Point( "RIGHT", health, "RIGHT", -5, 0 )
	health.value:SetShadowOffset( 0, 0 )

	name:SetFont( C.media.pixelfont, 13 )
	name:SetParent( health )
	name:ClearAllPoints()
	name:SetPoint( "LEFT", health, "LEFT", 5, 2 )
	name:SetShadowOffset( 0, 0 )
	name.ClearAllPoints = T.dummy
	name.SetPoint = T.dummy

	unit:Tag( name, "[Tukui:getnamecolor][Tukui:namelong] [Tukui:diffcolor][level] [shortclassification]" )
end

---------------------------------------------------------------------------------------------
-- power
---------------------------------------------------------------------------------------------
do
	power:SetHeight( 3 )
	power:Point( "TOPLEFT", health, "BOTTOMLEFT", 9, 4 )
	power:Point( "TOPRIGHT", health, "BOTTOMRIGHT", -9, -6 )
	power:SetFrameLevel( health:GetFrameLevel() + 1 )

end

---------------------------------------------------------------------------------------------
-- portrait
---------------------------------------------------------------------------------------------
do
	if( C["unitframes"].charportrait == true ) then
		portrait:ClearAllPoints()
		portrait:SetAllPoints( TukuiTarget.Health )
		portrait:SetAlpha( 0.7 )
		portrait.SetAlpha = T.dummy
		portrait:SetFrameLevel( power:GetFrameLevel() - 1 )
	end
end

---------------------------------------------------------------------------------------------
-- castbar
---------------------------------------------------------------------------------------------
do
	if( C["unitframes"].unitcastbar == true ) then
		castbar:ClearAllPoints()
		castbar:SetPoint( "BOTTOMLEFT", TukuiTarget, "TOPLEFT", 0, 118 )
		if C["unitframes"].cbicons == true then
			castbar:Size( TukuiTarget:GetWidth() - 24, 16 )
		else
			castbar:Size( TukuiTarget:GetWidth() - 4, 16 )
		end


		if C["unitframes"].cbicons == true then
			castbar.button:ClearAllPoints()
			castbar.button:SetPoint( "LEFT", castbar, "RIGHT", 6, 0 )
			castbar.button:Size( 18, 18 )
		end
		castbar.Time = T.SetFontString(castbar, C["media"].uffont, 12, "THINOUTLINE")
		castbar.Text = T.SetFontString(castbar, C["media"].uffont, 12, "THINOUTLINE")
		
		castbar.Time:Point("RIGHT", castbar, "RIGHT", -4, 0)
		castbar.Text:Point("LEFT", castbar, "LEFT", 4, 0)

		castbar.bg = CreateFrame("Frame", nil, castbar)
		castbar.bg:SetTemplate("Transparent")

		castbar.bg:SetPoint("TOPLEFT", -2, 2)
		castbar.bg:SetPoint("BOTTOMRIGHT", 2, -2)
		castbar.bg:SetFrameLevel(3)
	end
end

---------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------
-- buffs, debuffs
---------------------------------------------------------------------------------------------
do
	if( C["unitframes"].targetauras == true ) then
		unit.Buffs.num = 9
		unit.Debuffs.num = 18

		unit.Buffs:ClearAllPoints()
		unit.Buffs:SetPoint( "BOTTOMLEFT", unit, "TOPLEFT", -2, 4 )
	end
end
---------------------------------------------------------------------------------------------
-- size
---------------------------------------------------------------------------------------------

-- unit:Size( 246, 28 )
unit:SetHeight( 28 )
