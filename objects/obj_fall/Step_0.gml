if (place_meeting(x, y - obj_player.vspd, obj_player))
{
	obj_player.x = x_target
	obj_player.y = y_target
	obj_player.state = player_damaged
}