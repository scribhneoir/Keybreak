// Universal vars for all states - these are the defaults
state = player_move
dir = 1	// 1 = facing right, -1 = facing left
momentum = 0.22	// Percentage per step that hspd will approach target_hspd
hspd = 0	// These speeds are set to other speed vars in given events. Default to 0
target_hspd = 0
target_vspd = 0
midair = false	// Do we need this???
remap_open = false	// Move to UI object later???

#region Default state / walking vars

walk_spd = 7
starting_momentum = 0.22	// Higher values means faster starts
stopping_momentum = 0.27	// Higher values means faster stops

#endregion
#region Jumping Vars

jump_spd = 9
jump_height = -18	// Always negative
hspd_before_jump = 0	// Used to carry speed into jumps
wall_jump = false	// Detects if jumping off side of wall or ledge
jump_float = false	// True during pause at the peak of jumps

#endregion

#region Combat Vars

dmg = 1
i_frames = 10	// Invincibility after taking damage
kback = 10	// Always positive
damage_applied = false	// Used to apply damage exactly once
attacked = false	// Used to attack exactly once

#endregion

#region Dashing Vars

double_tap_window = 15	// Input within this number of steps counts as a double tap
dash_length = 10	// Number of steps player will stay in dash state
dash_spd = 16	// Target speed during dash
dash_momentum = 1	// Percentage per step that hspd will approach target_hspd during dash

#endregion

#region Climbing & Crouching Vars

climb_spd = 5
crouch_spd = 5

#endregion