type = f.town;

enum f{
	town,
	forest,
	lake
}

level = 1; //what ammenaties are avaliable
field_object = new s_field(type, level); //struct with details of field

switch type {
	case f.town: image_index = wall_spr;
	case f.forest: image_index = tree_spr;
	case f.lake: image_index = water_spr;
}

