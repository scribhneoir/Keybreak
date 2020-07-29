input_get()

// Walking
target_hspd = (RIGHT - LEFT) * walk_spd	// Set target speed

if (abs(target_hspd) < abs(hspd))	// Set slowing down momentum
	momentum = stopping_momentum
else								// Set speeding up momentum
	momentum = starting_momentum	

#region State Changes

// Jumping
if (!midair && JUMP)
{
	hspd_before_jump = round(hspd)
	target_vspd = jump_height
	state = player_airborne
	//exit
}  
else if (midair)
{
	hspd_before_jump = round(hspd)
	state = player_airborne
}

// Attacking
if (ATTACK)
	state = player_attack

// Dashing
if ((DASH_LEFT || DASH_RIGHT) && !midair)
{
	state = player_dash
	alarm[0] = dash_length
	//exit
}
	
#endregion

// Interact with static
if (place_meeting(x + dir, y, Interactive_Parent))
{
	var temp = instance_place(x + dir, y, Interactive_Parent)
	temp.active = true
}

#region Set Animation

if (!midair)
	switch(sign(target_hspd))
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