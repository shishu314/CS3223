/// @description Insert description here
// You can write your code in this editor
switch(currDirection) {
	case "Up":
		sprite_index = spr_HulkVertical;
		image_xscale = 1;
		y -= moveSpeed;
		break;
	case "Left":
		sprite_index = spr_HulkWalkRight;
		image_xscale = -1;
		x -= moveSpeed;
		break;
	case "Right":
		x += moveSpeed;
		sprite_index = spr_HulkWalkRight;
		image_xscale = 1;
		break;
	case "Down":
		sprite_index = spr_HulkVertical;
		image_xscale = 1;
		y += moveSpeed;
		break;
}

event_inherited();
if(wasOutOfBounds) {
	moveTimer = 0;
	currDirection = GenRandomDirection();
} else {
	moveTimer ++;
	if(moveTimer >= moveTime) {
		moveTimer = 0;
		currDirection = GenRandomDirection();
	}
}