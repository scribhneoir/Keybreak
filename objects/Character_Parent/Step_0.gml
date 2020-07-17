// Apply Gravity
vspd += global.grav_strength;

// Set direction instance is facing
if (hspd != 0)
	dir = sign(hspd)
	
#region Collisions

// Horizontal Collision
if (place_meeting(x + hspd, y, obj_solid))
{
	while (!place_meeting(x + sign(hspd), y, obj_solid))
		x += sign(hspd);
	hspd = 0
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

#endregion

script_execute(state)