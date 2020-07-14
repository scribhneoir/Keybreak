if (draw)
{
	for(i = 0; i < hp; i++)
		draw_sprite(spr_healthbar_slice, 0, x + (16 * i), y+2)
	if(ds_list_find_value(global.KEY_DEATH_ORDER,0) == self)
		draw_sprite(spr_healthbar_end, 0, x + (16 * hp), y+2)
	draw_self()
	draw_set_color(c_black)
	draw_text(x + 15, y + 10, key_id)
	
	// Draw icon
	var icon = spr_jump_icon_gray
	switch(index)
	{
		case 1: icon = spr_attack_icon_gray; break;
		case 2: icon = spr_right_icon_gray; break;
		case 3: icon = spr_left_icon_gray; break;
	}
	draw_sprite(icon, 0, x + 10, y - 30)
}