---------------------------------------------------------------------------------------------
-- AddOn Name: MissyUI 1.x
-- Author: Missy
-- Description: MissyUI
---------------------------------------------------------------------------------------------

local T, C, L, G = unpack( Tukui )

for i = 1, MAX_BOSS_FRAMES do
	local unit = _G["TukuiBoss" .. i]
	------------------------------------------------------------------------
	--	local variables
	------------------------------------------------------------------------
	local health = unit.Health
	local power = unit.Power
	local healthBG = unit.Health.bg
	local castbar = unit.Castbar
	local name = unit.Name
local font = C.media.pixelfont
	---------------------------------------------------------------------------------------------
	-- not needed
	---------------------------------------------------------------------------------------------
	do
		unit.shadow:Kill()
	end

	---------------------------------------------------------------------------------------------
	-- health
	---------------------------------------------------------------------------------------------
	do
		health:Height( 28 )
		

health.bg:SetVertexColor(.25, .1, .1)
health.bg:SetTexture(C["media"].blank)
health:SetStatusBarTexture(C.media.normTex)
health:SetStatusBarColor(.1, .1, .1)




		health.value = T.SetFontString( health, C["media"].uffont, 12, "THINOUTLINE" )
		health.value:Point( "LEFT", 5, 2 )
		health.value:SetShadowOffset( 0, 0 )
	end

	---------------------------------------------------------------------------------------------
	-- power
	---------------------------------------------------------------------------------------------
	do
		-- power:Height( 5 )
		power:Point( "TOPLEFT", health, "BOTTOMLEFT", 9, 4 )
		power:Point( "TOPRIGHT", health, "BOTTOMRIGHT", -9, -6 )
		power:SetFrameLevel( health:GetFrameLevel() + 1 )
		

		power.value = T.SetFontString( health, C["media"].uffont, 12, "THINOUTLINE" )
		power.value:Point( "RIGHT", -5, 0 )
		power.value:SetShadowOffset( 0, 0 )
	end

	---------------------------------------------------------------------------------------------
	-- castbar
	---------------------------------------------------------------------------------------------
	do
		castbar:ClearAllPoints()
		castbar:Point( "TOPRIGHT", health, "BOTTOMRIGHT", 0, -12 )
		if C["unitframes"].cbicons == true then
			castbar:Size( unit:GetWidth() - 24, 16 )
		else
			castbar:Size( unit:GetWidth(), 16 )
		end
	

		if C["unitframes"].cbicons == true then
			castbar.button:ClearAllPoints()
			castbar.button:SetPoint( "LEFT", castbar, -26, 0 )
			castbar.button:Size( 20, 20 )
			castbar.button:CreateShadow( "Default" )
		else
			scastbar.button:Kill()
		end

		castbar.Text:SetFont( C["media"].uffont, 12, "THINOUTLINE" )
		castbar.Text:SetParent( castbar )
		castbar.Text:ClearAllPoints()
		castbar.Text:SetPoint( "LEFT", castbar, "LEFT", 5, 0 )
		castbar.Text.ClearAllPoints = T.dummy
		castbar.Text.SetPoint = T.dummy

		castbar.time:SetFont( C["media"].uffont, 12, "THINOUTLINE" )
		castbar.time:SetParent( castbar )
		castbar.time:ClearAllPoints()
		castbar.time:SetPoint( "RIGHT", castbar, "RIGHT", -5, 0 )
		castbar.time.ClearAllPoints = T.dummy
		castbar.time.SetPoint = T.dummy
	end


	---------------------------------------------------------------------------------------------
	-- size, position
	---------------------------------------------------------------------------------------------
	-- do
		unit:Size( 200, 28 )
	-- 	self:ClearAllPoints()
	-- 	if( i == 1 ) then
	-- 		self:SetPoint( "RIGHT", InvTukuiActionBarBackground, "RIGHT", 450, 300 )
	-- 	else
	-- 		self:SetPoint( "BOTTOM", _G["TukuiBoss" .. i - 1]  , "TOP", 0, 36 )
	-- 	end
	-- end
end

