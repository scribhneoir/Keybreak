input_get()

// Set movement speed
hspd = (RIGHT - LEFT) * spd;

// Attacking
if (ATTACK)
	state = player_attack

// Interact with door
if (place_meeting(x + sign(hspd), y, obj_door) && vspd == 0)
{
	var door = instance_nearest(x, y, obj_door)
	door.active = true
}
//Get punched by officer
if (place_meeting(x + sign(hspd), y, obj_officer) && obj_officer.state = officer_attack){
	state = player_damaged
	dir = obj_officer.dir
}

// Jumping
if (place_meeting(x, y + 1, obj_solid) && (JUMP))
	vspd = jump_height;

#region Set Animation

if (vspd == 0)
	switch(sign(hspd))
	{
		case 1: sprite_index = spr_player_walk_right; break;
		case -1: sprite_index = spr_player_walk_left; break;
		case 0: 
			sprite_index = spr_player_idle; 
			switch(dir)
			{
				case 1: image_index = 2; break;
				case -1: image_index = 1; break;
			} break;
	}
else
	switch(dir)
	{
		case 1: sprite_index = spr_player_jump_right; break;
		case -1: sprite_index = spr_player_jump_left; break;
	}
	
#endregion