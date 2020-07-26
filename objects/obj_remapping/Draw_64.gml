if (instance_exists(obj_player) && obj_player.remap_open)
{
	#region Transparant background
	
	draw_set_alpha(0.5)
	draw_set_color(c_white)
	draw_rectangle(bbox_left - 50, bbox_top - 50, bbox_right + 50, bbox_bottom + 50, 0)
	draw_set_alpha(1)
	
	#endregion
		
	draw_self()
}