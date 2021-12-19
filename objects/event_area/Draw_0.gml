
//draw self
draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,1);

//draw event at front of queue


//draw player
draw_sprite(character_spr,0,(px*unit),(py*unit));

draw_text(10,10,"player x " + string(px));
draw_text(10,30,"player y "+ string(py));
draw_text(10,50,"animate flag " +string(animate));
draw_text(10,70,ani_step);