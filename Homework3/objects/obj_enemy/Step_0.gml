/// @description Insert description here
// You can write your code in this editor

if(mspd > 0){
	if(!instance_position(x+mspd, y+sprite_height, obj_platform)) {
		mspd = -mspd;
		image_xscale = image_xscale * -1;
	}
} else {
	if(!instance_position(x+mspd, y+sprite_height, obj_platform)) {
		mspd = -mspd;	
		image_xscale = image_xscale * -1;
	}
}

x += mspd;