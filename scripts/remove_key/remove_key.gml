//with (Global_Data)
//{
	var removed_key = ds_list_find_value(global.KEY_DEATH_ORDER, 0)
	ds_list_delete(global.KEY_DEATH_ORDER, 0)
	ds_list_add(global.DEAD_CONTROLS, removed_key)
	global.KEYS_REMAINING--
	global.CONTROLS[removed_key.index] = vk_nokey
	removed_key.draw = false
//}