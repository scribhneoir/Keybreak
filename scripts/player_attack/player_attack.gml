if(!attacked){
	
	switch (face_dir)
	{
		case -1: sprite_index = spr_player_punch_left; break;
		case 1: sprite_index = spr_player_punch_right; break;
	}

	alarm[0] = 20
	attacked = true
}

if (place_meeting(x, y + vspd, obj_solid))
{
	while (!place_meeting(x, y + sign(vspd), obj_solid))
		y += sign(vspd);
	vspd = 0;
}
y += vspd;
