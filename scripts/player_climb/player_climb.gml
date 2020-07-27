input_get()

if (dir == 1)
	target_vspd = (LEFT - RIGHT) * climb_spd
else
	target_vspd = (RIGHT - LEFT) * climb_spd
	
if (JUMP)
{
	target_vspd = jump_height
	target_hspd = dir * jump_spd * -1
	hspd_before_jump = round(target_hspd)
	wall_jump = true
	state = player_airborne
	exit
}

if (!place_meeting(x + dir, y, obj_climable_wall) || !midair)
	state = player_move