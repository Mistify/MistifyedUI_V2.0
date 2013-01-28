local T, C, L, G = unpack( Tukui )


local font = C.media.pixelfont







-----Adding Outlines to Chat Fonts------
----------------------------------------
ChatFrame1:SetFont(C.media.pixelfont, 13)
ChatFrame1:SetShadowColor(0, 0, 0)
ChatFrame1:SetShadowOffset(1.25, -1.25)






-------Left Chat Area Setup-------
-----------------------------------------
TukuiInfoLeft:StripTextures()

TukuiChatBackgroundLeft:Height(145)

if TukuiTabsLeftBackground then TukuiTabsLeftBackground :Hide()end

TukuiInfoLeft:SetPoint("LEFT", UIParent, "BOTTOMLEFT", 50, 50)

if TukuiLineToABLeft then TukuiLineToABLeft :Hide()end
if TukuiLineToABLeftAlt then TukuiLineToABLeftAlt :Hide()end
if TukuiInfoLeftLineVertical then TukuiInfoLeftLineVertical:Hide()end

if TukuiCubeLeft then TukuiCubeLeft :Hide()end


T.SetDefaultChatPosition = function( frame )
	if( frame ) then
		local id = frame:GetID()
		local name = FCF_GetChatWindowInfo( id )
		local fontSize = select( 2, frame:GetFont() )

		if( fontSize < 12 ) then
			FCF_SetChatWindowFontSize( nil, frame, 12 )
		else
			FCF_SetChatWindowFontSize( nil, frame, fontSize )
		end

		if( id == 1 ) then
			frame:ClearAllPoints()
			frame:Point( "TOPLEFT", G.Panels.LeftChatTabsBackground, "BOTTOMLEFT", 0, -2 )
			frame:Point( "BOTTOMRIGHT", G.Panels.DataTextLeft, "TOPRIGHT", 0, 2 )
		elseif( id == 4 and name == LOOT ) then
			if( not frame.isDocked ) then
				frame:ClearAllPoints()
				FCF_SetLocked(ChatFrame4, 1)
				FCF_DockFrame(ChatFrame4)
			end
		end
		if( not frame.isLocked ) then
			FCF_SetLocked( frame, 1 )
		end
	end
end
hooksecurefunc( "FCF_RestorePositionAndDimensions", T.SetDefaultChatPosition )











-------Right Chat Area Setup-------
-----------------------------------------
if TukuiTabsRightBackground then TukuiTabsRightBackground :Hide()end

if TukuiChatBackgroundRight then TukuiChatBackgroundRight :Hide()end


if TukuiInfoRight then TukuiInfoRight:Hide()end




if TukuiLineToABRight then TukuiLineToABRight :Hide()end
if TukuiLineToABRightAlt then TukuiLineToABRightAlt :Hide()end
if TukuiInfoRightLineVertical then TukuiInfoRightLineVertical:Hide()end

if TukuiCubeRight then TukuiCubeRight :Hide()end



