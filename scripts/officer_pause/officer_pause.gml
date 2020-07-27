// Animation
sprite_index = spr_officer_idle; 
switch(dir)
{
	case 1: image_index = 2; break;
	case -1: image_index = 1; break;
}

// Set timer to patrol in opposite direction
if(!pause_started)
{
	alarm[2] = pause_length
	pause_started = true
}

/*
if (place_meeting(x + sign(hspd), y, obj_player) && obj_player.state = player_attack){
	state = officer_damaged
	dir = obj_player.dir
}
*/