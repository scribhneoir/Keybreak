if(!pause){
	sprite_index = spr_officer_idle
	if(sign(old_hspeed) == -1)
		image_index = 1;
	else
		image_index = 2;
	alarm[0] = 20
	pause = true
}
	