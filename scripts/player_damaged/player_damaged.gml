if (!damage_applied)
{
	// Set sprite
	if(sprite_index != spr_player_damage_left && attack_dir == 1){
		sprite_index = spr_player_damage_left;
		kback = 10
	}
	if(sprite_index != spr_player_damage_right && attack_dir == -1){
		sprite_index = spr_player_damage_right;
		kback = -10
	}

	// Get current key and reduce health
	var curr_key = ds_list_find_value(Properties.KEY_DEATH_ORDER, 0)

	// Reduce key health
	curr_key.hp--

	// If health has run out, remove it from KEY_DEATH_ORDER
	// Set proper index of CONTROLS to vk_nokey
	if (curr_key.hp <= 0)
	{
		remove_key()
		/*
		curr_key = ds_list_find_value(Properties.KEY_DEATH_ORDER, 0)
		ds_list_delete(Properties.KEY_DEATH_ORDER, 0)
		ds_list_add(Properties.DEAD_CONTROLS, curr_key)
		Properties.KEYS_REMAINING--
		Properties.CONTROLS[curr_key.index] = vk_nokey
		curr_key.draw = false
		*/
	}
	damage_applied = true;
}

if(image_index == 6){
	alarm[0] = 10;
}

if (place_meeting(x, y + vspd, obj_solid))
{
	while (!place_meeting(x, y + sign(vspd), obj_solid))
		y += sign(vspd);
	vspd = 0;
}

if(kback > 0 && attack_dir == 1)
	kback --
if(kback < 0 && attack_dir == -1)
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