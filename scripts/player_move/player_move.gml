input_get()

// Set movement speed
target_hspd = (RIGHT - LEFT) * spd

if (midair)
	hspd *= 1.2
/*	
if (midair)
	target_hspd = hspd * 0.75
else
	target_hspd = (RIGHT - LEFT) * spd
*/
// Dashing
if ((DASH_LEFT || DASH_RIGHT) && !midair)
	state = player_dash
	
// Jumping
if (!midair && JUMP)
	target_vspd = jump_height

// Decrease jump faster if not held
//if (!JUMP && !JUMP_HELD && (vspd < 0))
else if (!JUMP_HELD && (target_vspd < 0))
	target_vspd /= 2	// global.grav_strength = 0.8... should maybe use multiples??
	
// Attacking
// Won't become true if holding jump and moving in a direction - why???
if (ATTACK /*&& (target_vspd <= 0)*/)
	state = player_attack

/***** NEED TO BE ABSTRACTED
// Interact with door
if (place_meeting(x + sign(hspd), y, obj_door) && vspd == 0)
{
	var door = instance_nearest(x, y, obj_door)
	door.active = true
}

//Get punched by officer
if (place_meeting(x + sign(hspd), y, obj_officer) && obj_officer.state = officer_attack){
	state = player_damaged
	dir = obj_officer.dir
}
******/

#region Set Animation

if (!midair)
	switch(sign(target_hspd))
	{
		case 1: sprite_index = spr_player_walk_right; break;
		case -1: sprite_index = spr_player_walk_left; break;
		case 0: 
			sprite_index = spr_player_idle; 
			switch(dir)
			{
				case 1: image_index = 2; break;
				case -1: image_index = 1; break;
			} break;
	}
else
	switch(dir)
	{
		case 1: sprite_index = spr_player_jump_right; break;
		case -1: sprite_index = spr_player_jump_left; break;
	}
	
#endregion