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

function load_map(map,location){
	
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