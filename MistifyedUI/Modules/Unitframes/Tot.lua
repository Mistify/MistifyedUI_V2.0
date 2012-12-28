---------------------------------------------------------------------------------------------
-- AddOn Name: MissyUI 1.x
-- Author: Missy
-- Description: MissyUI
---------------------------------------------------------------------------------------------

local T, C, L, G = unpack( Tukui )


-------
--	local variables
------------------------------------------------------------------------
local unit = TukuiTargetTarget
local health = TukuiTargetTarget.Health
local power = TukuiPlayer.Power
local healthBG = TukuiPlayer.Health.bg
local name = TukuiTargetTarget.Name
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
	health:SetHeight( 18 )


health.bg:SetVertexColor(.25, .1, .1)
health.bg:SetTexture(C["media"].blank)
health:SetStatusBarTexture(C.media.normTex)
health:SetStatusBarColor(.1, .1, .1)






	name:SetFont( C.media.pixelfont, 12)
	name:SetParent( health )
	name:ClearAllPoints()
	name:SetPoint( "CENTER", health, "CENTER", 0, 0 )
	name:SetShadowOffset( 0, 0 )
	name.ClearAllPoints = T.dummy
	name.SetPoint = T.dummy

	unit:Tag( Name, "[Tukui:getnamecolor][Tukui:namemedium] [Tukui:diffcolor][level]" )
end
---------------------------------------------------------------------------------------------
-- size
---------------------------------------------------------------------------------------------

unit:Size( 130, 18 )
