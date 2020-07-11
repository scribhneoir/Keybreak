if (draw)
{
	for(i = 0; i < hp; i++)
		draw_sprite(spr_healthbar_slice, 0, x + (8 * i), y)
	draw_self()
	draw_text(x + 10, y + 10, key)
}