/// @description Insert description here
// You can write your code in this editor
#region Movement
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

#endregion

#region Bullet
if(bulletSpawnTimer >= bulletSpawnTime) {
	bulletDirection = "";
	if(keyboard_check(ord("I"))) {
		bulletDirection += "Top";
	}

	if(keyboard_check(ord("K"))) {
		if(string_pos("Top", bulletDirection) == 0) {
			bulletDirection += "Bot";
		}
	}

	if(keyboard_check(ord("J"))) {
		bulletDirection += "Left";
	}
	
	if(keyboard_check(ord("L"))) {
		if(string_pos("Left", bulletDirection) == 0) {
			bulletDirection += "Right";
		}
	}

	if(bulletDirection != "") {
		SpawnBullet(bulletDirection, x, y, bulletSpeed);
		bulletSpawnTimer = 0;
	}
} else {
	++bulletSpawnTimer;
}
#endregion

#region Enemy
if(collision_circle(x, y, sprite_width/4, obj_grunt, false, false)){
	Die();
}

if(collision_circle(x, y, sprite_width/4, obj_hulk, false, false)){
	Die();
}
#endregion
if(!isMoving) {
	image_index = 0;
}
