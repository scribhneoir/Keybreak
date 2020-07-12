if(!pause){
	sprite_index = spr_officer_idle
	if(sign(old_hspeed) == -1)
		image_index = 1;
	else
		image_index = 2;
	alarm[0] = 20
	pause = true
}

if (place_meeting(x + sign(hspd), y, obj_player) && obj_player.state = player_attack){
	state = officer_damaged
	attack_dir = obj_player.face_dir
}	