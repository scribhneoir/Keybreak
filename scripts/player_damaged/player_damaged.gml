if (damage_applied == false)
{
	// Set sprite
	sprite_index = spr_player_damaged

	// Get current key and reduce health
	var curr_key = ds_list_find_value(Properties.KEY_DEATH_ORDER, 0)

	// Reduce key health
	curr_key.hp--

	// If health has run out, remove it from KEY_DEATH_ORDER
	// Set proper index of CONTROLS to vk_nokey
	if (curr_key.hp <= 0)
	{
		curr_key = ds_list_find_value(Properties.KEY_DEATH_ORDER, 0)
		ds_list_delete(Properties.KEY_DEATH_ORDER, 0)
		ds_list_add(Properties.DEAD_CONTROLS, curr_key)
		Properties.KEYS_REMAINING--
		Properties.CONTROLS[curr_key.index] = vk_nokey
		curr_key.draw = false
		//obj_remapping.KEY_FLAGS[ord(curr_key.key) - 65].state++
	}

	// Set alarm to revert player state
	alarm[0] = 30
	damage_applied = true
}