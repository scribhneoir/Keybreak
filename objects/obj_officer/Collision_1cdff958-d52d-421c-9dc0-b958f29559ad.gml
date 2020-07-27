/// @description Take Damage
if (id != other.creator && damage_applied = false)
{
	hp -= other.dmg
	kback *= sign(x - other.creator.x)
	state = officer_damaged
	damage_applied = true
	alarm[0] = i_frames
}