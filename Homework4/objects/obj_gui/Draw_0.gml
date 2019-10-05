/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (room == StartScreen) {
	event_inherited();
	draw_text_transformed(room_width / 2, 1*room_height / 5, "Robotron: 2084", 2, 2, 0);
	draw_text_transformed(room_width / 2, 2*room_height / 5, "Save the last human family", 2, 2, 0);
	draw_text_transformed(room_width / 2, 4*room_height / 5, "Press Space to Insert Coin", 2, 2, 0);
}

if (room == InstructionScreen) {
	draw_set_color(c_white);
	draw_text_transformed(room_width / 2, 2*room_height / 5, "WASD to move, IJKL to shoot", 2, 2, 0);
	draw_text_transformed(room_width / 2, 3*room_height / 5, "Press Space to Continue", 2, 2, 0);
}

if (room == Level1) {
	draw_set_color(c_red);
	draw_rectangle(global.borderLeft, global.borderTop, global.borderRight, global.borderTop-global.borderWidth, false);
	draw_rectangle(global.borderLeft, global.borderBot, global.borderRight, global.borderBot+global.borderWidth, false);
	draw_rectangle(global.borderLeft-global.borderWidth, global.borderTop, global.borderLeft, global.borderBot, false);
	draw_rectangle(global.borderRight, global.borderTop, global.borderRight+global.borderWidth, global.borderBot, false);
}