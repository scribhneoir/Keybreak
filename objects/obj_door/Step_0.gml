if (active) {

	// Create textbox
	if (textbox == noone) {
		textbox = instance_create_layer(x, y, "Players", obj_textbox)
		textbox.creator = id
		textbox.cr_name = "Locked Door"
		textbox.text[textbox.page] = my_text[textbox.page]	// Only need to set the first page here
	}
	alarm[0] = 50;
}

else {
	instance_destroy(textbox)
	textbox = noone
}