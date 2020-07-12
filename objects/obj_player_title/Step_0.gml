if(attacked){
	if(sprite_index != spr_player_punch_right)
		sprite_index = spr_player_punch_right;
	if(image_index == 2){
		attacked = false;
		sprite_index=spr_player_idle
		image_index = 1
		obj_officer_title.damage_applied = true
	}
}