var list_size = ds_list_size(Properties.KEY_DEATH_ORDER)
for (i = 0; i < list_size; i++)
{
	var curr = ds_list_find_value(Properties.KEY_DEATH_ORDER, i)
	
	if (i == list_size - 1)
		curr.x = Properties.GUI_x
	else
		curr.x += 40
}