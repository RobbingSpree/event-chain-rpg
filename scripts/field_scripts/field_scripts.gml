function s_field(type, level) constructor {
	name = get_name(type);
	locations = [];
	locations[0] = new place(p.shop,level);
	locations[1] = new place(p.wander,level);
}

function place(type, level) constructor {
	if type == p.shop 
		label = "Olde Shoppe";
	if type == p.wander
		label = "Gossip";

}

enum p{
	shop,
	wander
}

function cell_open() {
	//check diagonal movement
	var dx = px + x_dir;
	var dy = py + y_dir;
	if dy <= 0 || dy > m_height
		y_dir = 0;
	if dx <= 0  || dx > m_wid
		x_dir = 0;
	var c = get_cell(dx,dy,map);
	if c== "B" || c=="H" {
		//check sliding movement
		var yc = get_cell(px,dy,map)
		if yc != "B" && yc != "H"
			x_dir = 0;
		var xc = get_cell(dx,py,map)
		if xc != "B" && xc != "H"
			y_dir = 0;
		if y_dir == 0 && x_dir == 0
			return false;
	} else 
		return true;
}

function char_to_index(char) {
	switch char {
		case "M": return mountain_spr; break; 
		case "B": return mountain_spr; break;
		case "F": return tree_spr; break; 
		case "H": return wall_spr; break;
		case "_": return empty_spr; break; 
		default: return empty_spr; break;
	}
	
}

function get_cell(xx,yy,m) {
	var mp = m[yy];
	return string_char_at(mp,xx);
}

function load_map(map,location){
	var m = [];
	m[0]	= "BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB";
	m[1]	= "B________________________________________________________B";
	m[2]	= "B________________________________________________________B";
	m[3]	= "B________________________________________________________B";
	m[4]	= "B________________________________________________________B";
	m[5]	= "B________FFFF____________________________________________B";
	m[6]	= "B_______FFFFFF___________________________________________B";
	m[7]	= "B________FFFF______________________1111__________________B";
	m[8]	= "B_______FFF________________________1111__________________B";
	m[9]	= "B_________FFFF_____________________1111__________________B";
	m[10]	= "B__________FFFF____________________1111__________________B";
	m[11]	= "B__________FFFFFF________________________________________B";
	m[12]	= "B________FFFF____________________________________________B";
	m[13]	= "B________________________________________________________B";
	m[14]	= "B________________________________________________________B";
	m[15]	= "B________________________________________________________B";
	m[16]	= "B____________________________HHHH_HHHH___________________B";
	m[17]	= "B____________________________H___2___H___________________B";
	m[18]	= "B____________________________H_______H___________________B";
	m[19]	= "B____________________________H_______H___________________B";
	m[20]	= "B____________________________H_______H___________________B";
	m[21]	= "B____________________________H_______H___________________B";
	m[22]	= "B____________________________HHHHHHHHH___________________B";
	m[23]	= "B________________________________________________________B";
	m[24]	= "B________________________________________________________B";
	m[25]	= "B________________________________________________________B";
	m[26]	= "B________________________________________________________B";
	m[27]	= "B________________________________________________________B";
	m[28]	= "B________________________________________________________B";
	m[29]	= "B________________________________________________________B";
	m[30]	= "B________________________________________________________B";
	m[31]	= "B______33________________________________________________B";
	m[32]	= "B______33________________________________________________B";
	m[33]	= "B________________________________________________________B";
	m[34]	= "B________________________________________________________B";
	m[35]	= "B________________________________________________________B";
	m[36]	= "B________________________________________________________B";
	m[37]	= "B________________________________________________________B";
	m[38]	= "B________________________________________________________B";
	m[39]	= "B________________________________________________________B";
	m[40]	= "B________________________________________________________B";
	m[41]	= "B________________________________________________________B";
	m[42]	= "B________________________________________________________B";
	m[43]	= "B________________________________________________________B";
	m[44]	= "B________________________________________________________B";
	m[45]	= "BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB";
	m[46]	= "";
	m_height = 46;
	m_wid = 57;
	
	return m;
}

function get_name(type) {
	if type == f.town {
		return "Test Town";
	}
	if type == f.forest {
		return "Whispy Woods";
	}
	if type == f.lake {
		return "Damp Lake";
	}
}