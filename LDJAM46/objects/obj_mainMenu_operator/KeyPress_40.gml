/// @description increment selection

if !locked {
	// increment
	selection++
	
	// catch disabled save
	if selection = 1 {
		if !canLoad {
			selection++
		}
	}
	
	// catch overflow
	if selection > menuItemCount - 1 {
		selection = 0
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
