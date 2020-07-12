with (Properties)
{
	var removed_key = ds_list_find_value(KEY_DEATH_ORDER, 0)
	ds_list_delete(KEY_DEATH_ORDER, 0)
	ds_list_add(DEAD_CONTROLS, removed_key)
	KEYS_REMAINING--
	CONTROLS[removed_key.index] = vk_nokey
	removed_key.draw = false
}