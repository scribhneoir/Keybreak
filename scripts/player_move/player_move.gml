input_get()

// Set target speed
target_hspd = (RIGHT - LEFT) * walk_spd

// Configure acceleration
if (abs(target_hspd) < abs(hspd))
	momentum = 0.27	// Higher values means faster stops
else
	momentum = 0.22	// Higher values means faster starts
	
// Interact with static
if (place_meeting(x + dir, y, Interactive_Parent))
{
	var temp = instance_place(x + dir, y, Interactive_Parent)
	temp.active = true
}

#region State Changes

// Dashing
if ((DASH_LEFT || DASH_RIGHT) && !midair)
{
	state = player_dash
	alarm[0] = dash_length
	exit
}

// Jumping
if (!midair && JUMP)
{
	hspd_before_jump = round(hspd)
	target_vspd = jump_height
	state = player_airborne
	exit
} 
else if (midair)
	state = player_airborne

/***** NEEDS TO BE ABSTRACTED
//Get punched by officer
if (place_meeting(x + sign(hspd), y, obj_officer) && obj_officer.state = officer_attack){
	dir = obj_officer.dir
	state = player_damaged
}
******/

// Attacking
if (ATTACK)
	state = player_attack
	
#endregion

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