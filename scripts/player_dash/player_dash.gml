// Set sprites
switch(dir)
{
	case 1: sprite_index = spr_player_dash_right; break;
	case -1: sprite_index = spr_player_dash_left; break;
}

// Set movement conditions
target_hspd = dir * walk_spd * 2.5
momentum = 1

// Set timer for ending the dash
if (!dashed)
{
	dashed = true
	alarm[0] = 12
}