/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if(room == StartScreen) {
	draw_text_transformed(room_width / 2, room_height / 2, "Press Space to Begin!", 2, 2, 0);
}
if(room == InstructionScreen) {
	draw_text_transformed(room_width / 2, room_height / 10, "Instructions", 2, 2, 0);
	draw_text_transformed(room_width / 2, 3*room_height / 10, "Use WASD/Arrows to Move", 2, 2, 0);
	draw_text_transformed(room_width / 2, 4*room_height / 10, "Stay still for red lines", 2, 2, 0);
	draw_text_transformed(room_width / 2, 5*room_height / 10, "Move for blue lines", 2, 2, 0);
	draw_text_transformed(room_width / 2, 6*room_height / 10, "Green lines don't do anything :)", 2, 2, 0);
	draw_text_transformed(room_width / 2, 8*room_height / 10, "Press Space to Continue.", 2, 2, 0);
}
if(room == GameScreen) {
	draw_text_transformed(room_width / 10, room_height / 10, "Lives: " + string(lives), 2, 2, 0);
	draw_text_transformed(8*room_width / 10, room_height / 10, "Score: " + string(score), 2, 2, 0);
}
if(room == EndScreen) {
	draw_text_transformed(room_width / 2, 2*room_height / 5, "GAME OVER! Final Score: " + string(score), 2, 2, 0);
	draw_text_transformed(room_width / 2, 3*room_height / 5, "Press Space to Restart!", 2, 2, 0);
}