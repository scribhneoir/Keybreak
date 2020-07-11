script_execute(state)

if (TOGGLE_REMAP)
	remap_open = !remap_open

if (remap_open)
{
	if (!ds_list_empty(Properties.DEAD_CONTROLS))
	{
		var to_be_remapped = ds_list_find_value(Properties.DEAD_CONTROLS, 0)
		var new_key = keyboard_lastkey
		
		if (ord(new_key) > ord("A") && ord(new_key) < ord("Z") && Properties.AVAILABLE_KEYS[ord(new_key) - 65])
			{
				Properties.CONTROLS[i] = new_key
				ds_list_add(Properties.KEY_DEATH_ORDER, to_be_remapped)
				ds_list_delete(Properties.DEAD_CONTROLS, 0)
				Properties.AVAILABLE_KEYS[ord(new_key) - 65] = false
			}
	}
}