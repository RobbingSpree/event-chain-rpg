
enum loc {
	debug_room,
	random_forest,
	random_lake,
	ow_NW,
	ow_N,
	ow_NE,
	castle_town,
	damp_cave
}

enum loc_type {
	field,
	lake,
	town,
	random_dung,
	person
}

function load_location_details(index) {
	switch index {
		case loc.debug_room: display_name = "Debug Room"; return_to = loc.debug_room; field_or = loc_type.field; map = load_map(index); break;
	}
}