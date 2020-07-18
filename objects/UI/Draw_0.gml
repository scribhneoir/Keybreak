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
with (obj_player)
{
	draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true)
	draw_text(250, 0, "state = " + script_get_name(state))
	draw_text(250, 20, "x=" + string(x) + "   y=" + string(y) + "   dir=" + string(dir))
	draw_text(250, 40, "target_hspd=" + string(target_hspd) + "   target_vspd=" + string(target_vspd))
	draw_text(250, 60, "midair=" + (midair ? "true" : "false"))
	draw_text(250, 80, "momentum=" + string(momentum))
	
	draw_text(500, 0, "JUMP=" + (JUMP ? "true" : "false") + "   JUMP_HELD=" + (JUMP_HELD ? "true" : "false"))
	draw_text(500, 20, "ATTACK=" + (ATTACK ? "true" : "false"))
	draw_text(500, 40, "DASH_RIGHT=" + (DASH_RIGHT ? "true" : "false") + "   DASH_LEFT=" + (DASH_LEFT ? "true" : "false") + "   alarm[1]=" + string(alarm_get(1)))
}