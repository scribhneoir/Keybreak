/*	Universal damage object for player and enemies.
	Damage is received from collision with this object.
	Children of Character_Parent create this object to attack
*/
creator = noone
x_offset = 0	// Offset vars are coordinates relative to creator
y_offset = 0	// Allows hitbox to move with creator
dmg = 0