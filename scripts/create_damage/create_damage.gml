///@param x
///@param y
///@param duration

/*	Used by children of Character_Parent for attacking
	If duration <= 0, the instance will not automatically destroy itself
*/

var dmg_obj = instance_create_layer(argument0, argument1, "Textboxes", obj_damage)

dmg_obj.creator = self
dmg_obj.dmg = dmg

if (argument2 > 0)
	dmg_obj.alarm[0] = argument2