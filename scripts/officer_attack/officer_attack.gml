if(!attacked){
	if(sprite_index != spr_officer_punch_right && attack_dir == 1)
		sprite_index = spr_officer_punch_right;
	if(sprite_index != spr_officer_punch_left && attack_dir == -1)
	sprite_index = spr_officer_punch_left;
	if(image_index == 2){
		attacked = true;
		alarm[0] = 30;
	}
}
if(attacked){
	image_index = 2
}
if (place_meeting(x + sign(hspd), y, obj_player) && obj_player.state = player_attack){
	state = officer_damaged
	attack_dir = obj_player.face_dir
}