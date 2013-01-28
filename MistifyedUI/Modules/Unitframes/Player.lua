---------------------------------------------------------------------------------------------
-- AddOn Name: MissyUI 1.x
-- Author: Missy
-- Description: MissyUI
---------------------------------------------------------------------------------------------

local T, C, L, G = unpack( Tukui )

local self = _G["TukuiPlayer"]


--	local variables
------------------------------------------------------------------------
local unit = TukuiPlayer
local Castbar = TukuiPlayer.Castbar
local health = TukuiPlayer.Health
local power = TukuiPlayer.Power
local healthBG = TukuiPlayer.Health.bg
local portrait = TukuiPlayer.Portrait
local Experience = TukuiPlayer.Experience
local Resting = TukuiPlayer.Resting
local Reputation = TukuiPlayer.Reputation
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
	health:SetHeight( 25 )

self.Health.bg:SetVertexColor(.25, .1, .1)
self.Health.bg:SetTexture(C["media"].blank)
self.Health:SetStatusBarTexture(C.media.normTex)
self.Health:SetStatusBarColor(.1, .1, .1)



		health:SetPoint( "TOPLEFT", 0, 0 )
		health:SetPoint( "TOPRIGHT" )


	health.value = T.SetFontString( health, C.media.pixelfont, 13 )
	health.value:Point( "RIGHT", health, "RIGHT", -25, 2 )
	health.value:SetShadowOffset( 0, 0 )

end

---------------------------------------------------------------------------------------------
-- power
---------------------------------------------------------------------------------------------
do
	self.Power:SetHeight(2)
	power:Point( "TOPLEFT", health, "BOTTOMLEFT", 9, 4 )
	power:Point( "TOPRIGHT", health, "BOTTOMRIGHT", -9, -6 )
	power:SetFrameLevel( health:GetFrameLevel() + 1 )
	power.value = T.SetFontString( health, C.media.pixelfont, 13 )
	power.value:Point( "LEFT", health, "LEFT", 25, 2 )
end

---------------------------------------------------------------------------------------------
-- portrait
---------------------------------------------------------------------------------------------
do
	if( C["unitframes"].charportrait == true ) then
		portrait:ClearAllPoints()
		portrait:SetAllPoints( health )
		-- portrait:SetAllPoints( TukuiPlayer.Health )
		portrait:SetAlpha( 0.7 )
		portrait.SetAlpha = T.dummy

		portrait:SetFrameLevel( power:GetFrameLevel() - 1 )
	end
end

---------------------------------------------------------------------------------------------

-- experience and reputation bar
---------------------------------------------------------------------------------------------
if( T.level ~= MAX_PLAYER_LEVEL ) then
	Experience:Width( 240)
	Experience:Height( 5 )
	Experience:ClearAllPoints()
	Experience:Point( "BOTTOM", UIParent, "BOTTOM", 0, 55 )
	Experience:SetFrameLevel( 2 )
	Experience:SetAlpha( 1 )
	Experience:HookScript( "OnLeave", function( self ) self:SetAlpha( 1 ) end )
	Experience.bg = CreateFrame("Frame", nil, Experience)
	Experience.bg:SetTemplate("Transparent")

	Experience.bg:SetPoint("TOPLEFT", -2, 2)
	Experience.bg:SetPoint("BOTTOMRIGHT", 2, -2)
	Experience.bg:SetFrameLevel(1)
	Resting:SetTexture( nil )
end

if( T.level == MAX_PLAYER_LEVEL ) then
	Reputation:Width( 240)
	Reputation:Height( 5 )
	Reputation:ClearAllPoints()
	Reputation:Point( "LEFT", TukuiInfoLeft, "RIGHT", 8, 0 )
	Reputation:SetFrameLevel( 2 )
	Reputation:SetAlpha( 1 )
	Reputation:HookScript( "OnLeave", function( self ) self:SetAlpha( 1 ) end )
	Reputation.bg = CreateFrame("Frame", nil, Reputation)
	Reputation.bg:SetTemplate("Transparent")

	Reputation.bg:SetPoint("TOPLEFT", -2, 2)
	Reputation.bg:SetPoint("BOTTOMRIGHT", 2, -2)
	Reputation.bg:SetFrameLevel(1)
end

-----------------------------------------------------------------
---------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------
-- size
---------------------------------------------------------------------------------------------

-- unit:Size( 246, 25 )
unit:SetHeight( 25)










-- castbar
---------------------------------------------------------------------------------------------

if( C["unitframes"].unitcastbar == true ) then
	Castbar:ClearAllPoints()
	Castbar:SetPoint( "BOTTOM", InvTukuiActionBarBackground, "TOP", 15, 5 )
	
	if C["unitframes"].cbicons == true then
		Castbar:Size(  240, 18 )
	else
		Castbar:Size( InvTukuiActionBarBackground:GetWidth() - 164, 18 )
	end

	Castbar:SetFrameLevel(4)


	-- Castbar.Time = T.SetFontString(castbar, C.media.pixelfont, 12)
	Castbar.Time:Point("RIGHT", Castbar, "RIGHT", -4, 0)
	Castbar.Text:Point("LEFT", Castbar, "LEFT", 4, 0)


	if C["unitframes"].cbicons == true then
		Castbar.button:ClearAllPoints()
		Castbar.button:SetPoint( "RIGHT", Castbar, "LEFT", -6, 0 )
		Castbar.button:Size( 20, 20 )
	end

	Castbar.bg = CreateFrame("Frame", nil, Castbar)
	Castbar.bg:SetTemplate("Transparent")

	Castbar.bg:SetPoint("TOPLEFT", -2, 2)
	Castbar.bg:SetPoint("BOTTOMRIGHT", 2, -2)
	Castbar.bg:SetFrameLevel(3)
end
