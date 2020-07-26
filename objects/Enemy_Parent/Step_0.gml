// Apply Gravity
target_vspd += global.grav_strength

// Set direction instance is facing
if (target_hspd != 0)
	dir = sign(target_hspd)

// Detect if standing on obj_solid
midair = !place_meeting(x, y + 1, obj_solid)

// Reset target speed every step
target_hspd = 0

// Main child functionality
script_execute(state)

// Set momentum
if (midair)
	momentum = 0.55	// Higher values means lighter jumps
else if (abs(target_hspd) < abs(spd))
	momentum = 0.25	// Higher values means faster stops
else
	momentum = 0.15	// Higher values means faster starts
	
hspd += (target_hspd - hspd) * momentum

#region Collisions

// Horizontal Collision
var col_hspd = round(hspd)
if (place_meeting(x + col_hspd, y, obj_solid))
{
	while (!place_meeting(x + sign(col_hspd), y, obj_solid))
		x += sign(col_hspd)
	col_hspd = 0
	hspd = 0
}
x += col_hspd

// Vertical Collision
var col_vspd = round(target_vspd)
if (place_meeting(x, y + col_vspd, obj_solid))
{
	while (!place_meeting(x, y + sign(col_vspd), obj_solid))
		y += sign(col_vspd)
	col_vspd = 0
	target_vspd = 0
}
y += col_vspd

#endregion



/*
// Horizontal Collision
if (place_meeting(x + hspd, y, obj_solid))
{
	while (!place_meeting(x + sign(hspd), y, obj_solid))
		x += sign(hspd)
	hspd = 0
}
x += hspd

// Vertical Collision
if (place_meeting(x, y + vspd, obj_solid))
{
	while (!place_meeting(x, y + sign(vspd), obj_solid))
		y += sign(vspd)
	vspd = 0
}
y += vspd
*/