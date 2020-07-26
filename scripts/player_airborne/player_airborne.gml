input_get()

// Revert state
if (!midair)
{
	state = player_move
	exit
}

// Can attack while midair
// Won't become true if holding jump and a direction - why???
if (ATTACK)
{
	state = player_attack
	exit
}

// Animation
switch(dir)
{
	case 1: sprite_index = spr_player_jump_right; break;
	case -1: sprite_index = spr_player_jump_left; break;
}

// Default momentum
target_hspd = (RIGHT - LEFT) * spd * 1.1
momentum = 0.7

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