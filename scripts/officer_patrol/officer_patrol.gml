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


if (vspd == 0)
	switch(sign(hspd))
	{
		case 1: sprite_index = spr_officer_walk_right; break;
		case -1: sprite_index = spr_officer_walk_left; break;
		case 0: sprite_index = spr_officer_idle; break;
	}
