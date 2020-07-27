input_get()

// Animation
switch(dir)
{
	case 1: sprite_index = spr_player_jump_right; break;
	case -1: sprite_index = spr_player_jump_left; break;
}


if ((target_vspd <= 0) && (target_vspd + global.grav_strength > 0) && !jump_float)
{
	jump_float = true
	alarm[3] = 4
}




// Default momentum
target_hspd = (RIGHT - LEFT) * jump_spd
momentum = 0.01

if (wall_jump)
	momentum = 0.25

// If player does not have horizontal momentum in jump they can only gain it slowly
if (hspd_before_jump == 0)
{
	if (target_vspd <= 0)
		momentum = 0.08	// The player is ascending
	else	
		momentum = 0.05	// The player is descending
}

// Lose speed slowly if direction is no longer being held
else if (sign(target_hspd) != sign(hspd_before_jump))
	momentum = 0.07

// Limit jump if button is not held
if ((target_vspd <= 0) && !JUMP_HELD)
	target_vspd /= global.grav_strength * 2.5
	

#region State Changes

// Climbing
if (place_meeting(x + dir, y, obj_climable_wall))
	state = player_climb
	
// Can attack while midair
// Won't become true if holding jump and a direction - why???
if (ATTACK)
	state = player_attack

// Revert state
if (!midair)
	state = player_move

#endregion

if (state != player_airborne)
	wall_jump = false