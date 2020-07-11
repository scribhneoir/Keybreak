// Offsets for the keys & health
GUI_x = 81
GUI_y = 60

// How many & which keys are left
AVAILABLE_KEYS = array_create(26, true)
KEYS_REMAINING = 26

// input_get reads from CONTROLS to connect keys with action variables
// KEY_DEATH_ORDER configures which key will be eliminated next
CONTROLS = ["J", "H", "A", "D"]
KEY_DEATH_ORDER = ds_list_create()
DEAD_CONTROLS = ds_list_create()

#region Initial Assignments

// Initialize assigned keys
for (i = 0; i < 4; i++)
{
	var temp = instance_create_layer(GUI_x + (8 * i * 5), GUI_y, "Instances", obj_assigned_key)
	ds_list_insert(KEY_DEATH_ORDER, 0, temp)
}

// Default Jump
var temp_key = ds_list_find_value(KEY_DEATH_ORDER, 0)
temp_key.index = 0
temp_key.key = "J"
array_set(self.AVAILABLE_KEYS, 9, false)

// Default Attack
temp_key = ds_list_find_value(KEY_DEATH_ORDER, 1)
temp_key.index = 1
temp_key.key = "H"
array_set(self.AVAILABLE_KEYS, 7, false)

// Default Right
temp_key = ds_list_find_value(KEY_DEATH_ORDER, 2)
temp_key.index = 2
temp_key.key = "A"
array_set(self.AVAILABLE_KEYS, 0, false)

// Default Left
temp_key = ds_list_find_value(KEY_DEATH_ORDER, 3)
temp_key.index = 3
temp_key.key = "D"
array_set(self.AVAILABLE_KEYS, 3, false)

#endregion