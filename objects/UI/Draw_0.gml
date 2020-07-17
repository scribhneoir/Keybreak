// Healthbar head & key count
draw_set_colour(col)
draw_sprite(spr_healthbar_head, 0, HB_head_x, HB_head_y)
draw_text_transformed(HB_head_x - 13, HB_head_y - 14, global.KEYS_REMAINING, 1.75, 1.75, 0)

if (paused)
{
	draw_set_alpha(0.6)
	draw_set_color(c_black)
	draw_rectangle(0, 0, window_get_width(), window_get_height(), 0)
	
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_text(room_width/2 - 20, room_height/2, "PAUSED")
}

// Player Stats for debugging
draw_text(250, 0, "state = " + script_get_name(obj_player.state))
draw_text(250, 20, "x=" + string(obj_player.x) + "   y=" + string(obj_player.y) + "   dir=" + string(obj_player.dir))
draw_text(250, 40, "hspd=" + string(obj_player.hspd) + "   vspd=" + string(obj_player.vspd))