/// @description Insert description here
// You can write your code in this editor
++moveTimer;
if(moveTimer >= global.gruntMovementTime){
	player = instance_find(obj_player, 0);
	distX = player.x - x;
	distY = player.y - y;
	// Normalize the movement
	hypot = sqrt(sqr(distX) + sqr(distY));
	x += (distX/hypot) * moveSpeed;
	y += (distY/hypot) * moveSpeed;
	moveTimer = 0;
}