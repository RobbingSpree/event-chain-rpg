//draw self
draw_self();

if animate == false {
	//draw character values
	var nl = 20;
	draw_text(x+10,y+nl,"Name: "+string(stats.party[index].namewa));
	draw_text(x+10,y+nl*2,"HP: "+string(stats.party[index].hp)+"/"+string(stats.party[index].max_hp));
	draw_text(x+10,y+nl*3,"Level: "+string(stats.party[index].level));
	//draw current jobs
	draw_set_halign(fa_center);
	draw_text(x+unit*max_width/2+nl,y+unit*max_height/2,job_enum_to_name(stats.party[index].job_e[0]));
	draw_set_halign(fa_right);
	draw_text(x+unit*max_width/2,y+unit*max_height/4*3-nl,job_enum_to_name(stats.party[index].job_e[1]));
	draw_set_halign(fa_left);
	draw_text(x+unit*max_width/6*5,y+unit*max_height/4*3,job_enum_to_name(stats.party[index].job_e[2]));
	draw_set_halign(fa_center);
	draw_text(x+unit*max_width/2+nl,y+(unit*max_height)-nl,job_enum_to_name(stats.party[index].job_e[3]));

	draw_set_halign(fa_left);
	
	draw_sprite(char_job_ui_arrow_spr,0,x+unit*max_width/2+nl,y+unit*max_height/4*3);
}