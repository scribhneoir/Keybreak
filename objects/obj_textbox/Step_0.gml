clamp(x, 0, room_width - sprite_width)
clamp(y, 0, room_height - sprite_height)

// Increment to the next array index ('page') of text
// next_page should only be set to true by the object which creates an obj_textbox instance
if (next_page && char_count == string_length(text[page])) {
	
	page++
	char_count = 0	// Reset for text scrolling effect
	
	if (page < array_length_1d(creator.my_text))
		text[page] = creator.my_text[page]
	
	// Automatically destroy self at the end, so other objects never have to
	else {
		instance_destroy(self)
		creator.alarm[0] = 1
	}
	
	// Prevent going to the next page immediately
	next_page = false
}

// If next_page become true too soon, skip scrolling effect
else if (next_page) {
	char_count = string_length(text[page])
	next_page = false
}

// Normal scrolling effect
else if (char_count < string_length(text[page]))
	char_count++
