//@description end pause and switch direction
// You can write your code in this editor
state = officer_patrol

if (damage_applied == true)
	damage_applied = false
if (attacked == true){
	attacked = false
}
if (pause == true){
	pause = false
	hspd = -old_hspeed
	x +=5*hspd
}