if (instance_exists(obj_player) && obj_player.remap_open)
{	
	image_index = state
	if (!ds_list_empty(global.DEAD_CONTROLS))
	{
		if (keyboard_check(ord(key_id)) && state == 0)
		{
			state++
			var new_key = ds_list_find_value(global.DEAD_CONTROLS, 0)
			new_key.key_id = key_id
		
			// Add to the back of the health bar
			ds_list_add(global.KEY_DEATH_ORDER, new_key)
			new_key.draw = true
			new_key.hp = global.key_hp
			order_keys()
		
			// Remove from dead list
			ds_list_delete(global.DEAD_CONTROLS, 0)
			
			// Set key to recieve input
			global.CONTROLS[new_key.index] = key_id
		}
		else if (state == 1 && (key_id == ds_list_find_value(global.DEAD_CONTROLS, 0).key_id))
			state++
	}
}