<<<<<<< HEAD


if(locked){
	
}
else{
	
}
=======
if (place_meeting(x, y, obj_player)) {

	// Create textbox
	if (textbox == noone) {
		textbox = instance_create_layer(x, y, "Players", obj_textbox)
		textbox.creator = id
		textbox.cr_name = "Locked Door"
		textbox.text[textbox.page] = my_text[textbox.page]	// Only need to set the first page here
	}
}

else {
	instance_destroy(textbox)
	textbox = noone
}
>>>>>>> 0a2e408601ec8d680b263e0fd6fc93a17677a777
