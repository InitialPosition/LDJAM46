/// @description decrement selection

if !locked {
	// decrement selection
	selection--
	
	// catch disabled save
	if selection = 1 {
		if !canLoad {
			selection--
		}
	}
	
	// catch underflow
	if selection < 0 {
		selection = menuItemCount - 1
	}
	
	// update selection visuals
	var i
	for (i = 0; i < menuItemCount; i++) {
		if selection == i {
			options[i] = selectorLeft + " " + baseOptions[i] + " " + selectorRight
		} else {
			options[i] = baseOptions[i]
		}
	}
}
