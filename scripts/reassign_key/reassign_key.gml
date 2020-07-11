// Select new key from available list
// Assign to function
// remove new key from available list

// Place instance of obj_assigned_key at the end of ASSIGNED_KEYS
var action = ds_list_delete(Properties.ASSIGNED_KEYS, 0)
ds_list_add(Properties.ASSIGNED_KEYS, action)