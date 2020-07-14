// This is the parent of all objects that have states, move, and collide
state = state_paused

// Control vars
spd = 7
dir = 1	// 1 = facing right, -1 = facing left
kback = 10
jump_height = -15
hspd = 0
vspd = 0

// Used to apply damage exactly once
damage_applied = false
attacked = false