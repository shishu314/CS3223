/// @description Insert description here
// You can write your code in this editor
if(room == StartScreen) {
	if(keyboard_check_pressed(vk_space)) {
		score = 0
		lives = 3
		global.borderY = 0;
		spawnTimer = 1;
		currCount = spawnTimer;
		room_goto(InstructionScreen);
	}
}

if(room == InstructionScreen) {
	if(keyboard_check_pressed(vk_space)) {
		room_goto(GameScreen);
	}
}

if(room == EndScreen) {
	if(keyboard_check_pressed(vk_space)) {
		room_goto(StartScreen);
		audio_play_sound(bgm_happy, 1, true);
	}
}

if(room == GameScreen) {
	if(currCount >= spawnTimer) {
		var rand = random_range(0, 3);
		if(rand < 1.4) {
			instance_create_depth(0, 0, 0, obj_red);
		} else if (rand < 2.8) {
			instance_create_depth(0, 0, 0, obj_blue);
		} else {
			instance_create_depth(0, 0, 0, obj_green);	
		}
		currCount = 0;
	} else {
		currCount += 1/room_speed;
	}
	if(lives <= 0) {
		audio_pause_sound(bgm_happy);
		audio_play_sound(sfx_gameOver, 1, false);	
		room_goto(EndScreen);
	}
	if(spawnTimer >= 0.25) {
		spawnTimer -= score/room_speed * 0.0001;
	}
}
