// Set sprite
sprite_index = spr_player_damaged

// Get current key and reduce health
var curr_key = ds_list_find_value(Properties.ASSIGNED_KEYS, 0)


// If key is dead, move it to the back of the list
if (curr_key.hp > 0)
	curr_key.hp--
else {
	reassign_key()
	select_key()
}
state = player_move