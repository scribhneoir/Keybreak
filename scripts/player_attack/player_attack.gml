if(!attacked){
	if(sprite_index != spr_player_punch_right && dir == 1)
		sprite_index = spr_player_punch_right;
	if(sprite_index != spr_player_punch_left && dir == -1)
	sprite_index = spr_player_punch_left;
	if(image_index == 2){
		attacked = true;
		alarm[0] = 20;
	}
}
if(attacked){
	image_index = 2
}

if (place_meeting(x, y + vspd, obj_solid))
{
	while (!place_meeting(x, y + sign(vspd), obj_solid))
		y += sign(vspd);
	vspd = 0;
}
y += vspd;
