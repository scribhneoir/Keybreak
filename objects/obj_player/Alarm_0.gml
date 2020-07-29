/// @description Revert to player_move state
if (damage_applied == true)
	damage_applied = false

if (attacked == true) 
	attacked = false

if (state == player_dash)
{
	target_hspd = 0	
	if (place_meeting(x, y - 25, obj_solid) || place_meeting(x, y - 50, obj_solid))
	{
		state = player_crouch
		exit
	}
}
	
// Set state back last so nothing gets confused
state = player_move