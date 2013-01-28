local P, C, L, G = unpack(Tukui)

------DK
if P.myclass ~= "DEATHKNIGHT" or C.unitframes.classbar ~= true then return end

local self = _G["TukuiPlayer"]

self.Runes:ClearAllPoints()
self.Runes:SetPoint("BOTTOMLEFT", self, "TOPLEFT", 0, 1)
self.Runes:Size(self:GetWidth(), 3)


for i = 1, 6 do
	self.Runes[i]:Size((self:GetWidth() / 6) - 1, 3)
	if(i == 1) then
		self.Runes[i]:SetPoint("BOTTOMLEFT", self, "TOPLEFT", 0, 1)
	else
		self.Runes[i]:Point("LEFT", self.Runes[i - 1], "RIGHT", 1, 0)
	end
end


----Rogue
if C.classbar.comboPoints ~= true then return end




TukuiCombo:Kill()

-- Taken from Smelly_Combo :P
local colors = { 
	{.69, .31, .31, 1},
	{.65, .42, .31, 1},
	{.65, .63, .35, 1},
	{.46, .63, .35, 1},
	{.33, .63, .33, 1},
}

local cpoints = CreateFrame("Frame", "TukuiComboPoints", UIParent)
cpoints:Width(TukuiPlayer:GetWidth())
cpoints:Height(3)
cpoints:Point("BOTTOMLEFT", TukuiPlayer, "TOPLEFT", 0, 6)

cpoints:SetFrameLevel(10)

local points = {}

for i=1,MAX_COMBO_POINTS do
	points[i] = CreateFrame("Frame", "TukuiComboPoints_Point"..i, cpoints)
	points[i]:SetWidth((TukuiPlayer:GetWidth()-(MAX_COMBO_POINTS) + 1) / MAX_COMBO_POINTS)
	points[i]:SetHeight(3)
	points[i].tex = points[i]:CreateTexture(nil, "OVERLAY")
	points[i].tex:SetTexture(C.media.normTex)
	points[i].tex:SetVertexColor(unpack(colors[i]))
	points[i].tex:AllPoints(points[i])
	points[i].BG = points[i]:CreateTexture(nil, 'BORDER')
	points[i].BG:SetAllPoints()
	points[i]:SetBorder(false, true)
	points[i].BG:SetTexture(.1, .1, .1)
	if i==1 then
		points[i]:SetPoint("LEFT", cpoints, "LEFT", 0, 0)
	else
		points[i]:SetPoint("LEFT", points[i-1], "RIGHT", 1, 0)
	end
end

local function UpdatePoints()
	local numPoints = GetComboPoints("player", "target")
	if numPoints <= 0 then
		cpoints:Hide()
	else
		cpoints:Show()
		for i = 1, 5 do
			if (i <= numPoints) then
				points[i].tex:Show()
			else
				points[i].tex:Hide()
			end
		end
	end
end


cpoints:RegisterEvent("UNIT_COMBO_POINTS")
cpoints:RegisterEvent("PLAYER_TARGET_CHANGED")
cpoints:RegisterEvent("PLAYER_ENTERING_WORLD")
cpoints:SetScript("OnEvent", UpdatePoints)



if P.myclass ~= "PALADIN" or C.unitframes.classbar ~= true then return end

local self = _G["TukuiPlayer"]

self.HolyPower:ClearAllPoints()
self.HolyPower:SetPoint("BOTTOMLEFT", self, "TOPLEFT", 0, 6)
self.HolyPower:Size(self:GetWidth(), 3)


if P.level ~= MAX_PLAYER_LEVEL then
	for i = 1, 3 do
		self.HolyPower[i]:SetStatusBarColor(228/255, 225/255, 16/255)
		if(i == 3) then
			self.HolyPower[i]:Size((self:GetWidth() / 5) - 2, 6)
		else
			self.HolyPower[i]:Size((self:GetWidth() / 5), 3)
		end

		if(i == 1) then
			self.HolyPower[i]:SetPoint("LEFT", self.HolyPower, "LEFT", 0, 0)
		else
			self.HolyPower[i]:Point("LEFT", self.HolyPower[i - 1], "RIGHT", 1, 0)
		end
	end
else
	for i = 1, 5 do
		self.HolyPower[i]:SetStatusBarColor(228/255, 225/255, 16/255)
		if(i == 5) then
			self.HolyPower[i]:Size((self:GetWidth() / 5) - 2, 6)
		else
			self.HolyPower[i]:Size((self:GetWidth() / 5), 3)
		end

		if(i == 1) then
			self.HolyPower[i]:SetPoint("LEFT", self.HolyPower, "LEFT", 0, 0)
		else
			self.HolyPower[i]:Point("LEFT", self.HolyPower[i - 1], "RIGHT", 1, 0)
		end
	end
end

