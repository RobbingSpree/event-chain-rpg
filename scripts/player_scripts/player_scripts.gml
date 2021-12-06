// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playable() constructor{
	hp = 20;
	max_hp = 20;
	str = 5;
	spd = 5;
	def = 5;
	level = 1;
	xp = 0;
	namewa = "Beneven" +string(irandom(9));
	job_e = []; //the list of equipped jobs
	job_e[0] = j.onion;
	job_e[1] = j.none;
	job_e[2] = j.none;
	job_e[3] = j.none;
	jobs = []; //hold level and xp for all unlocked jobs
}

enum j { //the list of jobs
	none,
	onion
}

function job_enum_to_name(index){
	switch index {
		case j.none: return "No Job"; break;
		case j.onion: return "Onion"; break;
		default: return "Not a Job";
	}
}