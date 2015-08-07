LanguageSelectState = Core.class( StateBase )

function LanguageSelectState:init( options )
	StateBase:init( options )
	self:Setup( options )
end

-- Setup / Teardown --
function LanguageSelectState:Setup( options )
	StateBase:SetBackground( { id = "background", 		path = "Content/Graphics/UI/generalbg.png",  pos_x = 0, pos_y = 0 } )
	StateBase:AddButton( { 
		button = { id = "btn_language_en", 	path = "Content/Graphics/UI/widebtnbg.png",  	pos_x = 15, pos_y = 25  },
		label 	= { id = "btn_language_en", 	path = "Content/Fonts/PressStart2P.ttf",   			pos_x = 25, pos_y = 25+35, color = 0xFFFFFF, size = 16, text = "I know English" }
		} )
		
	StateBase:AddButton( { 
		button = { id = "btn_language_eo", 	path = "Content/Graphics/UI/widebtnbg.png",  	pos_x = 15, pos_y = 100  },
		label 	= { id = "btn_language_eo", 	path = "Content/Fonts/PressStart2P.ttf",   			pos_x = 25, pos_y = 100+35, color = 0xFFFFFF, size = 16, text = "Mi konas Esperanton" }
		} )
		
	StateBase:AddButton( { 
		button = { id = "btn_language_io", 	path = "Content/Graphics/UI/widebtnbg.png",  	pos_x = 15, pos_y = 175  },
		label 	= { id = "btn_language_io", 	path = "Content/Fonts/PressStart2P.ttf",   			pos_x = 25, pos_y = 175+35, color = 0xFFFFFF, size = 16, text = "Me konas Ido" }
		} )
		
	StateBase:AddButton( { 
		button = { id = "btn_language_es", 	path = "Content/Graphics/UI/widebtnbg.png",  	pos_x = 15, pos_y = 250  },
		label 	= { id = "btn_language_es", 	path = "Content/Fonts/PressStart2P.ttf",   			pos_x = 25, pos_y = 250+35, color = 0xFFFFFF, size = 16, text = "Yo conozco español" }
		} )
		
	self:Draw()
end

function LanguageSelectState:Cleanup()
end

function LanguageSelectState:Draw()
	StateBase:Draw()
end

-- Cyclical --
function LanguageSelectState:Update()
end

-- Callbacks --
function LanguageSelectState:Handle_AndroidKey( event )
end

function LanguageSelectState:Handle_KeyDown( event )
end

function LanguageSelectState:Handle_MouseDown( event )
	clickedButton = StateBase:ClickedButtonName( event )
	if ( clickedButton == "btn_language_en" ) then 		GLOBAL_CONFIG.HELPER_LANGUAGE = "English"
	elseif ( clickedButton == "btn_language_eo" ) then 		GLOBAL_CONFIG.HELPER_LANGUAGE = "Esperanto"
	elseif ( clickedButton == "btn_language_io" ) then 			GLOBAL_CONFIG.HELPER_LANGUAGE = "Ido"
	elseif ( clickedButton == "btn_language_es" ) then 		GLOBAL_CONFIG.HELPER_LANGUAGE = "Spanish"
	end
	
	print( "Helper language: ", GLOBAL_CONFIG.HELPER_LANGUAGE )
end

function LanguageSelectState:Handle_EnterFrame( event )
end