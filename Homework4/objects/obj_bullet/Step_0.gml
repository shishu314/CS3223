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
var enemy = collision_rectangle(TopLeftX, TopLeftY, BotRightX, BotRightY, obj_grunt, false, false);
if(enemy) {
	instance_destroy(enemy);
	instance_destroy();
}
#endregion