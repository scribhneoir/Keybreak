// Set movement speed
vspd += grav;

// Horizontal Collision
if (place_meeting(x + hspd, y, obj_solid))
{
	while (!place_meeting(x+sign(hspd), y, obj_solid))
		x += sign(hspd);
	old_hspeed = hspd
	hspd = 0
	state = officer_pause
}
x += hspd;

// Vertical Collision
if (place_meeting(x, y + vspd, obj_solid))
{
	while (!place_meeting(x, y + sign(vspd), obj_solid))
		y += sign(vspd);
	vspd = 0;
}
y += vspd;

if (place_meeting(x + sign(hspd), y, obj_player) && obj_player.state = player_attack){
	state = officer_damaged
	attack_dir = obj_player.face_dir
}

//attack if in range
if(obj_player.state != player_damaged && obj_player.x > x - 60 && obj_player.x < x && sign(hspd) == -1 && obj_player.y > y - 30 &&obj_player.y < y + 30){
	attack_dir = -1
	state = officer_attack
}
if(obj_player.state != player_damaged && obj_player.x < x + 60 && obj_player.x > x && sign(hspd) == 1 && obj_player.y > y - 30 &&obj_player.y < y + 30){
	attack_dir = 1
	state = officer_attack
}

if (vspd == 0)
	switch(sign(hspd))
	{
		case 1: sprite_index = spr_officer_walk_right; break;
		case -1: sprite_index = spr_officer_walk_left; break;
		case 0: sprite_index = spr_officer_idle; break;
	}
