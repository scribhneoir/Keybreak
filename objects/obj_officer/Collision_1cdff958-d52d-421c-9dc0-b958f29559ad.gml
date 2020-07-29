/// @description Take Damage
if (id != other.creator && damage_applied = false && state != officer_KO)
{
	hp -= other.dmg
	
	if (hp <= 0)
		state = officer_KO
	else
	{
		kback *= sign(x - other.creator.x)
		state = officer_damaged
		damage_applied = true
		alarm[0] = i_frames
	}
}