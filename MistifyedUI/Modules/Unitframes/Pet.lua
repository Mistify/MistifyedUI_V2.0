---------------------------------------------------------------------------------------------
-- AddOn Name: MissyUI 1.x
-- Author: Missy
-- Description: MissyUI
---------------------------------------------------------------------------------------------

local T, C, L, G = unpack( Tukui )



--	local variables
------------------------------------------------------------------------
local unit = TukuiPet
local health = TukuiPet.Health
local power = TukuiPet.Power
local healthBG = TukuiPet.Health.bg
local name = TukuiPet.Name
local font = C.media.pixelfont

---------------------------------------------------------------------------------------------
-- not needed
---------------------------------------------------------------------------------------------
do
	unit.shadow:Kill()
	if not T.lowversion then
		unit.panel:Kill()
	end
end

---------------------------------------------------------------------------------------------
-- health
---------------------------------------------------------------------------------------------
do
	health:SetHeight( 24 )


health.bg:SetVertexColor(.25, .1, .1)
health.bg:SetTexture(C["media"].blank)
health:SetStatusBarTexture(C.media.normTex)
health:SetStatusBarColor(.1, .1, .1)





	name:SetFont( C.media.pixelfont, 12 )
	name:SetParent( health )
	name:ClearAllPoints()
	name:SetPoint( "CENTER", health, "CENTER", 0, 0 )
	name:SetShadowOffset( 0, 0 )
	name.ClearAllPoints = T.dummy
	name.SetPoint = T.dummy

	unit:Tag( Name, "[Tukui:getnamecolor][Tukui:namemedium]" )
end

---------------------------------------------------------------------------------------------
-- power
---------------------------------------------------------------------------------------------
do
	power:SetHeight( 3 )
	power:Point( "TOPLEFT", health, "BOTTOMLEFT", 7, 4 )
	power:Point( "TOPRIGHT", health, "BOTTOMRIGHT", -7, 0 )
	power:SetFrameLevel( health:GetFrameLevel() + 1 )
	
end
---------------------------------------------------------------------------------------------
-- size
---------------------------------------------------------------------------------------------

unit:Size( 130, 24 )

