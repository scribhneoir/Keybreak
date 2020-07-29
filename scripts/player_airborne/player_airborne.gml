input_get()

// Set target speed: direction can be changed mid-jump
target_hspd = (RIGHT - LEFT) * jump_spd


// Set momentum
if (wall_jump)	// Push faster off walls
	momentum = 0.25
	
else if (hspd_before_jump == 0)	// Move slowly from a standing jump
	momentum = ((target_vspd <= 0) ? 0.08 : 0.05)	// Ascending momentum : Descending momentum
	
else if (sign(target_hspd) != sign(hspd_before_jump))	// Momentum to slow down jump if direction is no longer held
	momentum = 0.09
	
else	// Default midair momentum
	momentum = 0.07


// Pause at the peak of the jump
if ((target_vspd <= 0) && (target_vspd + global.grav_strength > 0) && !jump_float)
{
	jump_float = true
	alarm[3] = 4
}

// Limit jump height if jump button is not held -- This could feel better
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
	
#region Set Animation

switch(dir)
{
	case 1: sprite_index = spr_player_jump_right; break;
	case -1: sprite_index = spr_player_jump_left; break;
}

#endregion