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

function char_to_index(char) {
	switch char {
		case "M": return mountain_spr; break; 
		case "_": return empty_spr; break; 
		default: return empty_spr; break;
	}
	
}

function load_map(map,location){
	var m = [];
	m[0]	= "MMMMMMMMMMM";
	m[1]	= "M________ M";
	m[2]	= "M_________M";
	m[3]	= "M_________M";
	m[4]	= "M_________M";
	m[5]	= "M_________M";
	m[6]	= "M_________M";
	m[7]	= "M_________M";
	m[8]	= "M_________M";
	m[9]	= "M_________M";
	m[10]	= "MMMMMMMMMMM";
	
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