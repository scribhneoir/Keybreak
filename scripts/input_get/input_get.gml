PAUSE = keyboard_check(vk_escape)
REMAP = keyboard_check_pressed(vk_space)

JUMP = keyboard_check_pressed(ord(Properties.CONTROLS[0]))
ATTACK = keyboard_check_pressed(ord(Properties.CONTROLS[1]))
RIGHT = keyboard_check(ord(Properties.CONTROLS[2]))
LEFT = keyboard_check(ord(Properties.CONTROLS[3]))

walk_dir = LEFT - RIGHT