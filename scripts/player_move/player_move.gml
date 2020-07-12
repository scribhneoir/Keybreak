input_get()

// Set movement speed
hspd = walk_dir * spd;
vspd += grav;

// Find direction for properly facing sprites
if (walk_dir != 0)
	face_dir = walk_dir

// Attacking
if (ATTACK)
	state = player_attack

// Interact with door
if (place_meeting(x + sign(hspd), y, obj_door) && vspd == 0)
{
	var door = instance_nearest(x, y, obj_door)
	door.active = true
}
//Get punched by officer
if (place_meeting(x + sign(hspd), y, obj_officer) && obj_officer.state = officer_attack){
	state = player_damaged
	attack_dir = obj_officer.attack_dir
}

// Jumping
if (place_meeting(x, y + 1, obj_solid) && (JUMP))
{
	vspd = jump_height;
	sprite_index = spr_player_jump
}


// Horizontal Collision
if (place_meeting(x + hspd, y, obj_solid))
{
	while (!place_meeting(x+sign(hspd), y, obj_solid))
		x += sign(hspd);
	hspd = 0
}
if (place_meeting(x + hspd, y, obj_door))
{
	while (!place_meeting(x+sign(hspd), y, obj_door))
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

	
if (vspd == 0)
	switch(walk_dir)
	{
		case 1: sprite_index = spr_player_walk_right; break;
		case -1: sprite_index = spr_player_walk_left; break;
		case 0: sprite_index = spr_player_idle; break;
	}
else
	switch(walk_dir)
	{
		case 1: image_index = 2; break;
		case -1: image_index = 1; break;
	}