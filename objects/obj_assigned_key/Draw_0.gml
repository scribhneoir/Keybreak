if (draw)
{
	for(i = 0; i < hp; i++)
		draw_sprite(spr_healthbar_slice, 0, x + (8 * i), y+2)
	if(ds_list_find_value(Properties.KEY_DEATH_ORDER,0) == self)
		draw_sprite(spr_healthbar_end, 0, x + (8 * hp), y+2)
	draw_self()
	draw_text(x + 15, y + 10, key)
}