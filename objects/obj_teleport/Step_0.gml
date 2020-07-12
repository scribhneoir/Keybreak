if (place_meeting(x - obj_player.face_dir, y, obj_player))
{
	room_goto(room_target)
	obj_player.x = x_target
	obj_player.y = y_target
}