// UI
TOGGLE_REMAP = keyboard_check_pressed(vk_space)
TOGGLE_PAUSE = keyboard_check_pressed(vk_escape)	// Not functional

// CONTROLS
JUMP = keyboard_check_pressed(ord(global.CONTROLS[0]))
JUMP_HELD = keyboard_check(ord(global.CONTROLS[0]))
ATTACK = keyboard_check_pressed(ord(global.CONTROLS[1]))
RIGHT = keyboard_check(ord(global.CONTROLS[2]))
LEFT = keyboard_check(ord(global.CONTROLS[3]))
#region dashing

DASH_TIMER_RIGHT = keyboard_check_pressed(ord(global.CONTROLS[2]))
DASH_TIMER_LEFT = keyboard_check_pressed(ord(global.CONTROLS[3]))
DASH_RIGHT = (alarm_get(2) > 0) && DASH_TIMER_RIGHT
DASH_LEFT = (alarm_get(1) > 0) && DASH_TIMER_LEFT
if ((alarm_get(2) == -1) && DASH_TIMER_RIGHT)
	alarm[2] = quick_input_window
if ((alarm_get(1) == -1) && DASH_TIMER_LEFT)
	alarm[1] = quick_input_window
	
#endregion