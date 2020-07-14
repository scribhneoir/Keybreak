// UI
TOGGLE_REMAP = keyboard_check_pressed(vk_space)
TOGGLE_PAUSE = keyboard_check_pressed(vk_escape)	// Not functional

// CONTROLS
JUMP = keyboard_check_pressed(ord(global.CONTROLS[0]))
ATTACK = keyboard_check_pressed(ord(global.CONTROLS[1]))
RIGHT = keyboard_check(ord(global.CONTROLS[2]))
LEFT = keyboard_check(ord(global.CONTROLS[3]))