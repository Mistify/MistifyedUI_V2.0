local T, C, L, G = unpack(Tukui) -- Import: T - functions, constants, variables; C - config; L - locales
------------------------------------------------------------------------
--	local variables
------------------------------------------------------------------------



------------------------------------------------------------------------
-- Setup Base Player and Target Frames
------------------------------------------------------------------------
local player = G.UnitFrames.Player
local target = G.UnitFrames.Target
local pet = G.UnitFrames.Pet
local tot = G.UnitFrames.TargetTarget

if T.lowversion then
	pet:Size( 86, 14 )
	tot:Size( 86, 14 )
	tot.Health:SetHeight( 14 )
end

player:ClearAllPoints()
target:ClearAllPoints()
pet:ClearAllPoints()
tot:ClearAllPoints()

if T.lowversion then
	player:Point("BOTTOMLEFT", InvTukuiActionBarBackground, "TOPLEFT", -44, 64)
	target:Point("BOTTOMRIGHT", InvTukuiActionBarBackground, "TOPRIGHT", 44, 64)
	tot:Point("BOTTOMRIGHT", TukuiTarget, "BOTTOMLEFT", -4, 0)
	pet:Point("BOTTOM", TukuiTargetTarget, "TOP", 0, 6)
else
	player:Point("BOTTOM", UIParent, "BOTTOM", -250, 166)
	target:Point("BOTTOM", UIParent, "BOTTOM",  250, 166)
	tot:Point("BOTTOM", UIParent, "BOTTOM",  0, 210)
	pet:Point("TOPLEFT", TukuiPlayer, "BOTTOMLEFT", 0, -8)



end