if(damage_applied){
	if(sprite_index != spr_officer_damage_left)
		sprite_index = spr_officer_damage_left;
	if(image_index == 6){
		damage_applied = false;
		room_goto_next()
	}
	else
		x+=2
}