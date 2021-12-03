if active {
	//input
	#region input
	var left =	keyboard_check(vk_left);
	var right = keyboard_check(vk_right);
	var up =	keyboard_check(vk_up);
	var down =	keyboard_check(vk_down);
	var menu_toggle = keyboard_check_pressed(vk_enter);
	var accept = keyboard_check_pressed(ord("Z"));
	var reject = keyboard_check_pressed(ord("X"));
	#endregion
	
	#region movement
	if x mod unit == 0 and y mod unit == 0 {
		moving = false;
	}
	if moving == false {
		x_dir = right - left;
		y_dir = down - up;	
		
		if x_dir !=0 or y_dir != 0
			moving = true;
		floor_check = true;	
		
	}

	if moving == true {
		x+= spd*x_dir;
		y+= spd*y_dir;
		if position_meeting(x,y,field) {
			floor_check = false;
		}
	}
	#endregion
}

