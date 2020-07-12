// Where object appears for reassigning
x = room_width/2 - sprite_width/2
y = room_height/2 - sprite_height/2

// Dimensions of keys on sprite
key_size = 21

// Vertical offset for rows of keys
y1 = 40; y2 = 63; y3 = 86;

// Horizontal offset to count from
x1 = 30; x2 = 36; x3 = 46;

// Array of obj_key_select
KEY_FLAGS = array_create(26)

// Initialise key array
for (i = 0; i < 26; i++)
{
	var xcor = x
	var ycor = y
	if (i <= 9)
	{
		 xcor = x + x1 + (i * (key_size + 2))
		 ycor += y1
	}
	else if (i <= 18)
	{
		 xcor = x + x2 + ((i%10) * (key_size + 2))
		 ycor += y2
	}
	else if (i <= 25)
	{
		 xcor = x + x3 + ((i%19) * (key_size + 2))
		 ycor += y3
	}
	
	KEY_FLAGS[i] = instance_create_layer(xcor, ycor, "Instances", obj_key_select)
}

// Initialize IDs
KEY_FLAGS[0].key_id = "Q"; KEY_FLAGS[1].key_id = "W"; KEY_FLAGS[2].key_id = "E";
KEY_FLAGS[3].key_id = "R"; KEY_FLAGS[4].key_id = "T"; KEY_FLAGS[5].key_id = "Y";
KEY_FLAGS[6].key_id = "U"; KEY_FLAGS[7].key_id = "I"; KEY_FLAGS[8].key_id = "O";
KEY_FLAGS[9].key_id = "P"; KEY_FLAGS[10].key_id = "A"; KEY_FLAGS[11].key_id = "S";
KEY_FLAGS[12].key_id = "D"; KEY_FLAGS[13].key_id = "F"; KEY_FLAGS[14].key_id = "G";
KEY_FLAGS[15].key_id = "H"; KEY_FLAGS[16].key_id = "J"; KEY_FLAGS[17].key_id = "K";
KEY_FLAGS[18].key_id = "L"; KEY_FLAGS[19].key_id = "Z"; KEY_FLAGS[20].key_id = "X";
KEY_FLAGS[21].key_id = "C"; KEY_FLAGS[22].key_id = "V"; KEY_FLAGS[23].key_id = "B";
KEY_FLAGS[24].key_id = "N"; KEY_FLAGS[25].key_id = "M";

// Set default keys states to 1
KEY_FLAGS[10].state = 1
KEY_FLAGS[12].state = 1
KEY_FLAGS[15].state = 1
KEY_FLAGS[16].state = 1