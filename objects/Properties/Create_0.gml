// Offsets for the keys & health
GUI_x = 81
GUI_y = 60

// How many & which keys are left
AVAILABLE_KEYS[26] = true
KEYS_REMAINING = 26

// input_get reads from CONTROLS to connect keys with action variables
// KEY_DEATH_ORDER configures which key will be eliminated next
CONTROLS = ["J", "H", "A", "D"]
KEY_DEATH_ORDER = ds_list_create()

#region Initial Assignments

// Initialize assigned keys
for (i = 0; i < 4; i++)
{
	var temp = instance_create_layer(GUI_x + (80 * i), GUI_y, "Instances", obj_assigned_key)
	ds_list_insert(KEY_DEATH_ORDER, 0, temp)
}

// Default Jump
with (ds_list_find_value(KEY_DEATH_ORDER, 0))
{
	name = "JUMP"
	key = "J"
	AVAILABLE_KEYS[8] = false
}

// Default Attack
with (ds_list_find_value(KEY_DEATH_ORDER, 1))
{
	name = "ATTACK"
	key = "H"
	AVAILABLE_KEYS[7] = false
}

// Default Right
with (ds_list_find_value(KEY_DEATH_ORDER, 2))
{
	name = "RIGHT"
	key = "A"
	AVAILABLE_KEYS[0] = false
}

// Default Left
with (ds_list_find_value(KEY_DEATH_ORDER, 3))
{
	name = "LEFT"
	key = "D"
	AVAILABLE_KEYS[3] = false
}

#endregion