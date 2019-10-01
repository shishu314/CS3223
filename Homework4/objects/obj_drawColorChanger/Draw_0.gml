/// @description Insert description here
// You can write your code in this editor
++currTime;
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