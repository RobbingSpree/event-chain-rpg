animate = true;
ani_step = 0; 

parent_layer = noone;
//location = -1;
#macro unit 16

px = 4;
py = 4;
spd = 4;
x_dir = 0;
y_dir = 0;
current_layer = 0;
active = true;
m_height = 0;
m_wid = 0;

map = [];

map = load_map(location);

current_cell = "";