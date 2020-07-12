/// @description Pause

if (paused)
{
	obj_player.state = player_state
	//if (instance_e(obj_officer))
	//{
		instance_activate_object(obj_officer)
	//}
		
	paused = false
}
else
{
	player_state = obj_player.state
	obj_player.state = state_paused
	
	if (instance_exists(obj_officer))
		//for (i = 0; i < obj_officer.instance_count; i++)
		{
			instance_deactivate_object(obj_officer)
			//officer_state[i] = obj_officer.state
			//obj_officer.state = state_paused
		}
	
	paused = true
}