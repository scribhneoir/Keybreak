// Where object appears for reassigning
x_pos = 200
y_pos = 200

// Dimensions of keys on sprite
key_size = 21

// Vertical offset for rows of keys
y1 = 40; y2 = 63; y3 = 86;

// Horizontal offset to count from
x1 = 30; x2 = 36; x3 = 46;


// Initialise key array
for (i = 0; i < 26; i++)
{
	if (i <= 9)
		KEYS[i, 0] = x + x1 + (i * (key_size + 2))
	else if (i <= 18)
		KEYS[i, 0] = x + x2 + ((i%10) * (key_size + 2))
	else if (i <= 25)
		KEYS[i, 0] = x + x3 + ((i%19) * (key_size + 2))
}

KEYS[0, 1] = ord("Q") - 65; KEYS[1, 1] = ord("W") - 65; KEYS[2, 1] = ord("E") - 65;
KEYS[3, 1] = ord("R") - 65; KEYS[4, 1] = ord("T") - 65; KEYS[5, 1] = ord("Y") - 65;
KEYS[6, 1] = ord("U") - 65; KEYS[7, 1] = ord("I") - 65; KEYS[8, 1] = ord("O") - 65;
KEYS[9, 1] = ord("P") - 65; KEYS[10, 1] = ord("A") - 65; KEYS[11, 1] = ord("S") - 65;
KEYS[12, 1] = ord("D") - 65; KEYS[13, 1] = ord("F") - 65; KEYS[14, 1] = ord("G") - 65;
KEYS[15, 1] = ord("H") - 65; KEYS[16, 1] = ord("J") - 65; KEYS[17, 1] = ord("K") - 65;
KEYS[18, 1] = ord("L") - 65; KEYS[19, 1] = ord("Z") - 65; KEYS[20, 1] = ord("X") - 65;
KEYS[21, 1] = ord("C") - 65; KEYS[22, 1] = ord("V") - 65; KEYS[23, 1] = ord("B") - 65;
KEYS[24, 1] = ord("N") - 65; KEYS[25, 1] = ord("M") - 65; 