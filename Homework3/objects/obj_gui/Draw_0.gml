/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if(room == StartScreen) {
	draw_text_transformed(room_width / 2, 2*room_height / 5, "A/D to move, W to enter doors, Space to Jump", 2, 2, 0);
	draw_text_transformed(room_width / 2, 3*room_height / 5, "Press Space to Start the game!", 2, 2, 0);
}

if(room == DeathScreen) {
	draw_text_transformed(room_width / 2, 1*room_height / 5, "You died!", 2, 2, 0);
	draw_text_transformed(room_width / 2, 2*room_height / 5, "Press R to Retry the Level!", 2, 2, 0);
	draw_text_transformed(room_width / 2, 3*room_height / 5, "Press Space to Replay From Beginning!", 2, 2, 0);
}

if(room == VictoryScreen) {
	draw_text_transformed(room_width / 2, 2*room_height / 5, "You Win!", 2, 2, 0);
	draw_text_transformed(room_width / 2, 3*room_height / 5, "Press Space to Replay the game!", 2, 2, 0);
}