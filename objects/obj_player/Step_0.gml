// Apply Gravity
if (target_vspd < global.max_vspd)
	target_vspd += global.grav_strength

// Set direction instance is facing
if (target_hspd != 0)
	dir = sign(target_hspd)

// Detect if standing on obj_solid
midair = !place_meeting(x, y + 1, obj_solid)

// Main functionality
script_execute(state)

#region Collisions

// Horizontal Collision
hspd += (target_hspd - hspd) * momentum
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

if (TOGGLE_REMAP)
	remap_open = !remap_open