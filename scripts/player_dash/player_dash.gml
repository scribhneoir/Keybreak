// Set movement conditions
target_hspd = dir * dash_spd
momentum = dash_momentum

// Set sprites
switch(dir)
{
	case 1: sprite_index = spr_player_dash_right; break;
	case -1: sprite_index = spr_player_dash_left; break;
}