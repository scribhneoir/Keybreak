///@description end pause and switch direction
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
if(hp <= 0){
	state = officer_KO
}