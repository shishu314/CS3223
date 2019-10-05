/// @description Insert description here
// You can write your code in this editor
x += xSpeed;
y += ySpeed;
image_angle = rotation;
event_inherited();
if(wasOutOfBounds) {
	instance_destroy();
}