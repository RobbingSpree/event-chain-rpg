party = [];

for (var i=0; i<4; i++) {
	party[i] = new playable();
}

//overwrite stats with load values if loading from a save file
var u =190;
var r = 260;
var xx = 980;
var yy = 40;
p1 = instance_create_layer(xx,yy,"Instances",character_ui);
p1.index = 0;
p2 = instance_create_layer(xx+u,yy,"Instances",character_ui);
p2.index = 1;
p3 = instance_create_layer(xx,yy+r,"Instances",character_ui);
p3.index = 2;
p4 = instance_create_layer(xx+u,yy+r,"Instances",character_ui);
p4.index = 3;

