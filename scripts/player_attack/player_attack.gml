if(!attacked){
	if(sprite_index != spr_player_punch_right && dir == 1)
		sprite_index = spr_player_punch_right;
	if(sprite_index != spr_player_punch_left && dir == -1)
		sprite_index = spr_player_punch_left;
	if(image_index == 2)
	{
		create_damage(x, y, 20)
		attacked = true;
		alarm[0] = 20;
	}
}
if(attacked){
	image_index = 2
}