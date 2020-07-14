if (!damage_applied)
{
	// Set sprite
	if(sprite_index != spr_player_damage_left && dir == 1){
		sprite_index = spr_player_damage_left;
		kback = 10
	}
	if(sprite_index != spr_player_damage_right && dir == -1){
		sprite_index = spr_player_damage_right;
		kback = -10
	}

	// Get current key and reduce health
	var curr_key = ds_list_find_value(global.KEY_DEATH_ORDER, 0)

	// Reduce key health
	curr_key.hp--

	// If key health has run out
	if (curr_key.hp <= 0)
		remove_key()
	
	// Game over screen
	if(ds_list_size(global.KEY_DEATH_ORDER) == 0)
		room_goto(rm_game_over)
	
	damage_applied = true;
}

if(image_index >= 5){
	alarm[0] = 10;
}

if (place_meeting(x, y + vspd, obj_solid))
{
	while (!place_meeting(x, y + sign(vspd), obj_solid))
		y += sign(vspd);
	vspd = 0;
}

if(kback > 0 && dir == 1)
	kback --
if(kback < 0 && dir == -1)
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