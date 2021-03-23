local activate_key_reg = 'savegame.mod.activate_key'

function draw()
	UiTranslate(UiCenter(), 250)
	UiAlign("center middle")

	--Title
	UiFont("bold.ttf", 48)
	UiText("Tool menu")

	--Keyboard instructions
	UiFont("regular.ttf", 26)
	UiTranslate(0, 70)
	UiPush()
		UiText("Keyboard Layout")
		UiTranslate(0, 20)
		UiFont("regular.ttf", 20)
		UiText("Defines which key is used to make the menu appearing.")
		UiTranslate(0, 20)
		UiText("QWERTY will set the key to 'q'. AZERTY will set the key to 'a'.")
	UiPop()

    --Buttons
	UiTranslate(0, 80)
	UiFont("regular.ttf", 26)
	UiButtonImageBox("ui/common/box-outline-6.png", 6, 6)
	UiPush()
		UiTranslate(-110, 0)
		if GetString(activate_key_reg) == "q" then
			UiPush()
				UiColor(0.5, 1, 0.5, 0.2)
				UiImageBox("ui/common/box-solid-6.png", 200, 40, 6, 6)
			UiPop()
		end
		if UiTextButton("QWERTY Keyboard", 200, 40) then
			SetString(activate_key_reg, "q")
		end
		UiTranslate(220, 0)
		if GetString("savegame.mod.menu_key") == "a" then
			UiPush()
				UiColor(0.5, 1, 0.5, 0.2)
				UiImageBox("ui/common/box-solid-6.png", 200, 40, 6, 6)
			UiPop()
		end
		if UiTextButton("AZERTY Keyboard", 200, 40) then
			SetString(activate_key_reg, "a")
		end
	UiPop()
	
	UiTranslate(0, 100)
	if UiTextButton("Close", 200, 40) then
		Menu()
	end
end