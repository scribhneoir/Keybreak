text[0] = "Hello World"

page = 0	// The array index of text or my_text
char_count = 0	// Text drawn in scrolling effect
next_page = false	// Trigger for moving to next page, set by whatever object creates the textbox

creator = noone	// The instance ID that created this textbox
cr_name = noone // The name to display alongside text, if applicable

x_cor = x - sprite_get_width(spr_textbox)/2
y_cor = y + 30

x_buff = 5	// Space around edge of box
y_buff = 5
border_w = 2	// Width of rectangle outline
box_width = sprite_get_width(spr_textbox)	// Subtract (2*x_buff) for horizontal distance to 
											// draw text before moving to next line
box_height = sprite_get_height(spr_textbox)
line_gap = string_height(text[0])	// Vertical distance between lines of text