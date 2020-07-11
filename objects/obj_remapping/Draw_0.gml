if (obj_player.remap_open)
{
	for (i = 0; i < 26; i++)
	{
		var curr_y = y
		if (i <= 9)
			curr_y += y1
		else if (i <= 18)
			curr_y += y2
		else if (i <= 25)
			curr_y += y3
		
		
		if (Properties.AVAILABLE_KEYS[KEYS[i, 1]])
			draw_set_color(c_blue)
		else
			draw_set_color(c_maroon)
		
		draw_rectangle(KEYS[i, 0], curr_y, KEYS[i, 0] + key_size, curr_y + key_size, 0)
	}
	
	draw_self()
}