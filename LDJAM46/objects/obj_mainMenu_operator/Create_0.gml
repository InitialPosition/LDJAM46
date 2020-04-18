/// @description set up strings

// movement lock
locked = 0

// amount of menu items
menuItemCount = 4

// basic options
baseOptions[0] = "NEW GAME"
baseOptions[1] = "LOAD GAME"
baseOptions[2] = "OPTIONS"
baseOptions[3] = "EXIT"

// disable loading if no save exists
col[0] = $FFFFFF
col[1] = $FFFFFF
col[2] = $FFFFFF
col[3] = $FFFFFF

canLoad = scr_hasSave()
if !canLoad {
	col[1] = $666666
}

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
