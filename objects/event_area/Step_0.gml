if animate = true {		
	var max_width = 50;
	var max_height = 40;
	
	if image_xscale<max_width
		image_xscale += spd;
	if image_yscale<max_height
		image_yscale += spd;
	
	if image_xscale>=max_width && image_yscale>=max_height 
		animate = false;
}

if animate == false && active == true {
	if keyboard_check_pressed(vk_escape) {
		instance_destroy(self);
	}
	
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
	
	//move through menu
	
}