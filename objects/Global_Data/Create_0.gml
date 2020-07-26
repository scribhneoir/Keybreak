#region Initial Control Assignments

starting_key_number = 4
starting_jump = "J"
starting_attack = "H"
starting_walk_right = "D"
starting_walk_left = "A"

#endregion
#region Data Structures

/*	Keys must be placed in this array IN PROPER ORDER to actually be used
	0 = jump, 1 = attack, 2 = walk right, 3 = walk left, 4 = ...	*/
global.CONTROLS = [starting_jump, starting_attack, starting_walk_right, starting_walk_left]
global.KEY_DEATH_ORDER = ds_list_create()	// Organizes key order on health bar / which will "die" next
global.DEAD_CONTROLS = ds_list_create()	// List of dead keys

#endregion
#region Global Variables

global.grav_strength = 1.1	// Increase of vspd per step when falling
global.max_vspd = 30	// Max fall speed
global.key_hp = 2	// Individual key health
global.KEYS_REMAINING = 26	// Number of keys

#endregion
#region Initialize First Keys

for (i = 0; i < starting_key_number; i++)
	ds_list_insert(global.KEY_DEATH_ORDER, 0,				// 16 is the width of the healthbar sprite
					instance_create_layer(UI.HB_key_x + (16 * i * global.key_hp), UI.HB_key_y - 2,
					"Instances", obj_assigned_key))

// Default Jump
var temp_key = ds_list_find_value(global.KEY_DEATH_ORDER, 0)
temp_key.index = 0
temp_key.key_id = starting_jump
//temp_key.visible = false

// Default Attack
temp_key = ds_list_find_value(global.KEY_DEATH_ORDER, 1)
temp_key.index = 1
temp_key.key_id = starting_attack

// Default Right
temp_key = ds_list_find_value(global.KEY_DEATH_ORDER, 2)
temp_key.index = 2
temp_key.key_id = starting_walk_right

// Default Left
temp_key = ds_list_find_value(global.KEY_DEATH_ORDER, 3)
temp_key.index = 3
temp_key.key_id = starting_walk_left

#endregion

// Start game at end of initialization
if (room == rm_create)
	room_goto(rm_test)	//room_goto(rm_title)