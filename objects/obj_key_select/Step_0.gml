if (obj_player.remap_open)
{	
	image_index = state
	if (!ds_list_empty(Properties.DEAD_CONTROLS))
	{
		if (keyboard_check(ord(key_id)) && state == 0)
		{
			state++
			var action = ds_list_find_value(Properties.DEAD_CONTROLS, 0)
			action.key = key_id
		
			// Add to the back of the health bar
			ds_list_add(Properties.KEY_DEATH_ORDER, action)
			action.draw = true
			action.hp = 5
			order_keys()
		
			// Remove from dead list
			ds_list_delete(Properties.DEAD_CONTROLS, 0)
			
			// Set key to recieve input
			Properties.CONTROLS[action.index] = key_id
		}
		else if (state == 1 && (key_id == ds_list_find_value(Properties.DEAD_CONTROLS, 0).key))
			state++
	}
}