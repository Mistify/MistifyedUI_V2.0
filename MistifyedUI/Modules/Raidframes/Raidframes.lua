local P, C, L, G = unpack(Tukui)

--------------------------------------------------------------
-- Setting up raid frames here
--------------------------------------------------------------

local font = C.media.pixelfont
local fsize = C.media.pfontsize
local raidscale = 1

P.RaidFrameAttributes = function()
	return
	"TukuiRaid",
	nil,
	"custom [petbattle] hide;show",
	"oUF-initialConfigFunction", [[
		local header = self:GetParent()
		self:SetWidth(header:GetAttribute("initial-width"))
		self:SetHeight(header:GetAttribute("initial-height"))
	]],
	"initial-width", P.Scale((TukuiChatBackgroundLeft:GetWidth()/ 5) - 5),
	"initial-height", (28),
	"showParty", true,
	"showRaid", true,
	"showPlayer", true,
	"showSolo", false, -- used to test raid frame without a party.
	"xoffset", (6),
	"yOffset", (-6),
	"point", "LEFT",
	"groupFilter", "1,2,3,4,5,6,7,8",
	"groupingOrder", "1,2,3,4,5,6,7,8",
	"groupBy", "GROUP",
	"maxColumns", 8,
	"unitsPerColumn", 5,
	"columnSpacing", (8),
	"columnAnchorPoint", "TOP"
end


local oUF = oUFTukui or oUF

if (not oUF) then
	return
end

local utf8sub = function(string, i, dots)
	if not string then return end
	local bytes = string:len()
	if (bytes <= i) then
		return string
	else
		local len, pos = 0, 1
		while(pos <= bytes) do
			len = len + 1
			local c = string:byte(pos)
			if (c > 0 and c <= 127) then
				pos = pos + 1
			elseif (c >= 192 and c <= 223) then
				pos = pos + 2
			elseif (c >= 224 and c <= 239) then
				pos = pos + 3
			elseif (c >= 240 and c <= 247) then
				pos = pos + 4
			end
			if (len == i) then break end
		end

		if (len == i and pos <= bytes) then
			return string:sub(1, pos - 1)..(dots and '...' or '')
		else
			return string
		end
	end
end

oUF.Tags.Methods['Tukui:nameshort'] = function(unit)
	local name = UnitName(unit)
	return utf8sub(name, 7, false)
end





	
P.PostUpdateRaidUnit = function(self)
	self.panel:Kill()

	self.Health:ClearAllPoints()
	self.Health:SetAllPoints(self)

	self.Health:SetStatusBarTexture(C.media.normTex)
	
	self.Health:SetStatusBarColor(.1, .1, .1)
	self.Health.value:Point("CENTER", self.Health, 0, 9)
	self.Health.value:SetFont(font, 10)
	
	self.Health.bg:SetVertexColor(.25, .1, .1)
	self.Health.value:SetShadowOffset(0, 0)
	self.Health.bg:SetTexture(C["media"].blank)
	
	self.Power:ClearAllPoints()

	self.Name:SetParent(self.Health)
	self.Name:ClearAllPoints()
	self.Name:SetPoint("BOTTOM", 0, 4)
	self.Name:SetFont(font, 12)
	

	self.Power:ClearAllPoints()
	self.Power:Height(3)
	self.Power:SetWidth(55)
	
	self.Power:Point("TOP", self.Health, "BOTTOM", 0, 4)
	self.Power:SetStatusBarTexture(C["media"].blank)
	self.Power:SetFrameLevel(15)



	local leader = self.Health:CreateTexture( nil, "OVERLAY" )
		leader:Height( 12  )
		leader:Width( 12  )
		leader:SetPoint( "TOPLEFT", 0, 6 )
		self.Leader = leader

		local LFDRole = self.Health:CreateTexture(nil, "OVERLAY")
		


LFDRole:Height(15*P.raidscale)
		LFDRole:Width(15)
		LFDRole:Point("TOPLEFT", 1, -1)
		LFDRole:SetTexture[[Interface\LFGFrame\UI-LFG-ICON-PORTRAITROLES]]
		self:RegisterEvent("UNIT_CONNECTION", P.RoleIconUpdate)
		

self.LFDRole = LFDRole
		
		local ReadyCheck = self.Health:CreateTexture(nil, "OVERLAY")
		ReadyCheck:Height(15)
		ReadyCheck:Width(15)
		ReadyCheck:SetPoint("CENTER", 0, -8) 	
		self.ReadyCheck = ReadyCheck

	
end

	

local RaidPosition = CreateFrame("Frame")
RaidPosition:RegisterEvent("PLAYER_LOGIN")
RaidPosition:SetScript("OnEvent", function(self, event)
	
	if C.unitframes.showraidpets == true then
		G.UnitFrames.RaidPets:ClearAllPoints()
	end

	G.UnitFrames.RaidUnits:ClearAllPoints()
	G.UnitFrames.RaidUnits:SetPoint("BOTTOMLEFT", TukuiChatBackgroundLeft, "TOPLEFT", 2, 18)
end)


