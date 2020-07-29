input_get()

// Set movement speed
target_hspd = (RIGHT - LEFT) * crouch_spd

if (!place_meeting(x, y - 25, obj_solid) && !place_meeting(x, y - 50, obj_solid))
	state = player_move

// Set sprites
switch(dir)
{
	case 1: sprite_index = spr_player_dash_right; break;
	case -1: sprite_index = spr_player_dash_left; break;
}
