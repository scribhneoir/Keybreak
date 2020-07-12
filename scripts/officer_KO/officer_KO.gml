sprite_index = spr_officer_KO;

if(attack_dir == 1)
	image_index = 1

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