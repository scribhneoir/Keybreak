/// @description Pause
if (paused)
{
	obj_player.state = player_state
	instance_activate_object(obj_officer)
	paused = false
} else
{
	player_state = obj_player.state
	obj_player.state = state_paused
	if (instance_exists(obj_officer))
		instance_deactivate_object(obj_officer)
	paused = true
}