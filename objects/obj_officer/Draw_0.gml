draw_self()
draw_set_color(c_black)
draw_text(x - 32, y - 80, "dir=" + string(dir))
draw_text(x - 32, y - 100, "target_hspd=" + string(target_hspd))
draw_text(x - 32, y - 120, "hp=" + string(hp))

draw_set_color(c_yellow)
with (instance_place(x + (sprite_width/2 * dir), y + 1, obj_solid))
	draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, 1)