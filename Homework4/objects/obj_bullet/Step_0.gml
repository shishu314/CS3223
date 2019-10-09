/// @description Insert description here
// You can write your code in this editor
x += xSpeed;
y += ySpeed;
image_angle = rotation;
event_inherited();
if(wasOutOfBounds) {
	instance_destroy();
}

#region Enemy
TopLeftX = x - sprite_width/2 * (1+cos(rotation));
TopLeftY = y - sprite_height/2 * (1+sin(rotation));
BotRightX = x + sprite_width/2 * (1+cos(rotation));
BotRightY = y + sprite_height/2 * (1+sin(rotation));
var grunt = collision_rectangle(TopLeftX, TopLeftY, BotRightX, BotRightY, obj_grunt, false, false);
if(grunt) {
	instance_destroy(grunt);
	instance_destroy();
	score += 100;
}
var hulk = collision_rectangle(TopLeftX, TopLeftY, BotRightX, BotRightY, obj_hulk, false, false);
if(hulk) {
	if(xSpeed != 0 && ySpeed != 0){
		hulk.x += xSpeed/abs(xSpeed) * cos(45) * bulletImpact;
		hulk.y += ySpeed/abs(ySpeed) * sin(45) * bulletImpact;
	} else {
		if(xSpeed != 0){
			hulk.x += xSpeed/abs(xSpeed) * bulletImpact;
		}
		if(ySpeed != 0) {
			hulk.y += ySpeed/abs(ySpeed) * bulletImpact;
		}
	}
	instance_destroy();
}
#endregion