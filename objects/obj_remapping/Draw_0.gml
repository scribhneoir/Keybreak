if (instance_exists(obj_player) && obj_player.remap_open)
{
	#region Transparant background
	
	draw_set_alpha(0.5)
	draw_set_color(c_black)
	draw_rectangle(0, 0, room_width, room_height, 0)
	
	draw_set_alpha(0.5)
	draw_set_color(c_white)
	draw_rectangle(bbox_left - 100, bbox_top - 100, bbox_right + 100, bbox_bottom + 100, 0)
	
	draw_set_alpha(1)
	
	#endregion
		
	draw_self()
}