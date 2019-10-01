/// @description Insert description here
// You can write your code in this editor

isMoving = false
if(keyboard_check(ord("W")) or keyboard_check(vk_up)) {
	if(y - global.playerRadius > global.borderY){
		y -= moveSpeed;
		isMoving = true;
		sprite_index = spr_player_move_up;
		image_xscale = 1;
		if(!audio_is_playing(sfx_bounce)) {
			audio_play_sound(sfx_bounce, 1, false);
		}
	}
}

if(keyboard_check(ord("A")) or keyboard_check(vk_left)) {
	if(x - global.playerRadius > 0){
		x -= moveSpeed;
		isMoving = true;
		if(!(keyboard_check(ord("W")) or keyboard_check(vk_up) or keyboard_check(ord("S")) or keyboard_check(vk_down))) {
			sprite_index = spr_player_move_right;
			image_xscale = -1;
		}
	}
}

if(keyboard_check(ord("S")) or keyboard_check(vk_down)) {
	if(y + global.playerRadius < room_height){
		y += moveSpeed;
		isMoving = true;
		sprite_index = spr_player_move_down;
		image_xscale = 1;
		if(!audio_is_playing(sfx_bounce)) {
			audio_play_sound(sfx_bounce, 1, false);
		}
	}
}

if(keyboard_check(ord("D")) or keyboard_check(vk_right)) {
	if(x + global.playerRadius < room_width){
		x += moveSpeed;
		isMoving = true;
		if(!(keyboard_check(ord("W")) or keyboard_check(vk_up) or keyboard_check(ord("S")) or keyboard_check(vk_down))) {
			sprite_index = spr_player_move_right;
			image_xscale = 1;
		}
	}
}

if(y - global.playerRadius < global.borderY){
	y = global.borderY + global.playerRadius;
}

++score;
if(invulCount <= 0){
	isFlash = false;
	if(isMoving){
		if(collision_circle(x, y, global.playerRadius, obj_red, false, false)){
			--lives;
			invulCount = invulTime;
			if(lives > 0) {
				audio_play_sound(sfx_die, 1, false);
			}
		}
	}

	if(!isMoving) {
		if(collision_circle(x, y, global.playerRadius, obj_blue, false, false)){
			--lives;
			invulCount = invulTime;
			if(lives > 0) {
				audio_play_sound(sfx_die, 1, false);
			}
		}
	}
} else {
	isFlash = !isFlash;
	invulCount -= 1/room_speed;
}
if(!isMoving) {
	sprite_index = spr_player_idle;
	image_xscale = 1;
}
