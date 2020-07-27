
target_hspd = dir * spd

// Pause & turn around at a wall or ledge
if (place_meeting(x + target_hspd, y, obj_solid) || !place_meeting(x + (sprite_width/2 * dir), y + 1, obj_solid))
{
	target_hspd = 0
	dir *= -1
	state = officer_pause
}

/*** Damage collision
if (place_meeting(x + sign(hspd), y, obj_player) && obj_player.state = player_attack){
	state = officer_damaged
	dir = obj_player.dir
}
*/

/*
//attack if in range
if(obj_player.state != player_damaged && obj_player.x > x - 60 && obj_player.x < x && sign(hspd) == -1 && obj_player.y > y - 30 &&obj_player.y < y + 30){
	dir = -1
	state = officer_attack
}
if(obj_player.state != player_damaged && obj_player.x < x + 60 && obj_player.x > x && sign(hspd) == 1 && obj_player.y > y - 30 &&obj_player.y < y + 30){
	dir = 1
	state = officer_attack
}
*/

// Animation
if (!midair)
	switch(sign(target_hspd))
	{
		case 1: sprite_index = spr_officer_walk_right; break;
		case -1: sprite_index = spr_officer_walk_left; break;
		case 0: 
			sprite_index = spr_officer_idle; 
			switch(dir)
			{
				case 1: image_index = 2; break;
				case -1: image_index = 1; break;
			} break;
	}