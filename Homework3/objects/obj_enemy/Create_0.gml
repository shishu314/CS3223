/// @description Insert description here
// You can write your code in this editor
mspd = 0;
rand = random_range(0, 1);

if(rand > 0.5) {
	mspd = -1;
	image_xscale = -1;
} else {
	mspd = 1;
	image_xscale = 1;
}