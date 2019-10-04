/// @description Insert description here
// You can write your code in this editor

if(x-sprite_width/2 < global.borderLeft){
	x = global.borderLeft + sprite_width/2;
}
if(x+sprite_width/2 > global.borderRight){
	x = global.borderRight - sprite_width/2;
}
if(y-sprite_height/2 < global.borderTop){
	y = global.borderTop + sprite_width/2;
}
if(y+sprite_height/2 > global.borderBot){
	y = global.borderBot - sprite_width/2;
}