/// @description set up strings

// movement lock
locked = 0

// amount of menu items
menuItemCount = 4

// basic options
baseOptions[0] = "MUSIC " + string(round(global.vol_mus * 100)) + "%"
baseOptions[1] = "SFX " + string(round(global.vol_sfx * 100)) + "%"
baseOptions[2] = "NARRATION " + string(round(global.vol_nrt * 100)) + "%"
baseOptions[3] = "BACK TO MENU"

// disable loading if no save exists
col[0] = $FFFFFF
col[1] = $FFFFFF
col[2] = $FFFFFF
col[3] = $FFFFFF

// selectors to add to current selection
selectorLeft = ">"
selectorRight = "<"

// selected index
selection = 0

// initially select selected item
var i
for (i = 0; i < menuItemCount; i++) {
	if selection == i {
		options[i] = selectorLeft + " " + baseOptions[i] + " " + selectorRight
	} else {
		options[i] = baseOptions[i]
	}
}
