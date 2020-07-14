if (!damage_applied)
{
	// Set sprite
	if(sprite_index != spr_officer_damage_left && dir == -1){
		sprite_index = spr_officer_damage_left;
		kback = -5
	}
	if(sprite_index != spr_officer_damage_right && dir == 1){
		sprite_index = spr_officer_damage_right;
		kback = 5
	}

	hp --
	damage_applied = true;
}

if(image_index <= 5){
	alarm[0] = 10;
}

/*
if (place_meeting(x, y + vspd, obj_solid))
{
	while (!place_meeting(x, y + sign(vspd), obj_solid))
		y += sign(vspd);
	vspd = 0;
}
*/

if(kback > 0 && dir == -1)
	kback --
if(kback < 0 && dir == 1)
	kback ++
	
if (place_meeting(x + kback, y, obj_solid))
{
	while (!place_meeting(x+sign(kback), y, obj_solid))
		x += sign(kback);
	kback = 0
}
if (place_meeting(x + kback, y, obj_door))
{
	while (!place_meeting(x+sign(kback), y, obj_door))
		x += sign(kback);
	kback = 0
}

x+=kback
y += vspd;