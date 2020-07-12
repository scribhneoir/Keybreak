// Healthbar head & key count
draw_set_colour(col)
draw_sprite(spr_healthbar_head, 0, GUI_x, GUI_y)
draw_text_transformed(GUI_x - 13, GUI_y - 14, Properties.KEYS_REMAINING, 1.75, 1.75, 0)

if (paused)
{
	draw_set_alpha(0.6)
	draw_set_color(c_black)
	draw_rectangle(0, 0, window_get_width(), window_get_height(), 0)
	
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_text(room_width/2 - 20, room_height/2, "PAUSED")
}