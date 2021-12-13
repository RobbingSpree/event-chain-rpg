if hold {
	if new_event {
		
	}
} else {
	
}

if animate = true {		
	var spd = 4;
	var max_width = 17;
	var max_height = 5;
	
	if image_xscale<max_width
		image_xscale += spd;
	if image_yscale<max_height
		image_yscale += spd;
	
	if image_xscale>=max_width && image_yscale>=max_height 
		animate = false;
}