/*	This is the parent of all objects that have states, move, and collide
*/	
state = state_default
midair = false

// Control Vars
spd = 7
dir = 1	// 1 = facing right, -1 = facing left
kback = 10	// Always positive
jump_height = -16	// Always negative
hspd = 0
vspd = 0

// Combat Vars
hp = 3
dmg = 1
damaged = false	// Used to apply damage exactly once
attacked = false	// Used to attack exactly once