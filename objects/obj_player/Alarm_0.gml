/// @description Revert to player_move state
if (damage_applied == true)
	damage_applied = false

if (attacked == true) 
	attacked = false

if (dashed == true)
{
	dashed = false
	target_hspd = 0
	
	if (place_meeting(x, y - 25, obj_solid) || place_meeting(x, y - 50, obj_solid))
	{
		state = player_crouch
		exit
	}
}
	
// Set state back last so nothing gets confused
state = player_move





/* collision event with obj_damage
/// @description Take damage
if (id != other.creator)
{
	
	
	// Set state and alarm for invincibilty frames
	state = player_damaged
	alarm[0] = i_frames
}*/