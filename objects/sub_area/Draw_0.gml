
//draw self
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,1);

//draw field from db
var h = array_length(map);
for (var i = 0; i<h; i++) {
	var str = map[i];
	var l = string_length(str);
	for (var k=0; k<l; k++) {
		var c = string_char_at(str,k);
		c = char_to_index(c);
		draw_sprite(c,0,x+k*16,y+i*16);
	}
}

//draw player
draw_sprite(character_spr,0,(px*unit),(py*unit));

draw_text(10,10,"player x " + string(px));
draw_text(10,30,"player y "+ string(py));
draw_text(10,50,"animate flag " +string(animate));
draw_text(10,70,ani_step);