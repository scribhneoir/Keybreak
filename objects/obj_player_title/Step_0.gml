if(attacked){
	if(sprite_index != spr_player_punch_right)
		sprite_index = spr_player_punch_right;
	if(image_index == 2){
		attacked = false;
		obj_officer_title.damage_applied = true
	}
}
if(obj_officer_title.damage_applied){
	image_index = 2
}