// Select new key from available list
var curr = ds_list_find_value(Properties.ASSIGNED_KEYS, 0)
var new = curr.key
draw_text(0, 0, new)

while (Properties.ASSIGNED_KEYS[ord(new) - 65] == false)
{
	new = keyboard_check_pressed(vk_anykey)
}


// Assign to function
curr.key = new

// remove new key from available list
Properties.AVAILABLE_KEYS[ord(new) - 65] = false

// Place instance of obj_assigned_key at the end of ASSIGNED_KEYS
curr = ds_list_delete(Properties.ASSIGNED_KEYS, 0)
ds_list_add(Properties.ASSIGNED_KEYS, curr)
