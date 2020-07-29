///@param x_offset
///@param y_offset
///@param duration

/*	Used by everything for attacking
	If duration <= 0, the instance will not automatically destroy itself
	X and Y are coordinates relative to the creator
*/

var dmg_obj = instance_create_layer(x + argument0, y + argument1, "Textboxes", obj_damage)
dmg_obj.x_offset = argument0
dmg_obj.y_offset = argument1
dmg_obj.creator = self
dmg_obj.dmg = dmg

if (argument2 > 0)
	dmg_obj.alarm[0] = argument2