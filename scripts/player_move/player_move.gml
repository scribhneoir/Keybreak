input_get()

// Set movement speed
if (vspd <= 0)
	hspd = (RIGHT - LEFT) * spd

// Dashing
if ((DASH_LEFT || DASH_RIGHT) && !midair)
	state = player_dash
	
// Jumping
if (!midair && JUMP)
	vspd = jump_height

// Decrease jump faster if not held
//if (!JUMP && !JUMP_HELD && (vspd < 0))
else if (!JUMP_HELD && (vspd < 0))
	vspd /= 2
	
// Attacking
// Won't become true if holding jump and moving in a direction - why???
if (ATTACK && (vspd <= 0))
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

#region Set Animation

if (!midair)
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