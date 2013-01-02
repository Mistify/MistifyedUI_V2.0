

local C = {}

TukuiEditedDefaultConfig = C



C.media = {
	datatextcolor2 = {0, .7, 1},
	pixelfont = [=[Interface\AddOns\MistifyedUI\media\fonts\pixelfont.ttf]=],
	ru_pixelfont = [[Interface\AddOns\MistifyedUI\media\fonts\pixel_font.ttf]],
	dmgfont = [=[Interface\AddOns\MistifyedUI\media\fonts\font.ttf]=],
	pfontsize = 14,
	ru_pfontsize = 14,
}


C.general = {
autoscale = true,
	uiscale = 0.71,
	overridelowtohigh = false,
	backdropcolor = {.05, .05, .05},
	bordercolor = {.15, .15, .15},
	blizzardreskin = true,
}

local class = RAID_CLASS_COLORS[select(2,UnitClass("player"))] -- Do not remove this line, it is what is required to add class color for the datatext.^

C["unitframes"] = {
	["enable"] = true,
	["healthBgColor"] = {.6, .6, .6, 1},
	["healthcolor"] = {.25, .1, .1},						-- Default is {.3, .3, .3, 1},	
	["classbar"] = true,
	["classicons"] = true,
	["charportrait"] = false,
	["unicolor"] = true,
	["cbicons"] = true,
	["unitcastbar"] = true,
	["classbar"] = true,
	["combatfeedback"] = false,
	["raidunitdebuffwatch"] = true,
	["auratimer"] = true,
	["totdebuffs"] = true,                        
	["raid"] = true,
	["showtotalhpmp"] = false,
	["gradienthealth"] = true,
	["gradient"] = {
		4.5, 0.1, 0.1,
		0.6, 0.3, 0.3,
		0.2, 0.2, 0.2,
	},
	["healcomm"] = false,
	["maxraidplayers"] = true,
	["showraidpets"] = false,
	["raidalphaoor"] = 0.4,
	["perconly"] = false,
	["iconspvp"] = true, 
}



C["nameplate"] = {
	["enable"] = true,                        	 -- enable nice skinned nameplates that fit into tukui
	["debuffs"] = false,
	["nishastyle"] = true,
	["height"] = 9,									-- Nameplate height
	["width"] = 130,								-- Nameplate width
	["combat"] = false,								-- Automatically show nameplate in combat
	["showhealth"] = true,							-- Numeral health value
	["showcastbarname"] = false,					-- Show castbar name
	["nameabbrev"] = false,							-- Display the abbreviated names
	["aurassize"] = 20,								-- Debuffs size
	["goodcolor"] = {75/255,  175/255, 76/255},	        -- good threat color (tank shows this with threat, everyone else without)
	["badcolor"] = {0.78, 0.25, 0.25},			        -- bad threat color (opposite of above)
	["transitioncolor"] = {218/255, 197/255, 92/255},	-- threat color when gaining threat
	["healericon"] = false,							-- Show icon above enemy healers nameplate in battlegrounds
	["showcastbarname"] = false,
	["enhancethreat"] = true,			                -- threat features based on if your a tank or not
	["adwidth"] = 3,
	["adheight"] = 3,
	["classicons"] = true,
}



C["classbar"] = {
	["monk"] = true,
	["druid"] = true,
	["shaman"] = true,
	["priest"] = true,
	["warlock"] = true,
	["deathknight"] = true,
	["paladin"] = true,
	["rogue"] = true,
	["mage"] = true,
}

C["font"] = {
	["font"] = true,
	["datatextfontsize"] = 12,
	["unitframefontsize"] = 12,
	["nameplatefontsize"] = 12,
	["skinfontsize"] = 12,
	["chattabfontsize"] = 12,
	["actionbuttonfontsize"] = 12,
}

C["raidframes"] = {
	-- raid layout
	raid = true,
	showrange = true,
	raidalphaoor = 0.3,
	showsymbols = true,
	aggro = true,
	raidunitdebuffwatch = true,
	gridhealthvertical = false,
	gridscale = 1,
	gridvertical = false,
	raidunitspercolumn = 5,
	showraidpets = false,
	maxraidplayers = false,
}


C["tooltip"] = {
	["enable"] = true,                                  -- true to enable this mod, false to disable
	["ilvl"] = false,
	["talent"] = false,
	["symbosis"] = false,
	["icon"] = false,
	["symbosis"] = false,
	["reforge"] = false,
}

C["auras"] = {
	["debuffsize"] = 25,
	["buffsize"] = 25,
	["player"] = true,                                  -- enable tukui buffs/debuffs
	["consolidate"] = false,                             -- enable downpdown menu with consolidate buff
	["flash"] = true,  	                                -- flash warning for buff with time < 30 sec
	["onlyselfbuffs"] = false,
	["onlyselfdebuffs"] = false,
}

C["classtimer"] = {
	["enable"] = false,											-- enable classtimer
	["targetdebuffs"] = false,									-- target debuffs above target (looks crappy imo)
	["playercolor"] = {.2, .2, .2, 1 },							-- playerbarcolor
	["targetbuffcolor"] = { 70/255, 150/255, 70/255, 1 },		-- targetbarcolor (buff)
	["targetdebuffcolor"] = { 150/255, 30/255, 30/255, 1 },		-- targetbarcolor (debuff)
	["trinketcolor"] = {75/255, 75/255, 75/255, 1 },			-- trinketbarcolor
	["spark"] = true,
	["barheight"] = 17,
} 




C["castbar"] = { 
	["classcolor"] = false,
	["castbarcolor"] = {.2, .2, .2,1}, -- color if classcolor = false
	["nointerruptcolor"] = {1,.2,.2,1}, -- color of casts which can't be interrupted
	["ticks"] = true,
	["playerheight"] = 20,
	["playerwidth"] = 374,
	["targetheight"] = 20,
	["targetwidth"] = 206,
}


C["datatext"] = {
	["bags"] = 0,
	["fps_ms"] = 6,
	["system"] = 5,
	["gold"] = 4,
	["wowtime"] = 8,
	["guild"] = 1,
	["dur"] = 3,
	["friends"] = 2,
	["power"] = 0,
	["haste"] = 0,
	["crit"] = 0,
	["hit"] = 0,
	["mastery"] = 0,
	["battleground"] = false,
	["time24"] = false,
	["localtime"] = true,
	["fontsize"] = 13,
	["exprepbars"] = true,								-- enable experience and reputation bar
	["expreptext"] = true,								-- enable text on experience and reputation bars
}

C["actionbar"] = {
	["enable"] = true,                                  -- enable tukui action bars
	["hotkey"] = false,                                  -- enable hotkey display because it was a lot requested
	["showgrid"] = true,                                -- show grid on empty button
	["buttonsize"] = 27,                                -- normal buttons size
	["petbuttonsize"] = 27,                             -- pet & stance buttons size
	["buttonspacing"] = 4,                              -- buttons spacing
	["vertical_rightbars"] = true,						-- vertical or horizontal right bars
	["ownshdbar"] = true,                              -- use a complete new stance bar for shadow dance (rogue only)
	["mainswap"] = false,
	["micromenumouseover"] = true,
	["micromenu"] = false,
	["vertical_shapeshift"] = false,	
}

C["chat"] = {
	["background"] = false,
	["width"] = 378,
	["height"] = 175,
	["justifyRight"] = false,
}

C.loot = {
	lootframe = false,
	rolllootframe = false,
}


