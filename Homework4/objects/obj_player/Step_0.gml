/// @description Insert description here
// You can write your code in this editor
isMoving = false;

if(keyboard_check(ord("A"))) {
	x -= moveSpeed;
	isMoving = true;
	sprite_index = spr_playerWalkRight;
	image_xscale = -1;
}

if(keyboard_check(ord("D"))) {
	x += moveSpeed;
	isMoving = true;
	sprite_index = spr_playerWalkRight;
	image_xscale = 1;
}

if(keyboard_check(ord("W"))) {
	y -= moveSpeed;
	isMoving = true;
	sprite_index = spr_playerWalkUp;
	image_xscale = 1;
}

if(keyboard_check(ord("S"))) {
	y += moveSpeed;
	isMoving = true;
	sprite_index = spr_playerWalkDown;
	image_xscale = 1;
}

event_inherited();

if(!isMoving) {
	image_index = 0;
}
