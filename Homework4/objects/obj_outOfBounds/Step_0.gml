/// @description Insert description here
// You can write your code in this editor

wasOutOfBounds = false;

// image_xscale affects the coordinate system
if(image_xscale > 0){
	if(x-sprite_width/2 < global.borderLeft){
		x = global.borderLeft + sprite_width/2;
		wasOutOfBounds = true;
	}
} else {
	if(x+sprite_width/2 < global.borderLeft){
		x = global.borderLeft - sprite_width/2;
		wasOutOfBounds = true;
	}
}
if(x+sprite_width/2 > global.borderRight){
	x = global.borderRight - sprite_width/2;
	wasOutOfBounds = true;
}
if(y-sprite_height/2 < global.borderTop){
	y = global.borderTop + sprite_width/2;
	wasOutOfBounds = true;
}
if(y+sprite_height/2 > global.borderBot){
	y = global.borderBot - sprite_width/2;
	wasOutOfBounds = true;
}