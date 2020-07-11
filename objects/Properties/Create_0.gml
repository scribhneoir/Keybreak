GUI_x = 81
GUI_y = 60
AVAILABLE_KEYS[26] = true
KEYS_REMAINING = 26
ASSIGNED_KEYS = ds_list_create()

#region Initial Assignments

// Initialize assigned keys
for (i = 0; i < 4; i++)
{
	var temp = instance_create_layer(GUI_x + (80 * i), GUI_y, "Instances", obj_assigned_key)
	ds_list_insert(ASSIGNED_KEYS, 0, temp)
}

// Default Jump
with (ds_list_find_value(ASSIGNED_KEYS, 0))
{
	name = "JUMP"
	key = "J"
	AVAIALABE_KEYS[8] = false
}

// Default Attack
with (ds_list_find_value(ASSIGNED_KEYS, 1))
{
	name = "ATTACK"
	key = "H"
	AVAIALABE_KEYS[7] = false
}

// Default Right
with (ds_list_find_value(ASSIGNED_KEYS, 2))
{
	name = "RIGHT"
	key = "A"
	AVAIALABE_KEYS[0] = false
}

// Default Left
with (ds_list_find_value(ASSIGNED_KEYS, 3))
{
	name = "LEFT"
	key = "D"
	AVAIALABE_KEYS[3] = false
}

#endregion