if animate = true {		

	
	if image_xscale<max_width
		image_xscale += spd;
	if image_yscale<max_height
		image_yscale += spd;
	
	if image_xscale>=max_width && image_yscale>=max_height 
		animate = false;
}