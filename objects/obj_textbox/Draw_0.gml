draw_set_color(c_white)	// Set default color to white

// Draw textbox (Background sprite + rectangle outline)
//draw_rectangle(x_cor - border_w, y_cor - border_w, x_cor + box_width + border_w, y_cor + box_height + border_w, 0)
draw_sprite(spr_textbox, 0, x, y)


text_part = string_copy(text[page], 1, char_count)	// Amount of text to display for scrolling effect


var text_x = x_cor + x_buff	// X pos of text
var text_y = y_cor + y_buff	// Y pos of text


// If creator has a name to display
if (string_length(cr_name) > 0) {
	draw_text_color(text_x, text_y, cr_name, c_yellow, c_yellow, c_yellow, c_yellow, 1)
	draw_text_ext(text_x, text_y + line_gap, text_part, line_gap, box_width - (2 * x_buff))
}

// Default case, creator has no name to display
else
	draw_text_ext(text_x, text_y, text_part, line_gap, box_width)