local P, C, L, G = unpack(Tukui)
if P.myclass ~= "WARLOCK" or C.unitframes.classbar ~= true then return end

self = _G["TukuiPlayer"]

self.WarlockSpecBars:ClearAllPoints()
self.WarlockSpecBars:SetPoint("BOTTOMLEFT", self, "TOPLEFT", 0, 1)
self.WarlockSpecBars:Size(self:GetWidth(), 3)


for i = 1, 4 do
	self.WarlockSpecBars[i]:Size((self:GetWidth() / 4), 3)

	if(i == 1) then
		self.WarlockSpecBars[i]:SetPoint("LEFT", self.WarlockSpecBars, "LEFT", 0, 0)
	else
		self.WarlockSpecBars[i]:Point("LEFT", self.WarlockSpecBars[i - 1], "RIGHT", 1, 0)
	end
end