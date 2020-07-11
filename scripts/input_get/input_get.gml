PAUSE = keyboard_check(vk_escape)

RIGHT = keyboard_check(ord("A"))
LEFT = keyboard_check(ord("D"))
JUMP = keyboard_check_pressed(ord("J"))
ATTACK = keyboard_check_pressed(ord("H"))

walk_dir = LEFT - RIGHT