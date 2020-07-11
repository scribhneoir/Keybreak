draw_sprite(spr_healthbar_head, 0, GUI_x, GUI_y)

for (i = 0; i < Properties.KEYS_REMAINING; i++)
{
	draw_sprite(spr_healthbar_slice, 0, GUI_x + 31 + (8 * i), GUI_y + 10)
	draw_sprite(spr_key, 0, GUI_x + 31 +(8 * i), GUI_y + 10)
}