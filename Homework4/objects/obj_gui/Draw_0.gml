/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
++currTime;
if (room == StartScreen) {
	if(currTime >= colorChangeTime) {
		++colorIndex;
		colorIndex = colorIndex % colorMax;
		currTime = 0;
	}
	switch(colorIndex) {
		case 0:
			draw_set_color(c_red);
			break;
		case 1:
			draw_set_color(c_orange);
			break;
		case 2:
			draw_set_color(c_yellow);
			break;
		case 3:
			draw_set_color(c_green);
			break;
		case 4:
			draw_set_color(c_blue);
			break;	
		case 5:
			draw_set_color(c_aqua);
			break;
		case 6:
			draw_set_color(c_purple);
			break;	
	}
	draw_text_transformed(room_width / 2, 1*room_height / 5, "Robotron: 2084", 2, 2, 0);
	draw_text_transformed(room_width / 2, 2*room_height / 5, "Save the last human family", 2, 2, 0);
	draw_text_transformed(room_width / 2, 4*room_height / 5, "Press Space to Insert Coin", 2, 2, 0);
}

if (room == InstructionScreen) {
	draw_set_color(c_white);
	draw_text_transformed(room_width / 2, 2*room_height / 5, "WASD to move, arrow to shoot", 2, 2, 0);
	draw_text_transformed(room_width / 2, 3*room_height / 5, "Press Space to Continue", 2, 2, 0);
}