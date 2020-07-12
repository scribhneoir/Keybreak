/// @description Pause

if (paused)
{
	obj_player.state = player_state
	paused = false
}
else
{
	player_state = obj_player.state
	obj_player.state = state_paused
	paused = true
}