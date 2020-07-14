#region UI Variables

HB_head_x = 50	// Head of the heathbar coordinates
HB_head_y = 50
HB_key_x = 81	// First obj_assigned_key coordinates
HB_key_y = 60

#endregion

// ???
gpu_set_texfilter(false);
col = make_colour_rgb(23, 23, 23);
draw_set_colour(col)
draw_set_font(font_main)

// Currently functional pause
paused = false
remap_open = false