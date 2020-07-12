/// @description Unlock Door
remove_key()
var next_key = ds_list_find_value(Properties.KEY_DEATH_ORDER, 0)
next_key.hp *= 2
instance_destroy(obj_textbox)
instance_destroy(self)