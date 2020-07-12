if (place_meeting(x - obj_player.face_dir, y, obj_player)) {

	// Create textbox
	if (textbox == noone) {
		textbox = instance_create_layer(room_width/2, 
										room_height - 200, "Textboxes", obj_textbox)
		textbox.creator = id
		textbox.cr_name = "Locked Door"
		textbox.text[textbox.page] = my_text[textbox.page]	// Only need to set the first page here
	}
	
	if (keyboard_check(vk_enter))
		alarm[0] = 1
	else if (keyboard_check(vk_shift))
		alarm[1] = 1
	
	
}

else if (textbox != noone){
	instance_destroy(textbox)
	textbox = noone
}