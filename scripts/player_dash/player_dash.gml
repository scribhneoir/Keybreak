/* Set sprites
switch(dir)
{
	case 1: sprite_index = spr_player_dash_right; break;
	case -1: sprite_index = spr_player_dash_left; break;
}*/

if (!dashed)
{
	hspd = dir * spd * 3
	dashed = true
	alarm[0] = 10
}