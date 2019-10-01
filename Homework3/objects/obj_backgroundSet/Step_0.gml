/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(alpha)
if(alpha < 1) {
	alpha += 0.5 / room_speed;
}