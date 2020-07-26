if (instance_exists(obj_player))
{
	x = clamp(obj_player.x, view_width/2, room_width - view_width/2)
	y = clamp(obj_player.y, view_height/2, room_height - view_height/2)
}

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0)
camera_set_view_mat(cam, vm)