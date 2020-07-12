if(!attacked){
	if(sprite_index != spr_officer_punch_right && attack_dir == 1)
		sprite_index = spr_officer_punch_right;
	if(sprite_index != spr_officer_punch_left && attack_dir == -1)
	sprite_index = spr_officer_punch_left;
	if(image_index == 2){
		attacked = true;
		alarm[0] = 10;
	}
}
if(attacked){
	image_index = 2
}