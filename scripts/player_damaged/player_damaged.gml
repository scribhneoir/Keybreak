if (damage_applied == false)
{

	// Set sprite
	sprite_index = spr_player_damaged

	// Get current key and reduce health
	var curr_key = ds_list_find_value(Properties.ASSIGNED_KEYS, 0)

	// Reduce key health
	curr_key.hp--

	// If health has run out, remove it from ASSIGNED_KEYS
	if (curr_key.hp <= 0)
	{
		curr_key = ds_list_delete(Properties.ASSIGNED_KEYS, 0)
	}

	// Set alarm to revert player state
	alarm[0] = 30
	damage_applied = true
}