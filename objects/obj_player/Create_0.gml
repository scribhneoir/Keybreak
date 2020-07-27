state = player_move

// Control Vars
walk_spd = 9
jump_spd = 7
climb_spd = 6
momentum = 0.22	// The percentage per step that hspd will approach target_hspd
jump_height = -17	// Always negative
quick_input_window = 15
hspd = 0
target_hspd = 0
target_vspd = 0


hspd_before_jump = 0	// Used to carry speed into jumps

// Combat Vars
dmg = 1
i_frames = 10
kback = 10	// Always positive
damage_applied = false	// Used to apply damage exactly once
attacked = false	// Used to attack exactly once

// State vars
midair = false
dir = 1	// 1 = facing right, -1 = facing left
dashed = false

// Other - move to UI object later?
remap_open = false