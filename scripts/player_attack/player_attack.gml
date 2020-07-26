// Mark attack as completed once obj_damage is created
if (!attacked)
{
	// Set sprite based on dir
	if (sprite_index != spr_player_punch_right && sprite_index != spr_player_punch_left)
		switch(dir)
		{
			case 1: sprite_index = spr_player_punch_right; break;
			case -1: sprite_index = spr_player_punch_left; break;
		}
	
	// Create obj_damage at right frame
	if (image_index >= 2)
	{
		create_damage(dir * 50, -10, 20)
		attacked = true;
		alarm[0] = 20;
	}
} 

else
	image_index = 2	// Stay on contact frame
	
// Pause to attack if standing, otherwise continue jump	
if (midair && (target_hspd != 0))
	target_hspd = dir * spd
else
	target_hspd = hspd/2