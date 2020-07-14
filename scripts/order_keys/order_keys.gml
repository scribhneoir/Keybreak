var list_size = ds_list_size(global.KEY_DEATH_ORDER)
for (i = 0; i < list_size; i++)
{
	var curr = ds_list_find_value(global.KEY_DEATH_ORDER, i)
	
	if (i == list_size - 1)
		curr.x = UI.HB_key_x
	else
		curr.x += 32 // 32 = global.key_hp * spr_healthbar_slice width
}